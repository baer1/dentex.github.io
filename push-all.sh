#!/bin/bash

rake generate

rake deploy

./push-source.sh
