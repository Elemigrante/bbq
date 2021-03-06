class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true
  
  validates :event,
            presence: true
  
  validates :user_name,
            presence: true,
            unless:   -> { user.present? }
  
  validates :user_email,
            presence: true,
            format:   { with: /\A[a-zA-z0-9\-_.]+@[a-zA-z0-9\-_.]+\z/ },
            unless:   -> { user.present? }
  
  validates :user, uniqueness: { scope: :event_id }, if: -> { user.present? }
  validates :user_email, uniqueness: { scope: :event_id }, unless: -> { user.present? }
  
  validate :check_email_availability, unless: -> { user.present? }
  
  def user_name
    if user.present?
      user.name
    else
      super
    end
  end
  
  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  def check_email_availability
    if User.exists?(email: user_email)
      errors.add(:user_email, :unavailable)
    end
  end
end
