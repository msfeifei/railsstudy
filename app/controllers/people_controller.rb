class PeopleController < ApplicationController
    def index
        @person = Person.all
      end
     
    def show
        @person = Person.find(params[:id])
      end
    def new
        @person = Person.new
    end

    def create
        @person = Person.new(person_params)
        if
            @person.save
            redirect_to @person
        else    
            render 'new'
        end
    end

    def destroy
        @person = Person.find(params[:id])
        @person.destroy
     
        redirect_to people_path
      end
    private
        def person_params
           params.require(:person).permit(:first_name, :last_name, :gender)
        end

end
