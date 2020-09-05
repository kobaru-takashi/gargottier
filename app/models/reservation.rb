class Reservation < ApplicationRecord
  belongs_to :event, optional: true

  enum reservation_time: { '11:30': 1, '12:00': 2, '12:30': 3, '13:00': 4, '13:30': 5, '14:00': 6, '14:30': 7, '15:00': 8, '15:30': 9, '16:00': 10, '16:30': 11, '17:00': 12, '17:30': 13, '18:00': 14, '18:30': 15, '19:00': 16, '19:30': 17, '20:00': 18, '20:30': 19, '21:00': 20}

  enum number_of_people: { '1人': 1, '2人': 2, '3人': 3, '4人': 4, '5人': 5, '6人': 6, '7人': 7, '8人': 8 }



  validates :family_name, :first_name, presence: true, format:{ with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/ }
  validates :family_name_kana,:first_name_kana, presence: true, format:{with: /\A([ァ-ン]|ー)+$\z/}
  validates :phone_number, presence: true, format:{with: /\A\d{10,11}\z/}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  # validates :request, length: { maximum: 1000 }, presence: true
  # validates :reservation_time, :number_of_people, presence: true
end
