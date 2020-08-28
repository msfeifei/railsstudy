require 'rails_helper'
 #RSpec.describe Person, type: :model do
 #pending "add some examples to (or delete) #{__FILE__}"
describe Person do
  it "should resopnse to full_name" do
    person = Person.new(first_name: 'feifei', last_name: 'wang')
    expect(person.full_name).to eql('feifei wang') 
  end
end
