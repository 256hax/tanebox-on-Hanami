require_relative '../../../spec_helper'

describe Tnote::Controllers::Notes::Index do
  let(:action) { Tnote::Controllers::Notes::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
