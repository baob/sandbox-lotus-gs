require 'spec_helper'
require_relative '../../../../apps/web/views/books/new'

class NewBookParams < Lotus::Action::Params
  param :book do
    param :title, presence: true
    param :author, presence: true
  end
end

describe Web::Views::Books::New do
  let(:template)  { Lotus::View::Template.new('apps/web/templates/books/new.html.erb') }
  let(:view)      { Web::Views::Books::New.new(template, exposures) }
  let(:rendered)  { view.render }

  describe 'when params are valid' do
    let(:exposures) { Hash[foo: 'bar'] }

    it "exposes #foo" do
      view.foo.should eql exposures.fetch(:foo)
    end

  end

  describe 'when params contains errors' do
    let(:params)    { NewBookParams.new({}) }
    let(:exposures) { Hash[params: params] }

    it 'displays list of errors' do
      params.valid? # trigger validations

      rendered.should include('There was a problem with your submission')
      rendered.should include('title is required')
    end
  end
end
