require 'rails_helper'

RSpec.describe StyilingComment, type: :model do
   describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(StyilingComment.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end
   describe 'アソシエーションのテスト' do
    context 'Styilingモデルとの関係' do
      it 'N:1となっている' do
        expect(StyilingComment.reflect_on_association(:styiling).macro).to eq :belongs_to
      end
    end
  end
end