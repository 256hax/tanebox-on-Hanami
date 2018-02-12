require_relative '../../../spec_helper'

describe GnoteApi::Views::Likes::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/gnote_api/templates/likes/create.html.erb') }
  let(:view)      { GnoteApi::Views::Likes::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
