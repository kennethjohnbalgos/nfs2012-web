class ContentSchedulesController < ApplicationController
  # GET /content_schedules
  # GET /content_schedules.json
  def index
    @content_schedules = ContentSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_schedules }
    end
  end

  # GET /content_schedules/1
  # GET /content_schedules/1.json
  def show
    @content_schedule = ContentSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_schedule }
    end
  end

  # GET /content_schedules/new
  # GET /content_schedules/new.json
  def new
    @content_schedule = ContentSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_schedule }
    end
  end

  # GET /content_schedules/1/edit
  def edit
    @content_schedule = ContentSchedule.find(params[:id])
  end

  # POST /content_schedules
  # POST /content_schedules.json
  def create
    @content_schedule = ContentSchedule.new(params[:content_schedule])

    respond_to do |format|
      if @content_schedule.save
        format.html { redirect_to content_schedules_path, notice: 'Content schedule was successfully created.' }
        format.json { render json: @content_schedule, status: :created, location: @content_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @content_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_schedules/1
  # PUT /content_schedules/1.json
  def update
    @content_schedule = ContentSchedule.find(params[:id])

    respond_to do |format|
      if @content_schedule.update_attributes(params[:content_schedule])
        format.html { redirect_to content_schedules_path, notice: 'Content schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_schedules/1
  # DELETE /content_schedules/1.json
  def destroy
    @content_schedule = ContentSchedule.find(params[:id])
    @content_schedule.destroy

    respond_to do |format|
      format.html { redirect_to content_schedules_url }
      format.json { head :no_content }
    end
  end
end
