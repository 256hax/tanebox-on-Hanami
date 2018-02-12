require "spec_helper"

describe GnoteApi::Views::ApplicationLayout do
  let(:layout)   { GnoteApi::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/gnote_api/templates/application.html.erb') }

  it 'contains application name' do
    rendered.must_include('GnoteApi')
  end
end
