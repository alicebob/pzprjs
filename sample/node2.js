#!/bin/env node
var pzpr = require('../src/pzpr.js');

var puzzle = new pzpr.Puzzle().open('mashu/3/3');

console.log(puzzle.toDataURL(19));
