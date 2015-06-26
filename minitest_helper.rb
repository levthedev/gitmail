gem 'minitest', '~> 5.0'
require "minitest/autorun"
require "minitest/pride"
require_relative "gitmail.rb"
$this_project = Finder.new("kravinskylev/GitMail")
$nat_resume   = Finder.new("icco/Resume")

