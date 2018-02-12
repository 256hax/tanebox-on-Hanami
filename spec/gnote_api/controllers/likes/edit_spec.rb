require_relative '../../../spec_helper'

describe GnoteApi::Controllers::Likes::Edit do
  let(:action) { GnoteApi::Controllers::Likes::Edit.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
