require 'rails_helper'

RSpec.describe "dids/new", type: :view do
  before(:each) do
    assign(:did, Did.new(
      items: ""
    ))
  end

  it "renders new did form" do
    render

    assert_select "form[action=?][method=?]", dids_path, "post" do

      assert_select "input[name=?]", "did[items]"
    end
  end
end
