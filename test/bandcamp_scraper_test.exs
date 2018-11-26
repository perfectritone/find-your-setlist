defmodule BandcampScraperTest do
  use ExUnit.Case, async: true

  test "releases_url is a URI" do
    assert %URI{} = URI.parse(BandcampScraper.releases_url)
  end

  test "page_body returns a string" do
    url = "http://httpbin.com/get"

    assert String.contains?(BandcampScraper.page_body(url), "")
  end

  test "extract_sets returns a list" do
    body_fixture = File.read("./test/bandcamp_sets_page.html")

    assert [] = BandcampScraper.extract_sets(body_fixture)
  end
end
