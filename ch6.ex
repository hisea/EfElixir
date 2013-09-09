defmodule Stats do
	def minimum([h|t]) do
    minimum(t,h)
  end

  def minimum([], candidate) do
    candidate
  end

  def minimum([h | t], candidate) do
    cond do
      h < candidate -> minimum(t, h)
      h >= candidate -> minimum(t,candidate)
    end
  end

end

defmodule Dates do

end
