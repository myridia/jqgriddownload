#!/bin/bash
# sudo npm install --save-dev jsdoc-to-markdown -g
cp _README.md README.md
jsdoc2md jqgriddownload.js >> README.md
