class InfosController < ApplicationController
  def index
    contentkeyword = Contentkeyword.find_by_keyword('install')
    @installs = contentkeyword.contents
    contentkeyword = Contentkeyword.find_by_keyword('enterprice')
    @enterprices = contentkeyword.contents
  end
end
