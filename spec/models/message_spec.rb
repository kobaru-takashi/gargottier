require 'rails_helper'

RSpec.describe Message, type: :model do
  describe '#create' do
    context 'can save' do
      it "is valid with name and email and content" do
        expect(build(:message)).to be_valid
      end
    end

    context 'can not save' do
      it "is invalid without name" do
        message = FactoryBot.build(:message, name: nil)
        message.valid?
        expect(message.errors[:name])
      end

      it "is invalid without email" do
        message = FactoryBot.build(:message, email: nil)
        message.valid?
        expect(message.errors[:email])
      end

      it "is invalid without content" do
        message= FactoryBot.build(:message, content: nil)
        message.valid?
        expect(message.errors[:content])
      end
    end
  end
end