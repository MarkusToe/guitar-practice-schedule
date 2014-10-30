class ArchivesController < ApplicationController
  def index
    @archives = Archive.order("created_at DESC")
    @archives_days = @archives.group_by { |t| t.created_at.beginning_of_day }
  end

  def show
    @exercise = Exercise.find(params[:id])
    @archives = @exercise.archives.order("created_at DESC")
  end
end
