require 'spec_helper'

describe Page do

  let(:page) { FactoryGirl.build(:page) }

  it 'should be valid with valid attributes' do
    page.should be_valid
  end

  describe '#name' do
    it "should be non-empty" do
      page.name = ' '
      page.should be_invalid
    end
  end

  describe '#slug' do
    it 'should be non-empty' do
      page.slug = ' '
      page.should be_invalid
    end

    it 'should be unique' do
      other_page = FactoryGirl.create :page, :slug => page.slug
      other_page.should be_invalid
    end
  end

end
