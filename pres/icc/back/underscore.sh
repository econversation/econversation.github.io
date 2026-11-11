#!/bin/bash

for f in ./text/*; do mv "$f" "${f// /_}"; done 