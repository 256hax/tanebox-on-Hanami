require_relative '../../../spec_helper'

describe Gnote::Controllers::Static::Show do
  let(:action) { Gnote::Controllers::Static::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
