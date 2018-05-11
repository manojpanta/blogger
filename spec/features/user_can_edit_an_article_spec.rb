require "rails_helper"

describe "user edits an article" do
	describe "they link from a show page" do
		it "fill in edit field and submit displays the updated info on a show" do
      article = Article.create!(title: "Title 1", body: "Body 1")

      visit article_path(article)
      click_link 'Edit'


      fill_in "article[title]", with: "New Title!"
      fill_in "article[body]",  with: "New Body!"
      click_on "Update Article"

			expect(current_path).to eq(article_path(article))
			expect(page).to have_content("Article 'New Title!' Updated!")


		end
	end
end
