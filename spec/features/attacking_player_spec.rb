require 'spec_helper'

feature 'attacking other players' do
	scenario 'player 1 can attack player 2 and receive a confirmation' do
		sign_in_and_play
		click_link 'Attack Ted'
		expect(page).to have_content 'Bill attacked Ted and they lost 1hp'
	end
end
