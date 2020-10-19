require 'rails_helper'

feature 'user can search form for a specific food' do
  scenario 'user submits valid food name', :vcr do
    # As a user,
    # When I visit "/"
    visit root_path

    fill_in :q, with: "sweet potatoes"
    # And I fill in the search form with "sweet potatoes"
    # (Note: Use the existing search form)
    click_on "Search"
    # And I click "Search"
    expect(current_path).to eq(foods_path)
    # Then I should be on page "/foods"
    expect(page).to have_content("38680 results")
    # Then I should see a total of the number of items returned by the search.
    expect(page).to have_css('.foods', count: 10)
    # Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
    # And for each of the foods I should see:
    # - The food's GTIN/UPC code
    # - The food's description
    # - The food's Brand Owner
    # - The food's ingredients
    within(first('.foods')) do
      expect(page).to have_css(".gtinUpc")
      expect(page).to have_css(".description")
      expect(page).to have_css(".brandOwner")
      expect(page).to have_css(".ingredients")
    end
  end
end
