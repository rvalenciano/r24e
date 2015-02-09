require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :text => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_text[name=?]", "article[text]"

      assert_select "input#article_title[name=?]", "article[title]"
    end
  end
end
