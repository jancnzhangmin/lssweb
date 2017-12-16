class MyhelpsController < ApplicationController
  def index
    contentkeyword = Contentkeyword.find_by_keyword('help')
    @helps = contentkeyword.contents
  end
end
