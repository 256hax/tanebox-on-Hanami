require_relative '../../../spec_helper'

describe Gnote::Views::Messages::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/gnote/templates/messages/index.html.erb') }
  let(:view)      { Gnote::Views::Messages::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end

  it 'meta title' do
    view.meta_title.must_equal "ほめノート"
  end
end
