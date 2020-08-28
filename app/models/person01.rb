class Person01 < ApplicationRecord
    def full_name
        [first_name,last_name].join(' ')#我们在Person中有一个full_name方法
    end
end
