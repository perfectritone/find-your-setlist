defmodule BandcampScraper do
  @bandcamp_domain "https://music.papadosio.com"

  def releases_url do
    @bandcamp_domain
    |> URI.parse
    |> Map.put(:path, "/music")
    |> URI.to_string()
  end
end
