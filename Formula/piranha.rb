class Piranha < Formula
  
  desc "Scripts for file processing and analysis in phylogenomics & phylogeography"
  homepage "https://justinbagley.org/piranha/"
  url "https://github.com/justincbagley/piranha/archive/v0.4a.tar.gz"
  sha256 "359ab3d00fefce20e17ce4dfacd91400f99a990e82f9da5cab5f48146e91c7ed"
  version "0.4a"
  
  ## Optionally, specify a repository to be used. Brew then generates a '--HEAD | --head' option. 
  ## Remember to also test it. 'master' is the default branch and doesn't need stating with a
  ## :branch conditional.
  head do
    url "https://github.com/justincbagley/piranha.git"
  end

  ## Genertes a '--DEVEL | --devel' option:
  # devel do
  #   url "https://github.com/justincbagley/piranha.git"
  # end
  
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
    prefix.install Dir["test"]    
    prefix.install Dir["tmp"]    
  end

  test do
    ## Modified example, commented out: assert_match "piranha v1.1.1", shell_output("#{bin}/piranha -V", 2)
    system "piranha", "--version"
  end

end
