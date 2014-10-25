class ExercisesController < ApplicationController
  def update
    @exercise = Exercise.find(params[:id])

    current_key = @exercise.key
    new_key = Key.where.not(id: current_key.id).order("RANDOM()").first

    if @exercise.update_attribute(:last_practiced, Time.now) && @exercise.update_attribute(:key, new_key)
      flash[:success] = "Exercise #{@exercise.name} in key #{new_key.name} done!"
      redirect_to root_path
    else
      flash[:error] = "Exercise could not be saved!"
      redirect_to root_path
    end
  end
end
