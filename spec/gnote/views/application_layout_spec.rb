require "spec_helper"

describe Gnote::Views::ApplicationLayout do
  let(:layout)   { Gnote::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/gnote/templates/application.html.erb') }

  it 'exposes #meta_title' do
    layout.meta_title.must_equal 'ほめノート'
  end

  it 'contains application name' do
    rendered.must_include('ほめノート')
  end
end
