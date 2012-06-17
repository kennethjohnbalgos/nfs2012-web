class CompetitionsController < ApplicationController
  def index
    @content_competitions = ContentCompetition.order('position')
    @content_competition = @content_competitions.where(clickable: true).first
  end
  
  def content
    @content_competition = ContentCompetition.find(params[:id])
    renderJS
  end
end
