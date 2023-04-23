#!/usr/bin/env bash
CMD='show'
F=$(dirname $0)/git.diff

git $CMD $@ >$F && geany $F
