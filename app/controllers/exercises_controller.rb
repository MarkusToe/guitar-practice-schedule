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

  def update_time
    @exercise = Exercise.find(params[:id])

    current_key = @exercise.key
    new_key = Key.where.not(id: current_key.id).order("RANDOM()").first

    if @exercise.update_attribute(:last_practiced, DateTime.now) && @exercise.update_attribute(:key, new_key)

      @archive = Archive.new(tempo: @exercise.tempo,
                             time: @exercise.time,
                             note: @exercise.note,
                             link: @exercise.link,
                             exercise_id: @exercise.id,
                             category_id: @exercise.category_id,
                             key_id: @exercise.key_id
      )

      if @archive.save
        flash[:success] = "Exercise #{@exercise.name} in key #{new_key.name} done and archived!"
        redirect_to root_path
      else
        flash[:error] = "Exercise could not be saved!"
        redirect_to root_path
      end

    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])

    if @exercise.update_attributes(exercise_params)

      flash[:success] = "Exercise updated"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :category_id, :key_id,
                                 :tempo, :note, :link)
  end
end
