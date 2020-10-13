require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe '#create' do
    context 'can save' do
      it "is valid with reservation_time and number_of_people and family_name and first_name and family_name_kan and first_name_kana and phone_number and email" do
        expect(build(:reservation)).to be_valid
      end
    end

    context 'can not save' do
      it "is invalid without reservation_time" do
        reservation = FactoryBot.build(:reservation, reservation_time: nil)
        reservation.valid?
        expect(reservation.errors[:reservation_time])
      end

      it "is invalid without number_of_people" do
        reservation = FactoryBot.build(:reservation, number_of_people: nil)
        reservation.valid?
        expect(reservation.errors[:number_of_people])
      end

      it "is invalid without family_name" do
        reservation = FactoryBot.build(:reservation, family_name: nil)
        reservation.valid?
        expect(reservation.errors[:family_name])
      end

      it "is invalid without first_name" do
        reservation = FactoryBot.build(:reservation, first_name: nil)
        reservation.valid?
        expect(reservation.errors[:first_name])
      end

      it "is invalid without family_name_kana" do
        reservation = FactoryBot.build(:reservation, family_name_kana: nil)
        reservation.valid?
        expect(reservation.errors[:family_name_kana])
      end

      it "is invalid without first_name_kana" do
        reservation = FactoryBot.build(:reservation, first_name_kana: nil)
        reservation.valid?
        expect(reservation.errors[:first_name_kana])
      end

      it "is invalid without phone_number" do
        reservation = FactoryBot.build(:reservation, phone_number: nil)
        reservation.valid?
        expect(reservation.errors[:phone_number])
      end

      it "is invalid without reservation_time" do
        reservation = FactoryBot.build(:reservation, email: nil)
        reservation.valid?
        expect(reservation.errors[:email])
      end
    end
  end
end