require_relative '../../../spec_helper'

describe Gnote::Views::Messages::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/gnote/templates/messages/create.html.erb') }
  let(:view)      { Gnote::Views::Messages::Create.new(template, exposures) }
  let(:rendered)  { view.render }
  let(:meta_title) { 'Good Note for me' }

  it 'exposes #foo' do
    #view.meta_title.must_equal = meta_title
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
