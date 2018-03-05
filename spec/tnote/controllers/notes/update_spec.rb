require_relative '../../../spec_helper'

describe Tnote::Controllers::Notes::Update do
  let(:action) { Tnote::Controllers::Notes::Update.new }
  let(:params) { Hash[note: {category_name: 'PM', title: 'Time Management'} ] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 302
  end
end
