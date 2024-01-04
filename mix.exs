defmodule HipcallDeepgram.MixProject do
  use Mix.Project

  def project do
    [
      app: :hipcall_deepgram,
      name: "HipcallDeepgram",
      description: "Unofficial Deepgram API Wrapper written in Elixir.",
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {HipcallDeepgram.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:finch, "~> 0.16.0"},
      {:jason, "~> 1.4"},
      {:nimble_options, "~> 1.1"},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end

  def package do
    [
      licenses: ["MIT"],
      links: %{
        "Website" => "https://www.hipcall.com/en-gb/",
        "GitHub" => "https://github.com/hipcall/hipcall_deepgram"
      }
    ]
  end
end
