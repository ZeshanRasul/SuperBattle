require 'spec_helper'

feature 'enter names' do
  scenario 'two players enter their names' do
    visit '/'
    fill_in 'player_1', with: "Bill"
    fill_in 'player_2', with: "Ted"
    click_button 'Submit Names'
    expect(page).to have_content "Bill and Ted do battle!"
  end
end
