'''
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
'''

import requests

RELEASES = [
    ('7.13', '2016-01-28'),
    ('7.14', '2016-01-28'),
    ('7.15', '2016-03-26'),
    ('7.16', '2016-06-01'),
    ('7.17', '2016-08-27'),
    ('7.18', '2016-10-08'),
    ('7.19', '2017-02-02'),
    ('7.20', '2017-03-09'),
    ('7.21', '2017-06-16'),
    ('7.22', '2017-09-20'),
    ('7.23', '2018-01-01'),
    ('7.24', '2018-03-04'),
    ('7.25', '2018-06-28'),
    ('7.26', '2019-01-08'),
    ('7.27', '2019-01-08'),
    ('7.28', '2019-02-25'),
    ('7.29', '2019-04-26'),
    ('7.30', '2019-05-23'),
    ('7.31', '2019-07-27'),
    ('8.1',  '2019-09-25'),
    ('8.2',  '2019-11-16'),
]

BB_DL_BASE_URL = 'https://bitbucket.org/nuttx/nuttx/downloads/'

RELEASE_HEADER = '''---
layout: page
released: true
apache: false
title: {version}
date: {date}
summary: >
    {summary}

artifact-root: "{artifactroot}"
checksum-root: "{checksumroot}"
key-file: "{keyfile}"

source-os-dist:
    - "{osfile}"
source-app-dist:
    - "{appsfile}"

---
'''

SITE_HEADER = '''
<!--
{% comment %}
Licensed to the Apache Software Foundation (ASF) under one or more
contributor license agreements.  See the NOTICE file distributed with
this work for additional information regarding copyright ownership.
The ASF licenses this file to you under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
{% endcomment %}
-->

{% include JB/setup %}
'''


def fetch_readme(release):
    readme_fn = 'nuttx-' + release.replace('.', '_') + '-README.txt'
    readme = requests.get(BB_DL_BASE_URL+readme_fn)
    readme.raise_for_status()
    body = readme.text
    return body


def format_release(release):
    release_dict = {
        'version': release[0],
        'summary': f'Release v{release[0]}',
        'date': release[1],
        'artifactroot': BB_DL_BASE_URL,
        'checksumroot': '',
        'keyfile': '',
        'osfile': f'nuttx-{release[0]}.tar.gz',
        'appsfile': f'apps-{release[0]}.tar.gz',
    }
    header = RELEASE_HEADER.format(**release_dict)
    readme = fetch_readme(release[0])
    page = header+'\n'+SITE_HEADER+'\n'+readme
    return page


def main():
    for release in RELEASES:
        page = format_release(release)
        with open(f'output/{release[0]}.md', 'w') as rpage:
            rpage.write(page)

if __name__ == '__main__':
    main()
