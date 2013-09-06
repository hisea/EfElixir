defmodule Geom do

  def area({shape, x, y}) do
    area(shape,x,y)
  end


  defp area(shape, x, y) when x >= 0 and y >= 0 do
    case shape do
      :rectangle -> x * y
      :triangle -> x * y / 2
      :ellipse -> :math.pi * x * y
    end
  end

  defp area(_,_,_) do
    0
  end
end
