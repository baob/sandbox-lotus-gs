require 'features_helper'

describe 'Feature - Visit home' do
  it 'is successful' do
    visit '/'

    page.body.should include('Bookshelf')
  end
end
