require 'rails_helper'

RSpec.describe "dids/index", type: :view do
  before(:each) do
    assign(:dids, [
      Did.create!(
        items: ""
      ),
      Did.create!(
        items: ""
      )
    ])
  end

  it "renders a list of dids" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
  end
end
