, 
 
 
 

 


 
 
 
 

 
 
 

<%
	
	
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
			result += "<LI>" + currentinstrument + "<a href ='http://www.google.com'><button class = 'btn btn-success mybutton'>select</button></a></LI><br><br>";
		}
	}
	result += "</UL>";
	
	out.println(result);   //send this to xmlHttp object
%>

