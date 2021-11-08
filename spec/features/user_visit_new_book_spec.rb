require 'rails_helper'

describe 'user' do
	context 'visit new book through navbar-header' do
		it 'succefuly' do
			visit root_path

			click_on 'Novo'

			expect(page).to have_content('Novo livro')
		end
	end
end
