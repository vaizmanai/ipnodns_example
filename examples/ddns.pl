#!/usr/bin/perl -w
#-----------------------------------------------
#логин вашей учетной записи
$login = "zyxel";
#код для записи
$secret = "bbe6854c83e04da02d98b187df176b13";
#если явно не указать адрес, будет автоматически определен ip  
#$ip = "8.8.8.8";
#-----------------------------------------------
$url = "https://ipnodns.ru/cgi-bin/newip.cgi";
use LWP::UserAgent;
$ua = LWP::UserAgent->new;
my $req = HTTP::Request->new(POST=>$url);
$req->content_type('application/x-www-form-urlencoded');
my $s = "login=$login&secret=$secret";
if((defined $ip)&&($ip ne '')){$s = $s.'&addr='.$ip};
$req->content($s);
my $res = $ua->request($req);

print "Status: ";
print $res->content;
print "\n";