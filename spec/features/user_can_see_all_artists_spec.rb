require 'rails_helper'

RSpec.feature "user can see artists" do
  scenario "a user navigates to root and sees a list of artists" do
    visit root_path

    expect(page).to have_content("Kip Moore")
  end
end
