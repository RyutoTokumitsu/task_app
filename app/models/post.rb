class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :memory, length:{ maximum: 500 }
  validate :date_check

  private
  def date_check
    if start_date.nil?

    else
      if end_date < start_date
        errors.add(:end_date, 'は開始日より前の日を設定することはできません。')
      end
    end
  end
end
