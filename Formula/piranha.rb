class Piranha < Formula
  
  desc "Scripts for file processing and analysis in phylogenomics & phylogeography"
  homepage "https://justinbagley.org/piranha/"
  url "https://github.com/justincbagley/piranha/archive/v0.4a3.tar.gz"
  sha256 "cfe1cf40b718ffa45d5732c8fb7a60757a8c091d11e6d63369699516aac82a52"
  version "0.4a3"
  
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
  ## essentially saying move script into the main or #{prefix} dir. Dir helps us copy a whole directory
  ## with ease.
  def install
    prefix.install "piranha"
    prefix.install "LICENSE"
    prefix.install "CODE_OF_CONDUCT.md"
    prefix.install "CITATION.md"
    prefix.install "changeLog.md"
    prefix.install "Quick_Guide.md"
    prefix.install "Quick_Guide.pdf"
    prefix.install "README.md"
    prefix.install Dir["bin"]    
    prefix.install Dir["install"]    
    prefix.install Dir["lib"]    
    prefix.install Dir["etc"]    
    prefix.install Dir["test"]    
    prefix.install Dir["tmp"]    
  end

  test do
    ## Modified example, commented out: assert_match "piranha v1.1.2", shell_output("#{bin}/piranha -V", 2)
    system "piranha", "--version"
  end

end
