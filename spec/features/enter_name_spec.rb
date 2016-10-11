require 'spec_helper'

feature 'enter names' do
  scenario 'two players enter their names' do
    sign_in_and_play
    expect(page).to have_content "Bill and Ted do battle!"
  end
end
