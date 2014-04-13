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
end