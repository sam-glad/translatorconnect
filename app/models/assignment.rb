class Assignment < ActiveRecord::Base
  validates :title, presence: true
  validates :language, presence: true
  validates :length, presence: true
  validates :created_by_user, presence: true

  belongs_to :created_by_user, class_name: 'User', foreign_key: 'created_by_user_id'
end
