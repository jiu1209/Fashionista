require 'rails_helper'
RSpec.describe "Homes", type: :request do
 describe 'トップページ' do
    context "トップページが正しく表示される" do
      before do
        get  homes_top_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'トップページ(ログインしていない時)' do
    context "トップページ(ログインしていない時)が正しく表示される" do
      before do
        get  root_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'aboutページ)' do
    context "aboutページが正しく表示される" do
      before do
        get  homes_about_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
end