class SchoolClassesController < ApplicationController

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:title))
    redirect_to school_class_path(@school_class)


end
