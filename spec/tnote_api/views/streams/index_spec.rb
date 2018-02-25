require_relative '../../../spec_helper'

describe TnoteApi::Views::Streams::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/tnote_api/templates/streams/index.html.erb') }
  let(:view)      { TnoteApi::Views::Streams::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
