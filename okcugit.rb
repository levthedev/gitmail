require_relative 'finder'

repo_name = ARGV[0]
finder = Finder.new(repo_name)
puts finder.all_contributors
