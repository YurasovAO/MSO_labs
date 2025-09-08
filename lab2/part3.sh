#!/bin/sh
echo $HOME >> F1.var
echo $PATH >> F1.var
echo $TERM >> F1.var
echo $MAIL >> F1.var
ps ax | awk '{print $1}' >> F1.var
