require 'rails_helper'

describe User do
  it { should have_many :user_flights }
end
