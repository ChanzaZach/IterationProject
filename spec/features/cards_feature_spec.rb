require "rails_helper"


RSpec.feature "Cards", type: :feature do
    context "Update card" do
      let(:card) { Card.create(title: "Test title", description: "Test content") }
      before(:each) do
        visit edit_card_path(card)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Description", with: "New description content"
        end
        click_button "Update Card"
        expect(page).to have_content("Card was successfully updated")
      end
 
 
      scenario "should fail" do
        within("form") do
          fill_in "Description", with: ""
        end
        click_button "Update Card"
        expect(page).to have_content("Description can't be blank")
      end
      scenario "should fail" do
        within("form") do
          fill_in "Title", with: ""
        end
        click_button "Update Card"
        expect(page).to have_content("Title can't be blank")
      end
    end
end
RSpec.feature "Cards", type: :feature do
    context "Create Card" do
      let(:card) { Card.create(title: "Test title", description: "Test content") }
      before(:each) do
        visit new_card_path(card)
      end
 
      scenario "should be successful" do
        within("form") do
          fill_in "Title", with: "Title"
          fill_in "Description", with: "Description"
        end
        click_button "Create Card"
        expect(page).to have_content("Card was successfully created")
      end

 
      scenario "should fail" do
        within("form") do
          fill_in "Description", with: ""
        end
        click_button "Create Card"
        expect(page).to have_content("Description can't be blank")
      end
      scenario "should fail" do
        within("form") do
         fill_in "Title", with: ""
        end
        click_button "Create Card"
        expect(page).to have_content("Title can't be blank")
      end
    end
end