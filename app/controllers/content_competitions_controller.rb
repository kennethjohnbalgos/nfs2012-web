class ContentCompetitionsController < ApplicationController
  # GET /content_competitions
  # GET /content_competitions.json
  def index
    @content_competitions = ContentCompetition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_competitions }
    end
  end

  # GET /content_competitions/1
  # GET /content_competitions/1.json
  def show
    @content_competition = ContentCompetition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_competition }
    end
  end

  # GET /content_competitions/new
  # GET /content_competitions/new.json
  def new
    @content_competition = ContentCompetition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_competition }
    end
  end

  # GET /content_competitions/1/edit
  def edit
    @content_competition = ContentCompetition.find(params[:id])
  end

  # POST /content_competitions
  # POST /content_competitions.json
  def create
    @content_competition = ContentCompetition.new(params[:content_competition])

    respond_to do |format|
      if @content_competition.save
        format.html { redirect_to content_competitions_path, notice: 'Content competition was successfully created.' }
        format.json { render json: @content_competition, status: :created, location: @content_competition }
      else
        format.html { render action: "new" }
        format.json { render json: @content_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_competitions/1
  # PUT /content_competitions/1.json
  def update
    @content_competition = ContentCompetition.find(params[:id])

    respond_to do |format|
      if @content_competition.update_attributes(params[:content_competition])
        format.html { redirect_to content_competitions_path, notice: 'Content competition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_competitions/1
  # DELETE /content_competitions/1.json
  def destroy
    @content_competition = ContentCompetition.find(params[:id])
    @content_competition.destroy

    respond_to do |format|
      format.html { redirect_to content_competitions_url }
      format.json { head :no_content }
    end
  end
end
