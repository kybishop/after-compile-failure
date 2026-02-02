defmodule Parent do
  def __after_compile__(env, _bytecode) do
    str_mod = Module.concat(String.Chars, env.module)

    if function_exported?(str_mod, :to_string, 1) do
      :ok
    else
      raise ArgumentError, "String.Chars must be implemented for #{inspect(env.module)}"
    end
  end

  defmacro __using__(_opts) do
    quote do
      @after_compile Parent

      def greet do
        "Hello from Parent"
      end
    end
  end
end
