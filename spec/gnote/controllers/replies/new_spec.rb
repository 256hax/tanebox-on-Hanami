require_relative '../../../spec_helper'

describe Gnote::Controllers::Replies::New do
  let(:action) { Gnote::Controllers::Replies::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
