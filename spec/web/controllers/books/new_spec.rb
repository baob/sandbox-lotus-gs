require 'spec_helper'
require_relative '../../../../apps/web/controllers/books/new'

describe Web::Controllers::Books::New do
  let(:action) { Web::Controllers::Books::New.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    response[0].should eql 200
  end
end
