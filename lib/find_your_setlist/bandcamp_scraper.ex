defmodule BandcampScraper do
  @bandcamp_domain "https://music.papadosio.com"

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
end
