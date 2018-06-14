class SchoolClassesController < ApplicationController

  def create 
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_path(@school_class)
  end



end
