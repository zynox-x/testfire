<html>
<head>
  <title>Altoro Mutual: Link Disclaimer</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <style type="text/css">
  <!--
    p { font: 12px verdana, arial, sans-serif; color:#000000; line-height:1.6 }
  -->
  </style>
  <script>

    function go() {
	    var iPos = document.URL.indexOf("url=")+4;
    	var sDst = document.URL.substring(iPos,document.URL.length); 
        if (window.opener) {
      		window.opener.location.href = sDst;
      		cl();
        } else {
        	window.location.href = sDst;
        }
    }

    function cl() {
      window.close();
    }

    var iPos = document.URL.indexOf("url=")+4;
  	var sDst = document.URL.substring(iPos,document.URL.length);
    // if redirection is in the application's domain, don't ask for authorization
	if ( sDst.indexOf("http") == 0 && sDst.indexOf(document.location.hostname) != -1 ) {
		if (window.opener) {
      		window.opener.location.href = "http" + sDst.substring(4);
      		cl();
        } else {
        	window.location.href = "http" + sDst.substring(4);
        }
	}

	</script>
</head>

<body bgcolor=#FFFFFF link="#5811B0" vlink="#5811B0" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

  <center>
  <table width=90% border=0>
    <tr>
      <td>
        <p>This hyperlink allows you to access a third party website:
        <br /><br />
        <b><script>document.write(encodeURI(sDst));</script></b>
        <br /><br />
        Please read the privacy policy of the linked website, which
        may differ from the privacy policy of the Altoro Mutual website.
        <br /><br />
        Click OK to continue or Cancel to remain on altoromutual.com.
        </p>
        <a href="./disclaimer.htm?url=http:%252F%252Fwww.netscape.com#" onclick="go();return false;"><img src="images/ok.gif" id="ok" alt="ok" border="0"></a>
        <a href="./disclaimer.htm?url=http:%252F%252Fwww.netscape.com#" onclick="cl();return false;"><img src="images/cancel.gif" id="cancel" alt="cancel" border="0"></a>
      </td>
    </tr>
  </table>

  </center>

</body>
</html>







