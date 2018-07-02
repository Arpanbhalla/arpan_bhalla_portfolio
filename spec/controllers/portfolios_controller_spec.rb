require 'rails_helper'

RSpec.describe PortfoliosController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BlogsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET #new" do
    it "has a 200 status code" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Portfolio" do
        expect {
          post :create, params: {portfolio: valid_attributes}, session: valid_session
        }.to change(Portfolio, :count).by(1)
      end
    end
  end
end
