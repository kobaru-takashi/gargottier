require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    context 'can save' do
      it 'is valid with email and password' do
        expect(build(:user)).to be_valid
      end
    end

    context 'can not save' do
      it "is invalid without email" do
        user = FactoryBot.build(:user, email: nil)
        user.valid?
        expect(user.errors[:email])
      end

      it "is invalid without password" do
        user = FactoryBot.build(:user, password: nil)
        user.valid?
        expect(user.errors[:password])
      end

    end
  end
end