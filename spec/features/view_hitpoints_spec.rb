require 'spec_helper'

feature 'players can view hitpoints' do
  scenario 'player 1 can view hitpoints of player 2' do
    sign_in_and_play
    expect(page).to have_content "Ted 20hp"
  end
end
