defmodule Dijkstra do
	def gcd(m,n) do
    cond do
      m == n -> m
      m > n -> gcd(m-n,n)
      true -> gcd(m,n-m)
    end
  end

end

defmodule Powers do
  import Kernel, except: [raise: 2,raise: 3]

  # Non-tail recursion version
  # def raise(x,n) do
  #   cond do
  #     n == 0 -> 1
  #     n == 1 -> x
  #     n > 0 -> x * raise(x, n-1)
  #     n < 0 -> 1 / raise(x,-n)
  #   end
  # end

  #Tail Recursion

  def raise(_, 0) do
    1
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  def raise(x, n) when n > 0 do
    raise(x, n, 1)
  end

  defp raise(_x, 0, accumulator) do
    accumulator
  end

  defp raise(x, n, accumulator) do
    raise(x, n - 1, x * accumulator)
  end

end
