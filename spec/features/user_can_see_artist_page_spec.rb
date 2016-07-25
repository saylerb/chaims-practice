require 'rails_helper'

RSpec.feature "user can artist page" do
  scenario "a user navigates to an artist page and sees artist details" do
    visit root_path

    click_on "Kip Moore"

    expect(page).to have_content("Id: 3")
    expect(page).to have_content("Name: Kip Moore")
    expect(page).to have_content("Created At: 2016-04-04T20:55:20.586Z")
    expect(page).to have_content("Updated At: 2016-04-04T20:55:20.586Z")
  end
end
