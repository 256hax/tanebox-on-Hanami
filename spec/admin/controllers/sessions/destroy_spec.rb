require_relative '../../../spec_helper'

describe Admin::Controllers::Sessions::Destroy do
  let(:action) { Admin::Controllers::Sessions::Destroy.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
