require 'rails_helper'

RSpec.describe "Products", type: :request do

  it "assigns all product to @products" do
    get products_path
    expect(assigns(:products)).to eq(Product.all)
  end

  it "does not render a different template" do
    get "/products/new"
    expect(response).to_not render_template(:show)
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

  # describe '#create' do
  #   before do
  #     @params = {name: 'test', description: 'test'}
  #   end

    # it 'create product' do
      # post :create, params: { product: @params }

      # expect(Product.where(@params).count).to eq 1
    # end

    # it "creates a Poduct and redirects to the Product page" do
    #   get "/products/new"
    #   expect(response).to render_template(:new)
    #
    #   post "/products", :params => {:product => {:name => "TEST"}}
    #
    #   expect(response).to redirect_to(assigns(:product))
    #   follow_redirect!
    #
    #   expect(response).to render_template(:show)
    #   expect(response.body).to include("Product was successfully created.")
    # end
    #
    # describe '#update' do
    #   before do
    #     @product = Product.create!(name: 'old_test', description: 'old test')
    #
    #     @params = {name: 'test', description: 'test'}
    #   end
    #
    #   it 'update product' do
    #     put :update, params: {id: @product.id, product: @params}
    #
    #     @product.reload
    #
    #     expect(@product.name).to eq 'test'
    #     expect(@product.description).to eq 'test'
    #   end
    # end
  # end
end
