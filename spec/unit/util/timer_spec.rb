require 'spec_helper'

describe VagrantPlugins::ProviderLibvirt::Util::Timer do

  it 'should measure time of a block execution' do
    subject.class.time do
      10.times {1+22/5.0*2.22}
    end.should be_kind_of Float
  end

end
