class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params.require(:person).permit(:name, :blood_type))
    if @person.save
      redirect_to @person
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(params.require(:person).permit(:name, :blood_type))
      redirect_to @person
    else
      render :edit
    end
    # @person.update(params.require(:person).permit(:name, :blood_type))
  end









  def destroy
    @person = Person.find(params[:id])
    if @person.destroy
      redirect_to people_path
    else
      render @person
    end
  end
end
