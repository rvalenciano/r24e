require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :username => "Username",
        :email => "Email",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :persistence_token => "Persistence Token"
      ),
      User.create!(
        :username => "Username",
        :email => "Email",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :persistence_token => "Persistence Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Crypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Password Salt".to_s, :count => 2
    assert_select "tr>td", :text => "Persistence Token".to_s, :count => 2
  end
end
