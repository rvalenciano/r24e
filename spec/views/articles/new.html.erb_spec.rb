require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :text => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_text[name=?]", "article[text]"

      assert_select "input#article_title[name=?]", "article[title]"
    end
  end
end
