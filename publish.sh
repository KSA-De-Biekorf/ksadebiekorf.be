#!/usr/bin/env zsh

set -e

cd ../ksadebiekorf.be-dist
rm *.html || true
rm -r _app || true
rm -r assets || true
rm *.json || true
rm favicon.png || true

cd ../ksadebiekorf.be
mv build/* ../ksadebiekorf.be-dist
