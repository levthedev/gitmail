class Finder
  def initialize(repo_name)
    `git clone https://github.com/#{repo_name}.git temp_email`
    Dir.chdir("temp_email")
    @emails = `git log --pretty=format:'%an %ae'`
    Dir.chdir("..")
    `rm -rf temp_email`
  end

  def all_contributors
    @emails.split("\n").uniq.sort
  end
end

if $PROGRAM_NAME == __FILE__
  repo_name = ARGV[0]
  puts Finder.new(repo_name).all_contributors
end
