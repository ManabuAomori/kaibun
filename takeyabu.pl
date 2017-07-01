use strict;
use warnings;

while(<>){

    	chomp;
	my $answer = kaibun($_);
	print "$answer\n";
}

sub kaibun{
	my @word;
  	my $cnt =10;

	@word =  split(",",$_);	
	while(1){
#	print "$word[0]\n";
   	my $first_num =	convCardinalNum($cnt,$word[0]);
#	print $first_num;
	my $second_num = convCardinalNum($cnt,$word[1]);
	my $rev_first_num = reverse $first_num;
	my $rev_second_num = reverse $second_num;
	if(($first_num eq $rev_first_num) && ( $second_num eq $rev_second_num)){
		return $cnt;
		last;
	}
	$cnt++;
	}
}

sub convCardinalNum{
my ($dec, $cn) = @_;
my @ch = (0..9, 'a'..'z');
my $str = '';

while ($dec){
$str = $ch[$dec % $cn] . $str;
$dec = int($dec / $cn);
}
return $str;
}

