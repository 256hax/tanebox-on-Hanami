require_relative '../../../spec_helper'

describe Gnote::Views::Replies::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/gnote/templates/replies/new.html.erb') }
  let(:view)      { Gnote::Views::Replies::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
