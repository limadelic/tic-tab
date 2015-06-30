mini = require 'minimist'
args = mini process.argv

jade = require 'jade'
list = jade.compileFile 'views/list.jade'

console.log list items: require "#{process.cwd()}/#{args.l}"

