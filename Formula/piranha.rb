class Piranha < Formula
  
  desc "Scripts for file processing and analysis in phylogenomics & phylogeography"
  homepage "https://justinbagley.org/piranha/"
  url "https://github.com/justincbagley/piranha/archive/v0.2-alpha.1b.tar.gz"
  sha256 "12a92888ef6140eb73cd509adfb49aa2b7dc3c3ebc34fcd53b24e81c6cae95d9"
  version "0.2-alpha.1b"
  
  ## Optionally, specify a repository to be used. Brew then generates a '--HEAD | --head' option. 
  ## Remember to also test it. 'master' is the default branch and doesn't need stating with a
  ## :branch conditional.
  head do
    url "https://github.com/justincbagley/piranha.git"
  end

  ## Genertes a '--DEVEL | --devel' option:
  #devel do
  #  url "https://github.com/justincbagley/piranha.git", :using => git
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
    prefix.install "LICENSE"
    prefix.install "README.md"
    prefix.install Dir["bin"]    
    prefix.install Dir["lib"]    
    prefix.install Dir["etc"]    
    prefix.install Dir["tmp"]    
  end

  test do
    ## Modified example, commented out: assert_match "piranha v1.0.0", shell_output("#{bin}/piranha -V", 2)
    system "piranha", "--version"
  end

end
