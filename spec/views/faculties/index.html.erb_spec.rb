require 'spec_helper'

describe "faculties/index" do
  before(:each) do
    assign(:faculties, [
      stub_model(Faculty,
        :name => "Name",
        :position => "Position",
        :degree => "Degree",
        :office => "Office",
        :office_time => "Office Time",
        :phone => "Phone",
        :email => "Email"
      ),
      stub_model(Faculty,
        :name => "Name",
        :position => "Position",
        :degree => "Degree",
        :office => "Office",
        :office_time => "Office Time",
        :phone => "Phone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of faculties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Degree".to_s, :count => 2
    assert_select "tr>td", :text => "Office".to_s, :count => 2
    assert_select "tr>td", :text => "Office Time".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
