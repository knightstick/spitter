# frozen_string_literal: true

class HomepageController < ApplicationController
  def show
    @spit = Spit.new
    @spits = Spit.homepage
  end
end
