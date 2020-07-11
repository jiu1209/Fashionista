require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'アソシエーションのテスト' do
    context 'Styilingモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:styilings).macro).to eq :has_many
      end
    end
  end
   describe 'アソシエーションのテスト' do
    context 'favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
  end
   describe 'アソシエーションのテスト' do
    context 'styiling_commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:styiling_comments).macro).to eq :has_many
      end
    end
  end

end