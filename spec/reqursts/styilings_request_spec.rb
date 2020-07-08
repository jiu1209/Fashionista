require 'rails_helper'
RSpec.describe "Styilings", type: :request do
 describe 'スタイリング一覧ページ' do
    context "スタイリング一覧ページが正しく表示される" do
      before do
        get  styilings_index_path
      end
      it 'リクエストは302 OKとなること' do
        expect(response.status).to eq 302
      end
    end
  end
   describe 'スタイリング一覧ページ(ログインしていない時)' do
    context "スタイリング一覧ページ(ログインしていない時)が正しく表示される" do
      before do
        get  styilings_index_list_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'スタイリング一覧ページ(ランキング)' do
    context "スタイリング一覧ページ(ランキング)が正しく表示される" do
      before do
        get  styilings_all_ranking_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'スタイリング一覧ページ(ランキング,ログインしていない時)' do
    context "スタイリング一覧ページ(ランキング,ログインしていない時)が正しく表示される" do
      before do
        get  styilings_all_ranking_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
    describe 'スタイリング一覧ページ(womem)' do
    context "スタイリング一覧ページ(women)が正しく表示される" do
      before do
        get  styilings_women_index_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'スタイリング一覧ページ(womem,ログインしていない時)' do
    context "スタイリング一覧ページ(women,ログインしていない時)が正しく表示される" do
      before do
        get  styilings_women_index_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
  describe 'スタイリング一覧ページ(womem,ランキング)' do
    context "スタイリング一覧ページ(women,ランキング)が正しく表示される" do
      before do
        get  styilings_women_ranking_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
  describe 'スタイリング一覧ページ(womem,ランキング,ログインしていない時)' do
    context "スタイリング一覧ページ(women,ランキング,ログインしていない時)が正しく表示される" do
      before do
        get  styilings_women_ranking_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'スタイリング一覧ページ(mem)' do
    context "スタイリング一覧ページ(men)が正しく表示される" do
      before do
        get  styilings_men_index_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'スタイリング一覧ページ(mem,ログインしていない時)' do
    context "スタイリング一覧ページ(men,ログインしていない時)が正しく表示される" do
      before do
        get  styilings_men_index_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
    describe 'スタイリング一覧ページ(mem,ランキング)' do
    context "スタイリング一覧ページ(men,ランキング)が正しく表示される" do
      before do
        get  styilings_men_ranking_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
  describe 'スタイリング一覧ページ(mem,ランキング,ログインしていない時)' do
    context "スタイリング一覧ページ(men,ランキング,ログインしていない時)が正しく表示される" do
      before do
        get  styilings_men_ranking_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'スタイリング投稿ページ' do
    context "スタイリング投稿ページが正しく表示される" do
      before do
        get   new_styiling_path
      end
      it 'リクエストは302 OKとなること' do
        expect(response.status).to eq 302
      end
    end
  end
end