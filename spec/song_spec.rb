require 'spec_helper'
require_relative '../song_app'
Capybara.app = SongApp


feature "Songs" do
  before do
    DB[:songs].delete
  end
  scenario "User can create and see a list of songs" do
    visit('/')
    fill_in "song", with: "Let it Be"
    click_on "Add Song"
    expect(page).to have_content "Let it Be"
  end
  scenario "User can create and see a list of songs and albums" do
    visit('/')
    fill_in "song", with: "Long and Winding Road"
    fill_in "album", with: "Let it Be"
    click_on "Add Song"
    expect(page).to have_content "Long and Winding Road"
    expect(page).to have_content "Let it Be"
  end
end