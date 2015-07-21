_ = require 'lodash'
mini = require 'minimist'
args = mini process.argv

jade = require 'jade'
list = jade.compileFile "#{__dirname}/views/list.jade"
header = jade.compileFile "#{__dirname}/views/header.jade"

format = require './format'

resolve = (x) -> try require "#{process.cwd()}/#{x}.json" catch

gen = (style, data) ->
  return unless data
  console.log style data: data

gen list, resolve args.l
gen header, format.header resolve args.h
