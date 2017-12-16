class ProjectsController < ApplicationController
  def index
    @contentkeyword = Contentkeyword.find_by_keyword('project')
    @contents=@contentkeyword.contents.paginate(:page => params[:page], :per_page => 9)
  end
end
