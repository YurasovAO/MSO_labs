#!/bin/sh

old_ps1=$PS1
old_ps2=$PS2

PS1="It's PS1 variable"
PS2="It's PS2 variable"
echo $PS1 >> F2.var
echo $PS2 >> F2.var

PS1=$old_ps1
PS2=$old_ps2

