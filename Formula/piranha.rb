class PIrANHA < Formula

  ## Resources used to make this file:
  ## - Homebrew Formula Cookbook: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
  ## - Example Homebrew Formula #1: https://github.com/syhw/homebrew/blob/master/Library/Contributions/example-formula.rb
  ## - Example Homebrew Formula #2: https://github.com/omerxx/homebrew-tools/blob/master/formula/fed.rb
  ## - Blog #1 - https://www.prodops.io/blog/creating-homebrew-taps-for-private-internal-tools
  ## - Blog #2 - https://engineering.innovid.com/distributing-command-line-tools-with-homebrew-d03e795cadc8
  ## 
  ## Resources not used yet, but potentially valuable for future distributions from
  ## *private* GitHub repositories:
  ## - Blog #1 - https://www.prodops.io/blog/creating-homebrew-taps-for-private-internal-tools
  ## - Blog #2 - https://engineering.innovid.com/distributing-command-line-tools-with-homebrew-d03e795cadc8
  
  desc "Scripts for file processing and analysis in phylogenomics & phylogeography"
  homepage "https://justinbagley.org/PIrANHA/"
  url "https://github.com/justincbagley/PIrANHA/archive/v0.2.tar.gz"
  sha256 "<SHA256>"

  ## Optionally, specify a repository to be used. Brew then generates a '--HEAD | --head' option. 
  ## Remember to also test it. 'master' is the default branch and doesn't need stating with a
  ## :branch conditional.
  #head "https://github.com/justincbagley/PIrANHA.git"
  #head do
  #  url "https://github.com/justincbagley/PIrANHA.git"
  #end

  ## Genertes a '--DEVEL | --devel' option:
  devel do
    url "https://github.com/justincbagley/PIrANHA.git", :using => git
  end
  
  ## Commented out: depends_on "python@2"
  ## If any Python >= 2.7 < 3.x is okay (either from OS X or brewed):
  depends_on :python
  depends_on :perl

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
    ## Modified example, commented out: assert_match "piranha v1.0", shell_output("#{bin}/piranha -V", 2)
    system "piranha", "--version"
  end

end

## Tap using:
## FIRST CHOICE: ```$ brew tap justincbagley/homebrew-piranha ```
## ```$ brew tap piranha https://github.com/justincbagley/PIrANHA.git ```
## NO it should be tapped using this:  git@github.com:justincbagley/homebrew-piranha.git
##
## The tap will be cloned to '/usr/local/Homebrew/Library/Taps/piranha'
##
## To undo your tap, just execute: ```$ brew untap piranha ```
##
## After tapping, install is as easy as ```$ brew install piranha ```
##

