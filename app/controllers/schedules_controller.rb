class SchedulesController < ApplicationController
  def index
    @content_schedules = ContentSchedule.order('position')
    @content_schedule = params[:id].present? ? @content_schedules.find(params[:id]) : @content_schedules.where(clickable: true).first
  end
  
  def content
    @content_schedule = ContentSchedule.find(params[:id])
    renderJS
  end
end
