require 'spec_helper'

describe "faculties/new" do
  before(:each) do
    assign(:faculty, stub_model(Faculty,
      :name => "MyString",
      :position => "MyString",
      :degree => "MyString",
      :office => "MyString",
      :office_time => "MyString",
      :phone => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new faculty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", faculties_path, "post" do
      assert_select "input#faculty_name[name=?]", "faculty[name]"
      assert_select "input#faculty_position[name=?]", "faculty[position]"
      assert_select "input#faculty_degree[name=?]", "faculty[degree]"
      assert_select "input#faculty_office[name=?]", "faculty[office]"
      assert_select "input#faculty_office_time[name=?]", "faculty[office_time]"
      assert_select "input#faculty_phone[name=?]", "faculty[phone]"
      assert_select "input#faculty_email[name=?]", "faculty[email]"
    end
  end
end
