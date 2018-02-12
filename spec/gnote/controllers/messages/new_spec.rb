require_relative '../../../spec_helper'

describe Gnote::Controllers::Messages::New do
  let(:action) { Gnote::Controllers::Messages::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
