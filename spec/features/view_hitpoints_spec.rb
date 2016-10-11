require 'spec_helper'

feature 'players can view hitpoints' do
  scenario 'player 1 can view hitpoints of player 2' do
    visit '/'
    fill_in 'player_1', with: "Bill"
    fill_in 'player_2', with: "Ted"
    click_button 'Submit Names'
    expect(page).to have_content "Ted 20hp"
  end
end
