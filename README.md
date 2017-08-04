# SWT17-Project-09 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT17-Project-09.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT17-Project-09) [![Build status](https://ci.appveyor.com/api/projects/status/x7objt2tk3m7mx34?svg=true)](https://ci.appveyor.com/project/fyndalf/swt17-project-09) [![Coverage Status](https://coveralls.io/repos/github/HPI-SWA-Teaching/SWT17-Project-09/badge.svg)](https://coveralls.io/github/HPI-SWA-Teaching/SWT17-Project-09)
Demo Script Recorder

This projects aims at improving and adding expanded functionality to the preexisting event recorder.

In detail:
 * Visualisation of Mouse Events
 * Pausing of both recording and replaying
 * A script editor for running scripts with every replay
 * Option to store the state of the image of the beginning of a recording and restore it when starting the replay
 * A new design, fitting to the squeak image
 * Shortcuts for stopping and pausing recording (esc/alt+p)

Install the tool by either downloading the .sar-File, dropping it into Squeak and selecting `install SAR` or by executing the following code in an open Workspace:
```Smalltalk
Metacello new
  baseline: 'DRC';
  repository: 'github://HPI-SWA-Teaching/SWT17-Project-09:master/packages';
  onConflict: [:ex | ex allow];
  onLock: [:ex | ex allow];
  load.
```

You can start the Recorder by simply typing 
```Smalltalk
DRCRecordingTool open
```
in an open Workspace and executing the code. Alternatively, make a button for it  :v:
