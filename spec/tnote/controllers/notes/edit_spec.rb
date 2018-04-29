require_relative '../../../spec_helper'

describe Tnote::Controllers::Notes::Edit do
  let(:action) { Tnote::Controllers::Notes::Edit.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
