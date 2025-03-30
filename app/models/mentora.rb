class Mentora < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :email, presence: true,
                   format: { with: URI::MailTo::EMAIL_REGEXP },
                   uniqueness: { case_sensitive: false }
  validates :abilities, presence: true

  before_save :clean_abilities

  private

  def clean_abilities
    return if abilities.blank?
    self.abilities = abilities.split(",")
                            .map(&:strip)
                            .reject(&:blank?)
                            .join(", ")
  end
end
