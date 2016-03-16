require 'tmpdir'

class Finder
  def initialize(repo_name)
    Dir.mktmpdir("GitMail") do |dir|
      `git clone --bare #{ARGV[1] || "https://github.com/"}#{repo_name}.git #{dir}`
      Dir.chdir("#{dir}") do
        @emails = `git log --pretty=format:'%an %ae%n%cn %ce'`
      end
    end
  end

  def all_contributors
    @emails.split("\n").uniq.sort
  end
end

if $PROGRAM_NAME == __FILE__
  repo_name = ARGV[0]
  puts Finder.new(repo_name).all_contributors
end
