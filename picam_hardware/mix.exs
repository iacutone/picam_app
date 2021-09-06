defmodule PicamHardware.MixProject do
  use Mix.Project

  def project do
    [
      app: :picam_hardware,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {PicamHardware.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:picam, "~> 0.4.0"}
    ]
  end
end
