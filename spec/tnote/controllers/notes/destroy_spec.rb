require_relative '../../../spec_helper'

describe Tnote::Controllers::Notes::Destroy do
  let(:action) { Tnote::Controllers::Notes::Destroy.new }
  let(:user_id) { 1 }

  it 'is successful' do
    skip 'This is skip for now. Add test later.'

    # example
    # create test data for destroy actions
    
    response = action.call(id: user_id)

    response[0].must_equal 302
    response[1].must_equal ["ID: #{ user_id }"]
  end
end
