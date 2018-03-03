require_relative '../../../spec_helper'

describe Tnote::Views::NoteWithStreams::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/tnote/templates/note_with_streams/index.html.erb') }
  let(:view)      { Tnote::Views::NoteWithStreams::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
