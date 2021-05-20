class BookmarksController < ApplicationController

def new
  @bookmark = Bookmark.new
end

def create
  @bookmark = Bookmark.new(bookmark_params)

  if @bookmark.save
    redirect_to @bookmark, notice: 'Bookmark was successfully created.'
  else
    render :new
  end
end

def destroy
  @bookmark.destroy
  redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.'
end
end
