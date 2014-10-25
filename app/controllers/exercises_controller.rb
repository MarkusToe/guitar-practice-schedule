class ExercisesController < ApplicationController
  def update
    @exercise = Exercise.find(params[:id])

    if @exercise.update_attribute(:last_practiced, Time.now)
      flash[:success] = "Exercise #{@exercise.name} done!"
      redirect_to root_path
    else
      flash[:error] = "Exercise could not be saved!"
      redirect_to root_path
    end
  end
end
