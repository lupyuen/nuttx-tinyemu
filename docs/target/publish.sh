#!/usr/bin/env bash
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to you under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

echo "Prior to running this make sure that the NuttX repo is checked out"
echo "to nuttx and the documentation html has been generated."

gem install bundler:2.1.2
bundle config set path 'vendor/bundle'
bundle install 
bundle exec jekyll clean --source .
bundle exec jekyll build --source .

# Gemfile.lock is sometimes updated, ignore that in CI.
git checkout -- Gemfile.lock
rm -rf target/docs
mv docs target/

COMMIT_HASH_WEB=`git rev-parse HEAD`
COMMIT_HASH_NUTTX=`git -C nuttx rev-parse HEAD`
git checkout asf-site
#git pull --rebase
rm -rf content
mv target content
git add content
git status
echo "Publishing website master branch $COMMIT_HASH_WEB"
echo "Publishing docs from NuttX master branch $COMMIT_HASH_WEB"
git commit -a -m "Publishing web: $COMMIT_HASH_WEB docs: $COMMIT_HASH_NUTTX"
echo " "
echo "==================================================================="
echo "You are now on the asf-site branch with your new changes committed."
echo " git push the 'asf-site' branch upstream to update the live site."
echo "If you want to preview the content run a simple http server pointed"
echo " at the content directory. This can be accomplished like this:"
echo " python3 -m http.server --directory content 8080" 
echo "==================================================================="
echo " "

set +e
