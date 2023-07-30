#!/bin/sh

set -e

git config --global user.email "vikramupparpalli@gmail.com"
git config --global user.name "vikramupparpalli"

git clone -b gh-pages https://github.com/VikramWritings/search_for_a_nation.git search_for_a_nation
cd search_for_a_nation
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
