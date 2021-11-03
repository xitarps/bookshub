require 'rails_helper'

describe 'user' do
	context 'visit aboutpage' do
		it 'succefuly' do
			visit about_path

			expect(page).to have_content('Sobre')
		end
	end
end