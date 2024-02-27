// Show the NuttX Disassembly for the Requested Address
// http://localhost:8000/nuttx-tinyemu/docs/purescript/disassemble.html?addr=80007028

// Show 20 lines before and after the Requested Address
const before_count = 20;
const after_count  = 20;

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

  // `addr` is `80007028`
  const addr = new URL(document.URL).searchParams.get("addr");

  // URL of our Disassembly File, chunked for easier display.
  // TODO: Given an Exception Address like 8000ad8a. we should try multiple files by address:
  // qjs-8000ad90.S, qjs-8000ae00.S, qjs-8000b000.S, qjs-80010000.S
  const url = "qjs-chunk/qjs-80008000.S";

  // Remember the lines before and after the Requested Address
  const before_lines = [];
  const after_lines = [];
  let linenum = 0;

  // Process our Disassembly File, line by line
  const iter = makeTextFileLineIterator(url);
  for await (const line of iter) {

    // Look for the Requested Address
    linenum++;
    if (line.indexOf(`    ${addr}:`) == 0) {
      after_lines.push(line);
      continue;
    }

    // Save the lines before the Requested Address
    if (after_lines.length == 0) {
      before_lines.push(line);
      if (before_lines.length > before_count) { before_lines.shift(); }  
    } else {
      // Save the lines after the Requested Address
      after_lines.push(line);
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
}

run();

// https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams
