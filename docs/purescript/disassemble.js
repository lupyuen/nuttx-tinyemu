// Show the NuttX Disassembly for the Requested Address
// http://localhost:8000/nuttx-tinyemu/docs/purescript/disassemble.html?addr=80007028

// Show 20 lines before and after the Requested Address
const before_count = 20;
const after_count  = 20;

// Convert `nuttx/arch/risc-v/src/common/crt0.c:166`
// To `<a href="https://github.com/apache/nuttx/blob/master/arch/risc-v/src/common/crt0.c#L166">...`
// Convert `quickjs-nuttx/quickjs-libc.c:1954`
// To `<a href="https://github.com/lupyuen/quickjs-nuttx/blob/master/quickjs-libc.c#L1954">...`
const search1  = "nuttx/";
const replace1 = "https://github.com/apache/nuttx/blob/master/";
const search2  = "quickjs-nuttx/";
const replace2 = "https://github.com/lupyuen/quickjs-nuttx/blob/master/";

// Convert the Source File to Source URL
function processLine(line) {
  line = line.split("\t").join("&nbsp;&nbsp;&nbsp;&nbsp;");
  if (line.indexOf(":") < 0) { return line; }
  let url = line.split(":", 2).join("#L");

  // Search and replace Source File to Source URL
  if (line.indexOf(search1) == 0) {
    url = url.split(search1, 2).join(replace1);
  } else if (line.indexOf(search2) == 0) {
    url = url.split(search2, 2).join(replace2);
  } else {
    return line;
  }
  return `<a href="${url}" target="_blank">${line}</a>`;
}

// Fetch our Disassembly File, line by line
// https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#processing_a_text_file_line_by_line
async function* makeTextFileLineIterator(fileURL) {
  const utf8Decoder = new TextDecoder("utf-8");
  const response = await fetch(fileURL);
  const reader = response.body.getReader();
  let { value: chunk, done: readerDone } = await reader.read();
  chunk = chunk ? utf8Decoder.decode(chunk) : "";

  const newline = /\r?\n/gm;
  let startIndex = 0;
  let result;

  while (true) {
    const result = newline.exec(chunk);
    if (!result) {
      if (readerDone) break;
      const remainder = chunk.substr(startIndex);
      ({ value: chunk, done: readerDone } = await reader.read());
      chunk = remainder + (chunk ? utf8Decoder.decode(chunk) : "");
      startIndex = newline.lastIndex = 0;
      continue;
    }
    yield chunk.substring(startIndex, result.index);
    startIndex = newline.lastIndex;
  }

  if (startIndex < chunk.length) {
    // Last line didn't end in a newline char
    yield chunk.substr(startIndex);
  }
}

// Fetch and display our Disassembly File, line by line
async function run() {

  // Set the Title. `addr` is `80007028`
  const addr = new URL(document.URL).searchParams.get("addr");
  const title = document.getElementById("title");
  title.innerHTML += 
    addr.substring(0, 4).toUpperCase()
    + "_"
    + addr.substring(4).toUpperCase();

  // URL of our Disassembly File, chunked for easier display.
  // TODO: Given an Exception Address like 8000ad8a. we should try multiple files by address:
  // qjs-8000ad90.S, qjs-8000ae00.S, qjs-8000b000.S, qjs-80010000.S
  // Assume `addr` is `80007028`
  const addr_prefix = addr.substring(0, addr.length - 3);  // `80007`
  const addr_inc = Number.parseInt(addr_prefix, 16) + 1;  // 0x80008
  const addr_str = Number(addr_inc).toString(16);  // `80008`
  const url = `qjs-chunk/qjs-${addr_str}000.S`;

  // TODO: Get `qjs` from identifyAddress()

  // Remember the lines before and after the Requested Address
  const before_lines = [];
  const after_lines = [];
  let linenum = 0;

  // Process our Disassembly File, line by line
  const iter = makeTextFileLineIterator(url);
  for await (const line1 of iter) {
    if (after_lines.length == 0) { linenum++; }

    // Look for the Requested Address
    if (line1.indexOf(`    ${addr}:`) == 0) {
      const line2 = processLine(line1);
      after_lines.push(line2);
      continue;
    }

    // Save the lines before the Requested Address
    const line2 = processLine(line1);
    if (after_lines.length == 0) {
      before_lines.push(line2);
      if (before_lines.length > before_count) { before_lines.shift(); }  
    } else {
      // Save the lines after the Requested Address
      after_lines.push(line2);
      if (after_lines.length > after_count) { break; }
    }
  }

  // Requested Line is `after_lines[0]`.
  // Show the Before and After Lines.
  const line = after_lines[0];
  after_lines.shift();
  console.log({before_lines});
  console.log({line});
  console.log({after_lines});

  const disassembly = document.getElementById("disassembly");
  const file = `https://github.com/lupyuen/nuttx-tinyemu/tree/main/docs/purescript/${url}#L${linenum}`;
  disassembly.innerHTML = [
    `<p><a href="${file}" target="_blank">(See the Disassembly File)</a></p>`,
    before_lines.join("<br>"),
    `<span id="highlight"><br>${line}<br></span>`,
    after_lines.join("<br>"),
    `<p><a href="${file}" target="_blank">(See the Disassembly File)</a></p>`,
  ].join("<br>");
}

run();
