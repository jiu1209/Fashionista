require 'rails_helper'
RSpec.describe "Users", type: :request do
 describe 'ユーザー一覧ページ' do
    context "ユーザー一覧ページが正しく表示される" do
      before do
        get  users_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'ユーザー一覧ページ(ログインしていない時)' do
    context "ユーザー一覧ページ(ログインしていない時)が正しく表示される" do
      before do
        get  user_index_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
  describe 'ユーザー一覧ページ(メンズ)' do
    context "ユーザー一覧ページ(メンズ)が正しく表示される" do
      before do
        get  user_men_index_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'ユーザー一覧ページ(メンズ,ログインしていない時)' do
    context "ユーザー一覧ページ(メンズ,ログインしていない時)が正しく表示される" do
      before do
        get  user_men_index_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'ユーザー一覧ページ(ウィメンズ)' do
    context "ユーザー一覧ページ(ウィメンズ)が正しく表示される" do
      before do
        get  user_women_index_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
    describe 'ユーザー一覧ページ(ウィメンズ,ログインしていない時)' do
    context "ユーザー一覧ページ(ウィメンズ,ログインしていない時)が正しく表示される" do
      before do
        get  user_women_index_info_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
    describe 'ログインページ' do
    context "ログインページが正しく表示される" do
      before do
        get  new_user_session_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
  describe '新規会員登録' do
    context "新規会員登録ページが正しく表示される" do
      before do
        get  new_user_registration_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
   describe 'パスワード変更(ログインしていない時)' do
    context "パスワード変更(ログインしていない時)ページが正しく表示される" do
      before do
        get  new_user_password_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
end