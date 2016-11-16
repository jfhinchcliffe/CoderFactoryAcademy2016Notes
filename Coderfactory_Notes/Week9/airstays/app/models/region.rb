class Region < ApplicationRecord
  include ActiveModel::Validations

  class CountryCodeValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      # value should be an alhoa 2 country code
      country = ISO3166::Country.new(value)
      # double check country isn't nil and is also a valid country code
      record.errors.add attribute, "must be a valid alpha 2 country code" unless country.present? && country.valid?

    end 
  end

  validates_presence_of :name
  validates :country_code, presence: true, length: {is: 2}, country_code: true
  before_save :downcase_country_code

  def country
    ISO3166::Country.new(country_code)
  end

  def address(prefix = nil)
    [prefix, name, country.name].select(&:present?).join(', ') #123 Example St, Melbourne, Australia
  end  

  private

    def downcase_country_code
      self.country_code = self.country_code.downcase
    end
end
