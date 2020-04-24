#!/usr/bin/env bash
set -e

pluto update planet.ini
ruby planet.rb
bundle exec jekyll build
