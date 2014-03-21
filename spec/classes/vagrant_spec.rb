require 'spec_helper'

describe 'vagrant' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "vagrant class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('vagrant::params') }
        it { should contain_class('vagrant::install').that_comes_before('vagrant::config') }
        it { should contain_class('vagrant::config') }

        it { should contain_package('vagrant').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'vagrant class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('vagrant') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
