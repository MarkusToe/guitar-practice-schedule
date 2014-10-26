class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @exercise.last_practiced = Time.now
    if @exercise.save
      flash[:success] = "New Exercise #{@exercise.name} added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

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

  private

  def exercise_params
    params.require(:exercise).permit(:name, :category_id, :key_id,
                                 :tempo, :note, :link)
  end
end
