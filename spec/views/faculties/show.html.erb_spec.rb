require 'spec_helper'

describe "faculties/show" do
  before(:each) do
    @faculty = assign(:faculty, stub_model(Faculty,
      :name => "Name",
      :position => "Position",
      :degree => "Degree",
      :office => "Office",
      :office_time => "Office Time",
      :phone => "Phone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Position/)
    rendered.should match(/Degree/)
    rendered.should match(/Office/)
    rendered.should match(/Office Time/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
  end
end
