require 'rails_helper'
require 'spec_helper'
RSpec.feature "HomePages", type: :feature do
    scenario "The visitor should see cards" do
      visit root_path
      expect(page).to have_text("Cards")
    end
  end
  