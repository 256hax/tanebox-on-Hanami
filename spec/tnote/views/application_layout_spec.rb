require "spec_helper"

describe Tnote::Views::ApplicationLayout do
  let(:layout)   { Tnote::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/tnote/templates/application.html.erb') }

  it 'contains application name' do
    rendered.must_include('Tnote')
  end
end
