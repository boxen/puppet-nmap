# Install nmap, command line port scanner
#
# Examples
#
#   include nmap

class nmap {
  require homebrew

  homebrew::formula{'nmap':
    before => Package['boxen/brews/nmap']
  }

  package{'boxen/brews/nmap':
    ensure => latest
  }
}
