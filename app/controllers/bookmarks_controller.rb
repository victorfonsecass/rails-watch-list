class BookmarksController < ApplicationController

 def new
  @bookmarks = Bookmarks.new.new
 end

end
