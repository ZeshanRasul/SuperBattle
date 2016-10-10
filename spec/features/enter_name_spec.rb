require 'spec_helper'

feature 'enter names' do
  scenario 'two users enter their usernames' do
    visit '/'
    fill_in 'Player 1 name', with: "Bill"
    fill_in 'Player 2 name', with: "Ted"
    click_button 'Submit Names'
    expect(page).to have_content "Bill and Ted do battle!"
  end
end
