class NotesController < ApplicationController
  def index
    notes = Note.where(user_id: params[:user_id])
    render json: notes
  end 

  def create
    note = Note.create(note_params)
      if note.valid?
      render json: note 
      end
  end

  def show
    note = Note.find(params[:id])
    render json: note
  end

  def update
    note = Note.find(params[:id])
    note.update(note_params)
    if note.valid? 
      render json: note
  end

  def destroy 
      note = Note.find(params[:id])
      note.destroy 
      render json: note
  end 
end

  private
  def note_params
      params.require(:note).permit(:title, :content, :user_id, :starred)
  end
end
