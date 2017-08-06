<%
	String [] instruments = new String[113];
	
	instruments[0] = "accordion";
	instruments[1] = "acoustic guitar";
	instruments[2] = "bagpipes";
	instruments[3] = "banjo";
	instruments[4] = "bassoon ";
	instruments[5] = "bell";
	instruments[6] = "bongo";
	instruments[7] = "bugle";
	instruments[8] = "clarinet";
	instruments[9] = "castanets";
	instruments[10] = "cello";
	instruments[11] = "clarinet";
	instruments[12] = "conga";
	instruments[13] = "cornet";
	instruments[14] = "cymbals";
	instruments[15] = "chimes";
	instruments[16] = "cowbell";
	instruments[17] = "drums";
	instruments[18] = "ektara";
	instruments[19] = "erhu";
	instruments[20] = "erxian";
	instruments[21] = "flute";
	instruments[22] = "flutophone";
	instruments[23] = "flugelhorn";
	instruments[24] = "French horn";
	instruments[25] = "finger cymbals";
	instruments[26] = "fiddle";
	instruments[27] = "harmonica";
	instruments[28] = "harp";
	instruments[29] = "harpsichord";
	instruments[30] = "horn";
	instruments[31] = "Harp";
	instruments[32] = "Harpsichord";
	instruments[33] = "Ipu Igil";
	instruments[34] = "Irish bouzouki";
	instruments[35] = "Inci";
	instruments[36] = "Irish Uilleann";
	instruments[37] = "Istarski mih";
	instruments[38] = "jug Janggu";
	instruments[39] = "Jew’s harp";
	instruments[40] = "Jiaohu";
	instruments[41] = "Jinghu";
	instruments[42] = "kazoo";
	instruments[43] = "keyboard";
	instruments[44] = "kettle drum";
	instruments[45] = "lute";
	instruments[46] = "lyre";
	instruments[47] = "mandolin";
	instruments[48] = "maracas";
	instruments[49] = "Naqara";
	instruments[50] = "Nyckelharpa";
	instruments[51] = "Nadaswaram";
	instruments[52] = "Natural Trumpet";
	instruments[53] = "Nay";
	instruments[54] = "Ney";
	instruments[55] = "Northumbrian small pipes";
	instruments[56] = "Nose flute";
	instruments[57] = "organ";
	instruments[58] = "oboe";
	instruments[59] = "piano";
	instruments[60] = "percussions";
	instruments[61] = "pipe organ";
	instruments[62] = "Piccolo";
	instruments[63] = "quinticlave";
	instruments[64] = "Qanun";
	instruments[65] = "Quena";
	instruments[66] = "recorder";
	instruments[67] = "rain stick";
	instruments[68] = "rattle";
	instruments[69] = "reed pipe";
	instruments[70] = "saxophone";
	instruments[71] = "snare drum";
	instruments[72] = "steel drum";
	instruments[73] = "strings";
	instruments[74] = "sousaphone";
	instruments[75] = "synthesizer";
	instruments[76] = "Spoons";
	instruments[77] = "Sitar";
	instruments[78] = "Slide guitar";
	instruments[79] = "Steel guitar";
	instruments[80] = "Slide whistle";
	instruments[81] = "tambourine";
	instruments[82] = "triangle";
	instruments[83] = "trombone";
	instruments[84] = "trumpet";
	instruments[85] = "tuba";
	instruments[86] = "turntables";
	instruments[87] = "Tom-tom";
	instruments[88] = "ukulele";
	instruments[89] = "Udu Ud/ oud";
	instruments[90] = "Irish Uilleann";
	instruments[91] = "viola";
	instruments[92] = "violin";
	instruments[93] = "Vertical flute";
	instruments[94] = "Whip/slapstick";
	instruments[95] = "Welsh pipes";
	instruments[96] = "Willow flute";
	instruments[97] = "Wind Chimes";
	instruments[98] = "Washtub bass";
	instruments[99] = "whistle";
	instruments[100] = "xylophone";
	instruments[101] = "Xylorimba";
	instruments[102] = "Xalam";
	instruments[103] = "Xiaodihu";
	instruments[104] = "Xiao";
	instruments[105] = "Xun";
	instruments[106] = "Yun Lo";
	instruments[107] = "Yayli tanbur";
	instruments[108] = "Yehu";
	instruments[109] = "zither";
	instruments[110] = "Zhongdihu";
	instruments[111] = "Zampogna";
	instruments[112] = "Zurna";		
	//read user input
	String instrument123 = request.getParameter("q");  //q is the name of the parameter from AJAX call
	
    String instrument = instrument123.toUpperCase();
	
	
	//I am using UL/LI to return the data to xmlHttp object. Could be anything.
	String result = "<UL>";
	for (String currentinstrument : instruments)   //new for loop
	{
		currentinstrument = currentinstrument.toUpperCase();
		
		if (currentinstrument.contains(instrument))
		{
			result += "<LI>" + currentinstrument + "</LI>"+"<a href ='http://www.google.com'><button class = 'btn btn-success mybutton'>select</button></a></LI><br><br></br></br>";
		}
	}
	result += "</UL>";
	
	out.println(result);   //send this to xmlHttp object
%>
