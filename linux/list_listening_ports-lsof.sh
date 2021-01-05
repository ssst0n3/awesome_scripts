#!/bin/bash
lsof -i -P -n | egrep 'COMMAND|LISTEN'