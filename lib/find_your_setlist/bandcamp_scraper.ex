defmodule BandcampScraper do
  @bandcamp_domain "https://music.papadosio.com"

  def scrape_sets do
    releases_url()
    |> page_body
    # |> extract_sets
    # |> Enum.map(&BandcampSetParser.parse(&1))
    # |> Enum.map(&persist_set(&1))
  end

  def releases_url do
    @bandcamp_domain
    |> URI.parse
    |> Map.put(:path, "/music")
    |> URI.to_string()
  end

  def page_body(url) do
    HTTPotion.get!(url).body
  end

  def extract_sets(html) do
    Floki.find(html, "ol.music-grid")
    |> Floki.attribute("data-initial-values")
    |> Enum.map(&Jason.decode(&1))
  end

  # def persist_set(set) do
  #   # Persist set
  #   page_body(releases_url ++ set.urn)
  #   |> extract_set_songs
  # end

  # def extract_set_songs(html) do
  #   Floki.find(html, "td.title-col .title")
  #   |> extract_song
  # end

  # def extract_song(song_html) do
  #   %{
  #     urn: Floki.attribute(song_html, "a") |> Floki.attribute("href"),
  #     name: Floki.attribute(song_html, "a span") |> Floki.text,
  #     duration: Floki.attribute(song_html, ".time") |> Floki.text |> extract_song_duration,
  #   }
  # end

  # def extract_song_duration(raw_duration) do
  #   String.split(raw_duration, ":")
  #   # |>
  #   #   reverse.each_with_index.reduce(0) do |sum, (value, index)|
  #   #     sum + (value.to_i * 60 ** index)
  #   #   end
  # end

  # #  mix phx.gen.schema Performance performances release_date:date raw_title:string bandcampbcbcbc_id:string urn:string
end
