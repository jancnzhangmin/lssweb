class HomesController < ApplicationController

  def index
    sliderkeyword = Sliderkeyword.find_by_keyword('home')
    @sliders = sliderkeyword.sliders
  end

end
