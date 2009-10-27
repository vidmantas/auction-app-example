require 'spec_helper'

describe "/products/show.html.erb" do
  include ProductsHelper
  before(:each) do
    assigns[:product] = @product = stub_model(Product,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end
