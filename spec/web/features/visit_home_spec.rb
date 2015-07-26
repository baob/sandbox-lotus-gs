require 'features_helper'

describe 'Visit home' do
  it 'is successful' do
    visit '/'

    page.body.should include('Bookshelf')
  end
end
