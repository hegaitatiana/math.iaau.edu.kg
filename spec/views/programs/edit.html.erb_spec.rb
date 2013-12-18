require 'spec_helper'

describe "programs/edit" do
  before(:each) do
    @program = assign(:program, stub_model(Program,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", program_path(@program), "post" do
      assert_select "input#program_title[name=?]", "program[title]"
      assert_select "textarea#program_content[name=?]", "program[content]"
    end
  end
end
