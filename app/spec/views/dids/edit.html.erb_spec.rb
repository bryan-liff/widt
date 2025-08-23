require 'rails_helper'

RSpec.describe "dids/edit", type: :view do
  let(:did) {
    Did.create!(
      items: ""
    )
  }

  before(:each) do
    assign(:did, did)
  end

  it "renders the edit did form" do
    render

    assert_select "form[action=?][method=?]", did_path(did), "post" do

      assert_select "input[name=?]", "did[items]"
    end
  end
end
