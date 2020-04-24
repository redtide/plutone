#!/usr/bin/env bash
set -e

bundle install
pluto update planet.ini
ruby planet.rb
bundle exec jekyll build
