#!/usr/bin/env zsh

set -e

cd ../ksadebiekorf.be-dist
# rm *.html
# rm -r _app
# rm -r assets
# rm *.json
# rm favicon.png

cd ../ksadebiekorf.be
mv build/* ../ksadebiekorf.be-dist
