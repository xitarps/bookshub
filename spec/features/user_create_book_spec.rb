require 'rails_helper'

describe 'user' do
	context 'create a book' do
		it 'succefuly' do
			visit new_book_path

			fill_in 'Titulo', with: 'Um titulo'
			fill_in 'Descrição', with: 'Uma descrição'
			click_on 'Salvar'

			expect(page).to have_content('Livro adicionado com sucesso')
		end

		it 'failure - blank' do
			visit new_book_path

			click_on 'Salvar'

			expect(page).not_to have_content('Livro adicionado com sucesso')
			expect(page).to have_content('Titulo em branco')
			expect(page).to have_content('Descrição em branco')
		end
	end
end
