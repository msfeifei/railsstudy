require 'rails_helper'

RSpec.describe Person, type: :model do
  describe Person do
    it 'is fail when not filling' do
      person = Person01.new(first_name: ' ',last_name: 'wang')
      expect(person).to be_valid
    end
end
