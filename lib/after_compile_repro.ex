defmodule AfterCompileRepro do
  use Parent

  defimpl String.Chars, for: __MODULE__ do
    def to_string(_cmd) do
      "string here"
    end
  end
end
