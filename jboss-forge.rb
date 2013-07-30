require 'formula'

class JbossForge < Formula
  homepage 'http://jboss.org/forge'
  url 'https://repository.jboss.org/nexus/service/local/artifact/maven/redirect?r=releases&g=org.jboss.forge&a=forge-distribution&v=1.3.3.Final&e=zip'
  version '1.3.3.Final'
  sha1 'e7f43e4a25b2c6e6a4baf8620cec8fb3678becf1'

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w{ bin modules jboss-modules.jar }
    bin.install_symlink libexec/'bin/forge'
  end
end

