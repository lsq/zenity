my $f = shift;
open(FILE,'<:raw', $f) || die "no open";
binmode(FILE);
local $/;
# while (read(FILE, $buff, 8*2**10)) {
#     $content .= $buff;
# }
my $content = <FILE>;
close(FILE);
$content =~ s/perl/C:\/msys64\/usr\/bin\/perl.exe/g;
# @matches = ($content =~ /(.*)perl(.*)/g);
# print STDOUT join("C:/msys64/usr/bin/perl.exe", @matches);
open(FILE,'>:raw', $f) || die "no open";
binmode(FILE);
print FILE $content;
# print FILE join("", @matches);
close(FILE);
