require 'spec_helper'

describe ArticlesController, type: :controller do
  describe "POST create" do
    before do
      create :article
    end

    it 'searches articles and creates log' do
      expect {
        post :create, format: :js, search: { term: 'keyword' }
        }.to change {
          Log.count
        }.by(1)

      expect(assigns[:articles]).to be_a(Array)
    end

    it 'do not log search when there is no valid word' do
      expect {
        post :create, format: :js, search: { term: 'how can I' }
        }.to change {
          Log.count
        }.by(0)
    end
  end
end