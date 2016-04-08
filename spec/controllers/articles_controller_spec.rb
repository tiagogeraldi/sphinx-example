require 'spec_helper'

describe ArticlesController, type: :controller do
  describe "POST create" do
    it 'searches articles and creates log' do
      article = create(:article)

      expect {
        post :create, format: :js, search: { term: 'keyword' }
        }.to change {
          Log.count
        }.by(1)

      expect(assigns[:articles]).to be_a(Array)
    end
  end
end