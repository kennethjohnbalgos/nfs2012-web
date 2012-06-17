class ContentAnnouncementsController < ApplicationController
  # GET /content_announcements
  # GET /content_announcements.json
  def index
    @content_announcements = ContentAnnouncement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_announcements }
    end
  end

  # GET /content_announcements/1
  # GET /content_announcements/1.json
  def show
    @content_announcement = ContentAnnouncement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_announcement }
    end
  end

  # GET /content_announcements/new
  # GET /content_announcements/new.json
  def new
    @content_announcement = ContentAnnouncement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_announcement }
    end
  end

  # GET /content_announcements/1/edit
  def edit
    @content_announcement = ContentAnnouncement.find(params[:id])
  end

  # POST /content_announcements
  # POST /content_announcements.json
  def create
    @content_announcement = ContentAnnouncement.new(params[:content_announcement])

    respond_to do |format|
      if @content_announcement.save
        format.html { redirect_to content_announcements_path, notice: 'Content announcement was successfully created.' }
        format.json { render json: @content_announcement, status: :created, location: @content_announcement }
      else
        format.html { render action: "new" }
        format.json { render json: @content_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_announcements/1
  # PUT /content_announcements/1.json
  def update
    @content_announcement = ContentAnnouncement.find(params[:id])

    respond_to do |format|
      if @content_announcement.update_attributes(params[:content_announcement])
        format.html { redirect_to content_announcements_path, notice: 'Content announcement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_announcements/1
  # DELETE /content_announcements/1.json
  def destroy
    @content_announcement = ContentAnnouncement.find(params[:id])
    @content_announcement.destroy

    respond_to do |format|
      format.html { redirect_to content_announcements_url }
      format.json { head :no_content }
    end
  end
end
