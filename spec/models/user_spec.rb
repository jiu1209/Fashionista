require 'rails_helper'

RSpec.describe User, type: :model do
    describe "Userモデルのテスト" do 
       @user = User.new( 
       name: "John",
       email: "test@example.com", 
       password: "i-am-john" 
      )
    end
     context 'nameカラム' do
      @user = User.new(name: nil)
      @user.valid?
    end 
   context 'genderカラム' do
      @user = User.new(gender: nil)
      @user.valid?
    end 
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