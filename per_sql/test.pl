#!/usr/bin/perl

use DBI;

$dbh = DBI->connect( "dbi:SQLite:data.dbl" ) || die "Cannot connect: $DBI::errstr";

$dbh->do( "CREATE TABLE people ( firstname, lastname, home)" );
$dbh->do( "INSERT INTO people VALUES ('Rose', 'Tyler', 'Earth') " );
$dbh->do( "INSERT INTO people VALUES ('Zoe', 'Heriot', 'Space Station W3') " );
$dbh->do( "INSERT INTO people VALUES ('Jo', 'Grant', 'Earth') " );
$dbh->do( "INSERT INTO people VALUES ('Leela', 'N/A', 'Unspecified') " );
$dbh->do( "INSERT INTO people VALUES ('Romana', 'N/A', 'Gallifrey') " );
$dbh->do( "INSERT INTO people VALUES ('Clara', 'Oswald', 'Earth') " );
$dbh->do( "INSERT INTO people VALUES ('Adric', 'N/A', 'Alzarius') " );
$dbh->do( "INSERT INTO people VALUES ('Susan', 'Foreman', 'Gallifrey') " );

$res = $dbh->selectall_arrayref( q( SELECT firstname, lastname, home FROM people;));

foreach( @$res ) {
  foreach $i (0..$#$_){
    print "$_->[$i] "
  }
  print "\n";
}
# if($res < 0){
#   print $DBI::errstr;
# }
# while(my @row = $res->fetchrow_array()){
#   print "First Name".$row[0] . "\n";
#   print "Last Name".$row[1] . "\n";
#   print "Home".$row[2] . "\n";
# }
$dbh->disconnect;
