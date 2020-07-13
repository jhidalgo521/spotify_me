# require gems
require 'bundler/setup'# make sure all gems in gemfile are present
require 'dotenv/load'
Bundler.require # make sure present at run time

# require "dotenv" # used to hide my api key

# require_relative
require_relative "../lib/api.rb"
require_relative "../lib/cli.rb"
require_relative "../lib/song.rb"
