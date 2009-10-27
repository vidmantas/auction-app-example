require 'spec_helper'

describe "/products/index.html.erb" do
  include ProductsHelper

  before(:each) do
    assigns[:products] = [
      stub_model(Product,
        :name => "value for name"
      ),
      stub_model(Product,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of products" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end
