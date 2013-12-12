require 'spec_helper'

describe VagrantPlugins::ProviderLibvirt::Util::ErbTemplate do

  let :dummer do
    DummyModule::DummyClass.new.extend(subject)
  end

  before :each do
    File.stub(:read => '<%= 1+1 %>')
  end

  it 'should evaluate provided provided erb file' do
    dummer.to_xml('timber').to_i.should eq 2
  end

  it 'should use included class name as filename' do
    File.should_receive(:read).with(VagrantPlugins::ProviderLibvirt::LIB_ROOT+'/templates/dummyclass.xml.erb')
    dummer.to_xml
  end

end
