require 'rails_helper'
RSpec.describe "Contacts", type: :request do
 describe 'お問い合わせページ' do
    context "お問い合わせページが正しく表示される" do
      before do
        get  contacts_new_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
end