require_relative '../../../spec_helper'

describe Gnote::Controllers::Messages::Create do
  let(:action) { Gnote::Controllers::Messages::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
