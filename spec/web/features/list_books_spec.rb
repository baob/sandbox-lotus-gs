require 'features_helper'

describe 'Feature - List books' do
  before do
    BookRepository.clear

    BookRepository.create(Book.new(title: 'PoEEA', author: 'Martin Fowler'))
    BookRepository.create(Book.new(title: 'TDD', author: 'Kent Beck'))
  end

  it 'shows a book element for each book' do
    visit '/books'
    expect(page).to have_css('.book', count: 2), "Expected to find 2 books"
  end
end
