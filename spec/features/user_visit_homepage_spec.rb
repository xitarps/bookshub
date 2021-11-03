require 'rails_helper'

describe 'user' do 
	context 'visit homepage' do
		it 'succefuly' do
			visit root_path

			expect(page).to have_content('Homepage')
		end
	end
end