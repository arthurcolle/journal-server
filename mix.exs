defmodule JournalServer.Mixfile do
  use Mix.Project

  def project do
    [
      app: :journal_server,
      version: "0.1.0",
      elixir: "~> 1.5-dev",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 0.11.2"},
      {:poison, "~> 3.1"},
      {:exredis, [github: "artemeff/exredis"]}
    ]
  end
end
