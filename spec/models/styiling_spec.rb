require 'rails_helper'

RSpec.describe Styiling, type: :model do
   describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Styiling.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end
   describe 'アソシエーションのテスト' do
    context 'favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Styiling.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
  end
   describe 'アソシエーションのテスト' do
    context 'styiling_commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(Styiling.reflect_on_association(:styiling_comments).macro).to eq :has_many
      end
    end
  end
end