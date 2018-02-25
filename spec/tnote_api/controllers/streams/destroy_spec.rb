require_relative '../../../spec_helper'

describe TnoteApi::Controllers::Streams::Destroy do
  let(:action) { TnoteApi::Controllers::Streams::Destroy.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
