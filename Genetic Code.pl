%genetic_code = (
'GCA'=>'A', #Alanine
'GCC'=>'A', #Alanine
'GCG'=>'A', #Alanine
'GCT'=>'A', #Alanine
'AGA'=>'R', #Arginine
'AGG'=>'R', #Arginine
'CGA'=>'R', #Arginine
'CGC'=>'R', #Arginine
'CGG'=>'R', #Arginine
'CGT'=>'R', #Arginine
'AAC'=>'N', #Asparagine
'AAT'=>'N', #Asparagine
'GAC'=>'D', #Aspartic acid
'GAT'=>'D', #Aspartic acid
'TGC'=>'C', #Cysteine
'TGT'=>'C', #Cysteine
'GAA'=>'E', #GlTtamic acid
'GAG'=>'E', #GlTtamic acid
'CAA'=>'Q', #GlTtamine
'CAG'=>'Q', #GlTtamine
'GGA'=>'G', #Glycine
'GGC'=>'G', #Glycine
'GGG'=>'G', #Glycine
'GGT'=>'G', #Glycine
'CAC'=>'H', #Histidine
'CAT'=>'H', #Histidine
'ATA'=>'I', #IsoleTcine
'ATC'=>'I', #IsoleTcine
'ATT'=>'I', #IsoleTcine
'TTA'=>'L', #LeTcine
'TTG'=>'L', #LeTcine
'CTA'=>'L', #LeTcine
'CTC'=>'L', #LeTcine
'CTG'=>'L', #LeTcine
'CTT'=>'L', #LeTcine
'AAA'=>'K', #Lysine
'AAG'=>'K', #Lysine
'ATG'=>'M', #Methionine
'TTC'=>'F', #Phenylalanine
'TTT'=>'F', #Phenylalanine
'CCA'=>'P', #Proline
'CCC'=>'P', #Proline
'CCG'=>'P', #Proline
'CCT'=>'P', #Proline
'AGC'=>'S', #Serine
'AGT'=>'S', #Serine
'TCA'=>'S', #Serine
'TCC'=>'S', #Serine
'TCG'=>'S', #Serine
'TCT'=>'S', #Serine
'ACA'=>'T', #Threonine
'ACC'=>'T', #Threonine
'ACG'=>'T', #Threonine
'ACT'=>'T', #Threonine
'TGG'=>'W', #Tryptophan
'TAC'=>'Y', #Tyrosine
'TAT'=>'Y', #Tyrosine
'GTA'=>'V', #Valine
'GTC'=>'V', #Valine
'GTG'=>'V', #Valine
'GTT'=>'V', #Valine
'TAA'=>'-', #STOP
'TAG'=>'-', #STOP
'TGA'=>'-', #STOP
);



print "Dwse thn akolouthia noukleotidiwn:\n";
$seq=<STDIN>;
chomp $seq;
print "\n";

#vriskw ta aminoksea

for($i=1;$i<=length($seq)+1;$i++)
{
    $x=substr($seq,$i,3);
    if($x eq 'ATG')
    {
        for($j=$i;$j<=length($seq)-3;$j=$j+3)
        {
            $y=substr($seq,$j,3);
            $k=$genetic_code{$y};
            if($k eq '-')
            {
                print "\n";
                print "H thesh tou noukleotidiou enarkshs einai:$i\n";
                print "H thesh tou noukleotidiou lhkshs einai:$j\n";
                print "\n";
                last;
            }
            print "$k";
        }
	print "\n";
    }
    
    
    #vriskw th sumplhrwmatikh alusida DNA
    
        $m=substr($seq,$i,1);
    if($m eq "A")
    {
        $p="T";
        @table1=(@table1,$p);
    }
    elsif($m eq "T")
    {
        $p="A";
        @table1=(@table1,$p);
    }
    elsif($m eq "G")
    {
        $p="C";
        @table1=(@table1,$p);
    }
    else
    {
        $p="G";
        @table1=(@table1,$p);
    }
}
print "Oi dyo alusides DNA einai oi ekshs:\n";
print $seq;
print "\n";
$last=pop(@table1);
print @table1;