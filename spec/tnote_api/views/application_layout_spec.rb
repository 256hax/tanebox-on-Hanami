require "spec_helper"

describe TnoteApi::Views::ApplicationLayout do
  let(:layout)   { TnoteApi::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/tnote_api/templates/application.html.erb') }

  it 'contains application name' do
    rendered.must_include('TnoteApi')
  end
end
