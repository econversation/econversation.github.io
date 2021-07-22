#!/bin/sh

set -ev

pandoc -s "$1".md -V linkcolor:#B31B1B -o "$1".html