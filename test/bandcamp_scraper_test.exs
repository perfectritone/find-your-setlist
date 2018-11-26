defmodule BandcampScraperTest do
  use ExUnit.Case, async: true

  test "releases_url is a URI" do
    assert %URI{} = URI.parse(BandcampScraper.releases_url)
  end

  test "page_body returns a string" do
    url = "http://httpbin.com/get"

    assert String.contains?(BandcampScraper.page_body(url), "")
  end
end
