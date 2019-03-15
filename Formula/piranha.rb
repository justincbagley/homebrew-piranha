require_relative "../custom_download_strategy.rb"

class Piranha < Formula
  
  desc "Scripts for file processing and analysis in phylogenomics & phylogeography"
  homepage "https://justinbagley.org/PIrANHA/"
#  url "https://github.com/justincbagley/PIrANHA/archive/v0.2-alpha.1.tar.gz?private_token=#{ENV['HOMEBREW_GITHUB_API_TOKEN']}"
  url "https://github.com/justincbagley/PIrANHA/archive/v0.2-alpha.1b.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "0.2-alpha.1b"
  
  ## Optionally, specify a repository to be used. Brew then generates a '--HEAD | --head' option. 
  ## Remember to also test it. 'master' is the default branch and doesn't need stating with a
  ## :branch conditional.
  head do
    url "https://github.com/justincbagley/PIrANHA.git"
  end

  ## Genertes a '--DEVEL | --devel' option:
  #devel do
  #  url "https://github.com/justincbagley/PIrANHA.git", :using => git
  #end
  
  ## Commented out: depends_on "python@2"
  ## If any Python >= 2.7 < 3.x is okay (either from OS X or brewed):
#  depends_on "python"
#  depends_on "perl"
  
  ## Using 'bin.install' here is essentially saying move '<script>' into #{prefix}/bin/. prefix.install is 
  ## essentially saying move/save script into the main or #{prefix} dir. Dir helps us copy a whole directory
  ## with ease.
  def install
    prefix.install "piranha"
    prefix.install "53.phy"
    prefix.install "LICENSE"
    prefix.install "README.md"
    prefix.install "Subset91_concat.fas"
    prefix.install "Subset92_concat.fas"
    prefix.install "Subset93_concat.fas"
    prefix.install "Subset94_concat.fas"
    prefix.install "Subset95_concat.fas"
    prefix.install "Subset96_concat.fas"
    prefix.install "Subset97_concat.fas"
    prefix.install "Subset98_concat.fas"
    prefix.install "Subset99_concat.fas"
    prefix.install "Subset9_concat.fas"
    prefix.install Dir["bin"]    
    prefix.install Dir["lib"]    
    prefix.install Dir["etc"]    
    prefix.install Dir["doc"]    
    prefix.install Dir["tmp"]    
  end

  test do
    ## Modified example, commented out: assert_match "piranha v1.0.0", shell_output("#{bin}/piranha -V", 2)
    system "piranha", "--version"
  end

end
