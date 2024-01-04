defmodule HipcallDeepgram do
  @moduledoc """
  Provides API wrappers for Deepgram API

  See https://developers.deepgram.com/reference/deepgram-api-overview for further info on REST endpoints
  """

  alias HipcallDeepgram.Config
  alias HipcallDeepgram.Listen

  @listen_schema [
    model: [
      type: {
        :in,
        [
          "nova-2-general",
          "nova-2-meeting",
          "nova-2-phonecall",
          "nova-2-voicemail",
          "nova-2-finance",
          "nova-2-conversationalai",
          "nova-2-video",
          "nova-2-medical",
          "nova-2-drivethru",
          "nova-2-automotive",
          "nova",
          "nova-phonecall",
          "enhanced",
          "enhanced-meeting",
          "enhanced-phonecall",
          "enhanced-finance",
          "base",
          "base-meeting",
          "base-phonecall",
          "base-voicemail",
          "base-finance",
          "base-conversationalai",
          "base-video",
          "whisper",
          "whisper-tiny",
          "whisper-base",
          "whisper-small",
          "whisper-medium",
          "whisper-large"
        ]
      },
      doc: """
      AI model used to process submitted audio. Default: nova-2-general.
      For more information https://developers.deepgram.com/docs/model
      """,
      default: "nova-2-general"
    ],
    language: [
      type: {
        :in,
        [
          "da",
          "en",
          "en-AU",
          "en-GB",
          "en-IN",
          "en-NZ",
          "en-US",
          "es",
          "es-419",
          "fr",
          "fr-CA",
          "hi",
          "hi-Latn",
          "id",
          "it",
          "ja",
          "ko",
          "nl",
          "pl",
          "pt",
          "pt-BR",
          "pt-PT",
          "ru",
          "sv",
          "tr",
          "uk",
          "zh-CN",
          "zh-TW"
        ]
      },
      doc: """
      The BCP-47 language tag that hints at the primary spoken language. Default: en.
      For more information https://developers.deepgram.com/docs/language
      """,
      default: "en"
    ]
  ]

  @doc """
  Listen endpoint

  For more information https://developers.deepgram.com/reference/listen-file

  ## Examples

      iex> audio_url = "https://static.deepgram.com/examples/Bueller-Life-moves-pretty-fast.wav"
      iex> option = [model: "base", language: "tr"]
      iex> HipcallDeepgram.Listen.listen(audio_url, option)

  ## Arguments

  - `audio_url`
  - `options`
  - `config`

  ## Options

  #{NimbleOptions.docs(@listen_schema)}

  ## Raises

  ## Returns

  - {:ok, Finch.Response.t()}
  - {:error, Exception.t()}
  """
  @spec listen(
          audio_url :: binary(),
          options :: keyword(),
          config :: map()
        ) :: {:ok, Finch.Response.t()} | {:error, Exception.t()}
  def listen(audio_url, options, config \\ %Config{}) do
    NimbleOptions.validate!(options, @listen_schema)
    Listen.listen(audio_url, options, config)
  end
end
