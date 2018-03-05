require "spec_helper"

describe Gnote::Views::ApplicationLayout do
  meta_title = 'Good Note for me'

  let(:layout)   { Gnote::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/gnote/templates/application.html.erb') }


  it 'contains application name' do
    rendered.must_include('Gnote')
  end
end
