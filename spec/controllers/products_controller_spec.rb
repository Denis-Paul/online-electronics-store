require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

    let(:valid_product_attributes) {
        { :name => "Google Pixel 6", :description => "This is a test description.", :price => 1250 }
    }

    describe "GET #index" do

        it "renders the index template" do
            get :index
            expect(response).to render_template("index")
        end

        it "assigns all products to @products" do
            get :index
            expect(assigns(:products)).to eq(Product.all)
        end
    end
end