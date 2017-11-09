defmodule Client.Mixfile do
  use Mix.Project

  def project do
    [
      app: :client,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Client.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_gen_socket_client, "~> 2.0"},
      {:websocket_client, "~> 1.2"},
      {:poison, "~> 3.0"}
    ]
  end
end
