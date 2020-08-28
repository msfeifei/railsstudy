class Person < ApplicationRecord
    # attr_accessor :first_name, :last_name
    # def initialize(params)
    #     self.first_name = params[:first_name]
    #     self.last_name = params[:last_name]
    # end
    def full_name
        #@first_name + ' ' + @last_name
        [first_name,last_name].join(' ')
    end
    
end
