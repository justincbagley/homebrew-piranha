class PIrANHA < Formula

  ## Resources used to make this file:
  ## - Homebrew Formula Cookbook: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
  ## - Example Homebrew Formula #1: https://github.com/syhw/homebrew/blob/master/Library/Contributions/example-formula.rb
  ## - Example Homebrew Formula #2: https://github.com/omerxx/homebrew-tools/blob/master/formula/fed.rb
  ## - Blog #1 - https://www.prodops.io/blog/creating-homebrew-taps-for-private-internal-tools
  ## - Blog #2 - https://engineering.innovid.com/distributing-command-line-tools-with-homebrew-d03e795cadc8
  ## - 
  
  desc "Scripts for file processing and analysis in phylogenomics & phylogeography"
  homepage "https://justinbagley.org/PIrANHA/"
  url "https://github.com/justincbagley/PIrANHA/archive/v0.1.7.tar.gz"
  sha256 "<SHA256>"

  ## Optionally, specify a repository to be used. Brew then generates a '--HEAD | --head' option. 
  ## Remember to also test it. 'master' is the default branch and doesn't need stating with a
  ## :branch conditional.
  head "https://github.com/justincbagley/PIrANHA.git"
  head do
    url "https://github.com/justincbagley/PIrANHA.git"
  end

  ## Genertes a '--DEVEL | --devel' option:
  devel do
    url "https://github.com/justincbagley/PIrANHA.git", :using => git
  end
  
  ## Commented out: depends_on "python@2"
  ## If any Python >= 2.7 < 3.x is okay (either from OS X or brewed):
  depends_on :python
  depends_on :perl

  ## Using 'bin.install' here is essentially saying move '<script>' into #{prefix}/bin/.
  def install
     bin.install "piranha"
  end

  test do
    ## Modified example, commented out: assert_match "piranha v1.0", shell_output("#{bin}/piranha -V", 2)
    system bin/"piranha", "--version"
  end

end

## Tap using:
## ```$ brew tap piranha https://github.com/justincbagley/PIrANHA.git ```
##
## The tap will be cloned to '/usr/local/Homebrew/Library/Taps/piranha'
##
## To undo your tap, just execute: ```$ brew untap piranha ```
##
## After tapping, install is as easy as ```$ brew install piranha ```
##
