# NITC eXpOS

Given a virtual string machine (XSM) and its instruction set, I built an Operating System than runs on top of it. Click [here](#) to learn more about the project.

## Overview

### Preperatory stages
- Stage 1 - [Setting up the system](https://exposnitc.github.io/expos-docs/roadmap/stage-01/)
- Stage 2 - [Understanding the file system](https://exposnitc.github.io/expos-docs/roadmap/stage-02/)
- Stage 3 - [Bootstrap loader](https://exposnitc.github.io/expos-docs/roadmap/stage-03/)
- Stage 4 - [Learning the SPL language](https://exposnitc.github.io/expos-docs/roadmap/stage-04/)
- Stage 5 - [XSM debugging](https://exposnitc.github.io/expos-docs/roadmap/stage-05/)
- Stage 6 - [Running a user program](https://exposnitc.github.io/expos-docs/roadmap/stage-06/)
- Stage 7 - [ABI and XEXE format](https://exposnitc.github.io/expos-docs/roadmap/stage-07/)
- Stage 8 - [Handling timer interrupt](https://exposnitc.github.io/expos-docs/roadmap/stage-08/)
- Stage 9 - [Handling kernel stack](https://exposnitc.github.io/expos-docs/roadmap/stage-09/)
- Stage 10 - [Console output](https://exposnitc.github.io/expos-docs/roadmap/stage-10/)
- Stage 11 - [Introduction to ExpL](https://exposnitc.github.io/expos-docs/roadmap/stage-11/)
- Stage 12 - [Introduction to multiprogramming](https://exposnitc.github.io/expos-docs/roadmap/stage-12/)

### Intermediate stages
- Stage 13 - [Boot module](https://exposnitc.github.io/expos-docs/roadmap/stage-13/)
- Stage 14 - [Round robin scheduler](https://exposnitc.github.io/expos-docs/roadmap/stage-14/)
- Stage 15 - [Resource manager module](https://exposnitc.github.io/expos-docs/roadmap/stage-15/)
- Stage 16 - [Console input](https://exposnitc.github.io/expos-docs/roadmap/stage-16/)
- Stage 17 - [Program loader](https://exposnitc.github.io/expos-docs/roadmap/stage-17/)
- Stage 18 - [Disk interrup handler](https://exposnitc.github.io/expos-docs/roadmap/stage-18/)
- Stage 19 - [Exception handler](https://exposnitc.github.io/expos-docs/roadmap/stage-19/)

### Final stages
- Stage 20 - [Process creation and termination](https://exposnitc.github.io/expos-docs/roadmap/stage-20/)
- Stage 21 - [Process synchronization](https://exposnitc.github.io/expos-docs/roadmap/stage-21/)
- Stage 22 - [Semaphores](https://exposnitc.github.io/expos-docs/roadmap/stage-22/)
- Stage 23 - [File creation and deletion](https://exposnitc.github.io/expos-docs/roadmap/stage-23/)
- Stage 24 - [File read](https://exposnitc.github.io/expos-docs/roadmap/stage-24/)
- Stage 25 - [File write](https://exposnitc.github.io/expos-docs/roadmap/stage-25/)
- Stage 26 - [User management](https://exposnitc.github.io/expos-docs/roadmap/stage-26/)
- Stage 27 - [Pager module](https://exposnitc.github.io/expos-docs/roadmap/stage-27/)
- Stage 28 - [Multi-core extension](https://exposnitc.github.io/expos-docs/roadmap/stage-28/)

## Some useful tools
- [Helper](https://github.com/nithinraj04/OSlab-helper) - Scripts to run XSM, SPL compiler and eXpL compiler globally in your system. Also contains configuration for setting up syntax highlighting for spl and expl files in neovim. 

## A bug that I identified

Click [here](https://groups.google.com/g/xos-users/c/EntErSPgvAI/m/ppHDxiCfAAAJ) to know about the bug. One potential fix for the second bug that doesn't require a lot of changes in current implementation is to keep a **wait counter**. Basically have a counter entry in inode table, which keeps track of the number of processes waiting for the particular inode. Use an inode for file creation only if the counter is zero. This gives the waiting processes enough time to realize that the file has been deleted.
