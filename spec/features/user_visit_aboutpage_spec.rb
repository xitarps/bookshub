require 'rails_helper'

describe 'user' do
	context 'visit aboutpage' do
		it 'succefuly' do
			visit about_path

			expect(page).to have_content('Sobre')
		end
	end

	context 'visit aboutpage through navbar-header' do
		it 'succefuly' do
			visit root_path

			click_on 'Sobre'

			expect(page).to have_content('Esse site serve.')
		end
	end
end
