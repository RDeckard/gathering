# frozen_string_literal: true

class WorkshopTemplatesController < ApplicationController
  before_action :set_workshop_template, only: %i[show edit update destroy]

  # GET /workshop_templates
  def index
    @workshop_templates = WorkshopTemplate.all
  end

  # GET /workshop_templates/1
  def show; end

  # GET /workshop_templates/new
  def new
    @workshop_template = WorkshopTemplate.new
  end

  # GET /workshop_templates/1/edit
  def edit; end

  # POST /workshop_templates
  def create
    @workshop_template = WorkshopTemplate.new(workshop_template_params)

    if @workshop_template.save
      redirect_to @workshop_template, notice: 'Workshop template was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /workshop_templates/1
  def update
    if @workshop_template.update(workshop_template_params)
      redirect_to @workshop_template, notice: 'Workshop template was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /workshop_templates/1
  def destroy
    @workshop_template.destroy
    redirect_to workshop_templates_url, notice: 'Workshop template was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_workshop_template
    @workshop_template = WorkshopTemplate.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def workshop_template_params
    params.require(:workshop_template).permit(:name, :description)
  end
end
