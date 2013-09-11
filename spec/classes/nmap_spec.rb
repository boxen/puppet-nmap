require 'spec_helper'

describe 'nmap' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end
  it do
    should contain_package('boxen/brews/nmap')
    should contain_homebrew__formula('nmap').with(
      :before => 'Package[boxen/brews/nmap]'
    )
  end
end
