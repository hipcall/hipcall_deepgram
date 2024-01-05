defmodule HipcallDeepgram.MixProject do
  use Mix.Project

  @source_url "https://github.com/hipcall/hipcall_deepgram"
  @version "0.2.0"

  def project do
    [
      app: :hipcall_deepgram,
      name: "HipcallDeepgram",
      description: "Unofficial Deepgram API Wrapper written in Elixir.",
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs()
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
        "GitHub" => @source_url
      }
    ]
  end

  def docs do
    [
      main: "readme",
      name: "HipcallDeepgram",
      canonical: "https://hex.pm/packages/hipcall_disposable_email",
      source_ref: "v#{@version}",
      source_url: @source_url,
      extras: ["README.md", "CHANGELOG.md", "LICENSE.md"]
    ]
  end
end
