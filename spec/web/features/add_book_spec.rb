require 'features_helper'

describe 'Feature - Books' do
  after do
    BookRepository.clear
  end

  it 'can create a new book' do
    visit '/books/new'

    within 'form#book-form' do
      fill_in 'Title',  with: 'New book'
      fill_in 'Author', with: 'Some author'

      click_button 'Create'
    end

    current_path.should eql('/books')
    expect(page).to have_content('New book')
  end
end
