require 'spec_helper'

describe Project do

  let(:project) { FactoryGirl.build :project }

  it 'should be valid with valid attributes' do
    project.should be_valid
  end

  describe '#name' do
    it "should not be empty" do
      project.name = ' '
      project.should be_invalid
    end
  end

end
