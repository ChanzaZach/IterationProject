require "rails_helper"

RSpec.feature "Cards", type: :feature do
    context "Login" do
        scenario "should sign up" do
          visit root_path
          click_link 'Sign Up'
          within("form") do
            fill_in "Email", with: "testing@test.com"
            fill_in "Password", with: "123456"
            fill_in "Password confirmation", with: "123456"
            click_button "Sign up"
          end
          expect(page).to have_content("Welcome! You have signed up successfully.")
        end
    
        scenario "should log in" do
          user = FactoryBot.create(:user)
          login_as(user)
          visit root_path
          expect(page).to have_content("Logged In")
        end
      end
    context "Update card" do
      let(:card) { Card.create(title: "Test title", description: "Test content", variety: "Test Variety", num: "Test Num") }
      before(:each) do
        user = FactoryBot.create(:user)
        login_as(user)
        visit edit_card_path(card)
      end
 
      scenario "should be successful" do
        within("form") do
          fill_in "Title", with: "New title content"
        end
        click_button "Update Card"
        expect(page).to have_content("Card was successfully updated")
      end
      scenario "should be successful" do
        within("form") do
          fill_in "Description", with: "New description content"
        end
        click_button "Update Card"
        expect(page).to have_content("Card was successfully updated")
      end
      scenario "should be successful" do
        within("form") do
          fill_in "Variety", with: "New variety content"
        end
        click_button "Update Card"
        expect(page).to have_content("Card was successfully updated")
      end
      scenario "should be successful" do
        within("form") do
          fill_in "Num", with: "New num content"
        end
        click_button "Update Card"
        expect(page).to have_content("Card was successfully updated")
      end
 
 
      scenario "should fail" do
        within("form") do
          fill_in "Title", with: ""
        end
        click_button "Update Card"
        expect(page).to have_content("Title can't be blank")
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
          fill_in "Variety", with: ""
        end
        click_button "Update Card"
        expect(page).to have_content("Variety can't be blank")
      end
      scenario "should fail" do
        within("form") do
          fill_in "Num", with: ""
        end
        click_button "Update Card"
        expect(page).to have_content("Num can't be blank")
      end
    end
end
