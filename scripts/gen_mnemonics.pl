#!/usr/bin/perl

my $i = 0;

print "/* AUTOGENERATED; DO NOT MODIRY */\n";
print "static const char * mnemonics[256] = {\n";

while (<STDIN>) {

	my @a = split(" ", $_);

	if ($i != $a[0]) {
		while ($i != $a[0]) {
			print "\"<invalid>\",\n";
			$i += 1;
		}
	} 

	print "\"$a[2]\",\n";

	$i += 1;

}

print "};\n";
