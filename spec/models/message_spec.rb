require 'rails_helper'

RSpec.describe Message, type: :model do
  it "is valid with name, email, content" do
    message = FactoryBot.build(:message)
    expect(message)
  end

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