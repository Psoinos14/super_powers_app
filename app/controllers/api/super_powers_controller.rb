class Api::SuperPowersController < ApplicationController
  def index
    @super_powers = SuperPower.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @super_power = SuperPower.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    @super_power = SuperPower.new(
      element: params[:element],
      strength: params[:strength],
      origin: params[:origin])
    @super_power.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @super_power = SuperPower.find_by(id: the_id)
    @super_power.element = params[:element]
    @super_power.strength = params[:strength]
    @super_power.origin = params[:origin]
    @super_power.save
    render 'show.json.jb'
  end

  def destroy
    the_id = params[:id]
    @super_power = SuperPower.find_by(id: the_id)
    @super_power.destroy
    render 'destroy.json.jb'
  end

end