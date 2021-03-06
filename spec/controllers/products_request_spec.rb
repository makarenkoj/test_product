require 'rails_helper'

RSpec.describe "Products", type: :request do

  it "assigns all product to @products" do
    get products_path
    expect(assigns(:products)).to eq(Product.all)
  end

  describe 'GET #index' do
    before(:example) { get products_path } # get(:index)

    it "is a success" do
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
  end
end
