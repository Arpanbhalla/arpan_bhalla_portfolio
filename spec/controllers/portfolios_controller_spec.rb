require 'rails_helper'

RSpec.describe PortfoliosController, type: :controller do

  let(:valid_attributes) { {title: 'Portfolio title',
                            subtitle: 'Portfolio subtitle',
                            body: 'Lorem ipsum de turr'}
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

  describe "GET #edit" do
    it "returns a success response" do
      portfolio_item = Portfolio.create! valid_attributes
      get :edit, params: {id: portfolio_item.to_param}, session: valid_session
      expect(response).to be_success
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

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
              { title:    'updated Portfolio title',
                subtitle: 'updated Portfolio subtitle',
                body:     'Lorem ipsum de turr' }
              }
      it "updates the requested portfolio" do
        portfolio = Portfolio.create! valid_attributes
        put :update, params: {id: portfolio.to_param, portfolio: new_attributes}, session: valid_session
        portfolio.reload
        expect(portfolio.title).to eq('updated Portfolio title')
      end
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      portfolio = Portfolio.create! valid_attributes
      get :show, params: {id: portfolio.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested blog" do
      portfolio = Portfolio.create! valid_attributes
      expect {
        delete :destroy, params: {id: portfolio.to_param}, session: valid_session
      }.to change(Portfolio, :count).by(-1)
    end
  end

end
