require 'spec_helper'

describe Placeimg::ViewHelpers do
  before(:each) do
    class DummyClass
      include Placeimg::ViewHelpers
    end
    @dummy = DummyClass.new
  end

  it "should create the default placeholder" do
    image_tag = @dummy.placeholder
    height = image_tag.include? 'height="250"'
    width = image_tag.include? 'width="250"'
    expect(height).to eq true
    expect(width).to eq true
  end

  it "should create a custom placeholder" do
    image_tag = @dummy.placeholder({ w: 100, h: 100, class: "test", id: "test-id" })
    height = image_tag.include? 'height="100"'
    width = image_tag.include? 'width="100"'
    classattr = image_tag.include? 'class="test"'
    idattr = image_tag.include? 'id="test-id"'

    expect(height).to eq true
    expect(width).to eq true
    expect(classattr).to eq true
    expect(idattr).to eq true
  end
end
