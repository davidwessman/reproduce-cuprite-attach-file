class BugsController < ApplicationController
  def new
    @bug = Bug.new
  end

  def create
    file = params.require(:bug).permit(:file).fetch(:file)
    puts file.size
    redirect_to(new_bug_path, notice: "File size: #{file.size}")
  end
end
