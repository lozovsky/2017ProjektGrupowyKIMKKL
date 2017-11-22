class User < ApplicationRecord
  def setup
    @empty_field_eror = "Pole nie może być puste!"
    @nickname_length_error = "Pole musi zawierać od 4 do 20 znaków!"
    @password_length_error = "Pole musi zawierać minimum 6 znaków!"
    @over_50_error = "Pole musi zawierać maksymalnie 50 znaków!"
    @over_255_error = "Pole musi zawierać maksymalnie 255 znaków!"
    @invalid_email_regex_error = "Błędny format adresu email!"
    @field_not_unique_error = "Nazwa występuje już w bazie danych!"
  end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { email.downcase! }
  
  has_secure_password

  validates :nickname, 
    presence: { in: true, message: ": #{@empty_field_eror}" },
    length: { maximum: 20, minimum: 4, message: ": #{@nickname_length_error}" },
    uniqueness: { case_sensitive: false, message: ": #{@field_not_unique_error}"}

  validates :name,
    presence: { in: true, message: ": #{@empty_field_eror}" },
    length: { maximum: 50, message: ": #{@over_50_error}"}

  validates :surname,
    presence: { in: true, message: ": #{@empty_field_eror}" },
    length: { maximum: 50, message: ": #{@over_50_error}"}

  validates :email,
    presence: { in: true, message: ": #{@empty_field_eror}" },
    length: { maximum: 255, message: ": #{@over_255_error}" },
    format: { with: VALID_EMAIL_REGEX, message: ": #{@invalid_email_regex_error}" },
    uniqueness: { case_sensitive: false, message: ": #{@field_not_unique_error}"}

  validates :password,
    presence: { in: true, message: ": #{@empty_field_eror}" },
    length: { minimum: 6, message: ": #{@password_length_error}" }


end
