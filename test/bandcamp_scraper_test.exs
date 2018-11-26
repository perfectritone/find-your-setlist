defmodule BandcampScraperTest do
  use ExUnit.Case

  test "releases_url is a string" do
    assert %URI{} = URI.parse(BandcampScraper.releases_url)
  end
end
