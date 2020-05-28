class User < ApplicationRecord
  validates_uniqueness_of :username
  has_many :messages

  def self.generate
    first_name = [
      'Gloria',
      'Caren',
      'Cindy',
      'Belinda',
      'Christabel',
      'Kyalo',
      'Annette',
      'Ian',
      'Snyder'
    ]

   number = rand.to_s[2..4]
   username = "#{first_name.sample}-#{number}"
   create(username: username)
  end
end
