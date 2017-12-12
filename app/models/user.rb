class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events, dependent: :destroy

  def create_new_event
    puts "What's your new event?"
    events.name = gets.chomp
    puts "What will your event be about?"
    events.description = gets.chomp
  end

  def display_event_list
    events.each do |event|
      puts events.name
    end
  end

  def display_event_details
    events.each do |event|
      puts events.description
    end
  end

end
