#!/bin/sh

ASTYLE="astyle --indent=spaces=2 -O -o -xp --style=kr -xL -Q -z2 -n"

find pdns -not \( -path pdns/ext -prune \) -name \*.cc -exec ${ASTYLE} {} \;
find pdns -not \( -path pdns/ext -prune \) -name \*.hh -exec ${ASTYLE} {} \;
find modules -name \*.cc -exec ${ASTYLE} {} \;
find modules -name \*.hh -exec ${ASTYLE} {} \;


