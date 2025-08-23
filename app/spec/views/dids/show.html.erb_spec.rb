require 'rails_helper'

RSpec.describe "dids/show", type: :view do
  before(:each) do
    assign(:did, Did.create!(
      items: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
