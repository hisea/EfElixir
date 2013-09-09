defmodule AskArea do
  import Geom, only: [area: 2]
  def area do
    shape = IO.gets "R)ectangle, T)riangle, E)llipse:"
    char = String.first(shape)

    width = IO.gets "Enter width >"
    height = IO.gets "Enter height >"

  end

  def char_to_shape(char) do

  end


end
