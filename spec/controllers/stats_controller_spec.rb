require 'spec_helper'

describe StatsController, type: :controller do
  describe "GET index" do
    it 'assign @stats' do
      stat = create(:stat)
      
      get :index

      expect(assigns[:stats]).to eq([stat])
    end
  end

  describe "GET destroy_all" do
    it 'delete all stats' do
      stat = create(:stat)

      get :destroy_all

      expect(Stat.count).to eq(0)
    end
  end
end