defmodule Widget do
  @moduledoc false
  use Bonny.Controller
  require Logger

  @rule {"apps", ["deployments", "services"], ["*"]}
  @rule {"", ["configmaps"], ["create", "read"]}

  @spec add(any()) :: :ok | {:error, any()}
  def add(obj), do: Logger.info("add: #{inspect(obj)}")
  @spec modify(any()) :: :ok | {:error, any()}
  def modify(obj), do: Logger.info("modify: #{inspect(obj)}")
  @spec delete(any()) :: :ok | {:error, any()}
  def delete(obj), do: Logger.info("delete: #{inspect(obj)}")
end
