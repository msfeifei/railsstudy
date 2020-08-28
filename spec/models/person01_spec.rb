require 'rails_helper'

# RSpec.describe Person01, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
describe Person01 do
  it 'is valid with a first_name,last_name' do
    person = Person01.new(first_name: 'feifei',last_name: 'wang')
    expect(person).to be_valid
  end
  #创建一个person对象，并调用rspec的be_valid 皮配器验证其合法性
  it 'return a person full_name as a string' do
    person = Person01.new(first_name: 'feifei', last_name: 'wang')
    expect(person.full_name).to eql('feifei wang')
  end
end
