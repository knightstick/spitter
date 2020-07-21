# frozen_string_literal: true

class SpitsController < ApplicationController
  def create
    @spit = Spit.new(spit_params)

    @spit.save!

    redirect_to root_path
  end

  private

  def spit_params
    params.require(:spit).permit(:body)
  end
end
