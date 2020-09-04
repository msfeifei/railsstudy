class Person01 < ApplicationRecord
    attr_accessible :first_name
    attr_accessible :last_name
    attr_accessible :gender
    validates :email, :presence => true
    validates :last_name, :presence => true
    validates :gender, :presence => true

    def full_name
        [first_name,last_name].join(' ')#我们在Person中有一个full_name方法
    end
end
