require 'rails_helper'
RSpec.describe "Search", type: :request do
 describe '検索ができる' do
    context "検索ページが正しく表示される" do
      before do
        get  search_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
end