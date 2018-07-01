require "rails_helper"

RSpec.describe PagesController, :type => :controller do
  describe "#home" do
    it "has a 200 status code" do
      get :home
      expect(response.status).to eq(200)
    end
  end

  describe "#about" do
    it "has a 200 status code" do
      get :about
      expect(response.status).to eq(200)
    end
  end

  describe "#contact" do
    it "has a 200 status code" do
      get :contact
      expect(response.status).to eq(200)
    end
  end
end