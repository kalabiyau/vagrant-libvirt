require 'spec_helper'

describe VagrantPlugins::ProviderLibvirt::Util::Collection do

  let :collection do
    col = []
    col << Thing.new('odo')
    col << Thing.new('bodo')
    col << Thing.new('nafa')
    col << Thing.new('kama')
  end

  it 'should find name in passed collection' do
    subject.find_matching(collection, 'bodo').should_not be_nil
  end

  it 'should return found object if found' do
    subject.find_matching(collection, 'bodo').should eq Thing.new('bodo')
  end

  it 'should return nil if not found' do
    subject.find_matching(collection, 'nope').should be_nil
  end


end
