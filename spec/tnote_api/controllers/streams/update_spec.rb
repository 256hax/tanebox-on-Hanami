require_relative '../../../spec_helper'

describe TnoteApi::Controllers::Streams::Update do
  let(:action) { TnoteApi::Controllers::Streams::Update.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
