require_relative "minitest_helper.rb"

class GitMailTest < Minitest::Test
  def test_it_knows_its_own_contributor
    me = $this_project.all_contributors
    assert_equal me, ["Frank Hamand frankhamand@gmail.com", Lev Kravinsky kravinskylev@gmail.com"]
  end

  def test_it_sorts_and_uniqs_contributors
    contributors = ["Clif Reeder clifreeder@gmail.com",
                    "Corey Farwell coreyf@rwell.org",
                    "Joshua Kerr joshkerr@gmail.com",
                    "Nat Welch nat@natwelch.com"]

    assert_equal $nat_resume.all_contributors, contributors
  end
end

