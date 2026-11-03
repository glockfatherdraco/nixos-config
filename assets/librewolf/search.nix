let
  engine = name: alias: url: {
    Name = name;
    Alias = alias;
    URLTemplate = url;
  };
in
{
  Default = "DuckDuckGo No-AI (No Ads)";
  DefaultPrivate = "Startpage (EU)";
  PreventInstalls = true;

  # exclude
  Remove = [
    "DuckDuckGo No-AI"
    "Mojeek"
    "Startpage"
  ];

  # -- engines
  Add = [
    (engine "DuckDuckGo" "ddg" "https://noai.duckduckgo.com/?q={searchTerms}&kp=-1&k1=-1")
    (engine "Startpage" "sp" "https://eu.startpage.com/sp/search?q={searchTerms}")
    (engine "SearXNG" "srx" "https://search.disroot.org/search?q={searchTerms}")
  ];
}
