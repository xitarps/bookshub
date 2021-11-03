require 'rails_helper'

describe 'user' do 
	context 'visit homepage' do
		it 'succefuly' do
			visit root_path

			expect(page).to have_content('Homepage')
		end
	end

	context 'visit homepage through navbar-header' do
		it 'succefuly' do
			visit about_path

			click_on 'Casa'

			expect(page).to have_content('meu nobre...')
		end
	end
end