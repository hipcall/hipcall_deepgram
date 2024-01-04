defmodule HipcallDeepgram.Listen do
  @moduledoc false

  alias HipcallDeepgram.Config

  @endpoint_url "listen"

  @spec listen(
          audio_url :: binary(),
          options :: keyword(),
          config :: map()
        ) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def listen(audio_url, options, config \\ %Config{}) do
    Finch.build(
      :post,
      endpoint_url(options),
      header(config),
      body(audio_url),
      []
    )
    |> Finch.request(HipcallDeepgramFinch, receive_timeout: 600_000)
  end

  defp endpoint_url(options) do
    "#{Config.api_url()}#{@endpoint_url}?#{option_to_query_param(options)}"
  end

  defp option_to_query_param(options) do
    options
    |> Enum.map(fn {key, value} -> "#{key}=#{value}" end)
    |> Enum.join("&")
  end

  defp header(config) do
    api_key = config.api_key || Config.api_key()

    [
      {"Authorization", "Token #{api_key}"},
      {"content-type", "application/json"}
    ]
  end

  defp body(audio_url) do
    %{url: audio_url} |> Jason.encode_to_iodata!()
  end
end
