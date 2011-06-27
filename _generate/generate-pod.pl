use Finance::TA;
use Data::Dump 'pp';
use Data::Dumper;

our $level = shift || 5;

print "TA_GetVersionString=", TA_GetVersionString(), "\n";
print "TA_GetVersionMajor =", TA_GetVersionMajor(), "\n";
print "TA_GetVersionMinor =", TA_GetVersionMinor(), "\n";
print "TA_GetVersionBuild =", TA_GetVersionBuild(), "\n";
print "TA_GetVersionDate  =", TA_GetVersionDate(), "\n";
print "TA_GetVersionTime  =", TA_GetVersionTime(), "\n";

sub ident($) {
    return "    " x $_[0];
}

sub func_flags {
    my ($flags) = @_;
    my @flags;
    push(@flags, "TA_FUNC_FLG_OVERLAP") if $flags & $TA_FUNC_FLG_OVERLAP;
    push(@flags, "TA_FUNC_FLG_INDICATOR") if $flags & $TA_FUNC_FLG_INDICATOR;
    push(@flags, "TA_FUNC_FLG_VOLUME") if $flags & $TA_FUNC_FLG_VOLUME;
    push(@flags, "TA_FUNC_FLG_UNST_PER") if $flags & $TA_FUNC_FLG_UNST_PER;
    return @flags;
}

sub in_flags {
    my ($flags) = @_;
    my @flags;
    push(@flags, "TA_IN_PRICE_OPEN") if $flags & $TA_IN_PRICE_OPEN;
    push(@flags, "TA_IN_PRICE_HIGH") if $flags & $TA_IN_PRICE_HIGH;
    push(@flags, "TA_IN_PRICE_LOW") if $flags & $TA_IN_PRICE_LOW;
    push(@flags, "TA_IN_PRICE_CLOSE") if $flags & $TA_IN_PRICE_CLOSE;
    push(@flags, "TA_IN_PRICE_VOLUME") if $flags & $TA_IN_PRICE_VOLUME;
    push(@flags, "TA_IN_PRICE_OPENINTEREST") if $flags & $TA_IN_PRICE_OPENINTEREST;
    push(@flags, "TA_IN_PRICE_TIMESTAMP") if $flags & $TA_IN_PRICE_TIMESTAMP;
    return @flags;
}

sub opt_flags {
    my ($flags) = @_;
    my @flags;
    push(@flags, "TA_OPTIN_IS_PERCENT") if $flags & $TA_OPTIN_IS_PERCENT;
    push(@flags, "TA_OPTIN_IS_DEGREE") if $flags & $TA_OPTIN_IS_DEGREE;
    push(@flags, "TA_OPTIN_IS_CURRENCY") if $flags & $TA_OPTIN_IS_CURRENCY;
    push(@flags, "TA_OPTIN_ADVANCED") if $flags & $TA_OPTIN_ADVANCED;
    return @flags;
}

sub out_flags {
    my ($flags) = @_;
    my @flags;
    push(@flags, "TA_OUT_LINE") if $flags & $TA_OUT_LINE;
    push(@flags, "TA_OUT_DOT_LINE") if $flags & $TA_OUT_DOT_LINE;
    push(@flags, "TA_OUT_DASH_LINE") if $flags & $TA_OUT_DASH_LINE;
    push(@flags, "TA_OUT_DOT") if $flags & $TA_OUT_HISTO;
    push(@flags, "TA_OUT_THIN_LINE") if $flags & $TA_OUT_THIN_LINE;
    push(@flags, "TA_OUT_NORM_LINE") if $flags & $TA_OUT_NORM_LINE;
    push(@flags, "TA_OUT_THICK_LINE") if $flags & $TA_OUT_THICK_LINE;
    return @flags;
}

sub in_type {
    my ($type) = @_;
    return "TA_Input_Price" if $type == $TA_Input_Price;
    return "TA_Input_Real" if $type == $TA_Input_Real;
    return "TA_Input_Integer" if $type == $TA_Input_Integer;
}

sub opt_type {
    my ($type) = @_;
    return "TA_OptInput_RealRange" if $type == $TA_OptInput_RealRange;
    return "TA_OptInput_RealList" if $type == $TA_OptInput_RealList;
    return "TA_OptInput_IntegerRange" if $type == $TA_OptInput_IntegerRange;
    return "TA_OptInput_IntegerList" if $type == $TA_OptInput_IntegerList;
}

sub out_type {
    my ($type) = @_;
    return "TA_Output_Real" if $type == $TA_Output_Real;
    return "TA_Output_Integer" if $type == $TA_Output_Integer;
}

sub display_range {
    my ($data, $type, $ident) = @_;
    #return unless $level > 4;
    my $rv;    
    #print ident($ident), "Min: $data->{min}\n";
    #print ident($ident), "Max: $data->{max}\n";
    #print ident($ident), "Precision: $data->{precision}\n" if $type == $TA_OptInput_RealRange;
    #print ident($ident), "Start: $data->{suggested_start}\n";
    #print ident($ident), "End: $data->{suggested_end}\n";
    #print ident($ident), "Step: $data->{suggested_increment}\n";
    $rv .= "min=$data->{min} " if defined $data->{min};
    $rv .= "max=$data->{max} " if defined $data->{max};
    #$rv .= "precision=$data->{precision} " if $type == $TA_OptInput_RealRange && defined $data->{precision};
    #$rv .= "start:$data->{suggested_start} " if defined $data->{suggested_start};
    #$rv .= "end:$data->{suggested_end} " if defined $data->{suggested_end};
    #$rv .= "step:$data->{suggested_increment}" if defined $data->{suggested_increment};
    $rv =~ s/\s*$//;
    return $rv;
}

sub display_list {
    my ($data, $ident) = @_;
    #return unless $level > 4;
    my $rv;
    for (my $i = 0;  $i < $data->{nbElement};  $i++) {
        #print ident($ident), $data->{data}[$i]{string}, ": ", $data->{data}[$i]{value}, "\n";
	#$rv .= $data->{data}[$i]{string}.":".$data->{data}[$i]{value}." ";
	$rv .= $data->{data}[$i]{value}."=".$data->{data}[$i]{string}." ";
    }
    $rv =~ s/\s*$//;
    return $rv;
}

sub display_inpar {
    my ($fh, $i, $ident) = @_;
    my @params;
    my @comments;
    my $info = $fh->GetInputParameterInfo($i);    
    if(in_type($info->{type}) eq 'TA_Input_Real') {
      push @params, '\@'.$info->{paramName};
      push @comments, '@'.$info->{paramName}.' - real values array';
    }    
    elsif ($info->{paramName} eq 'inPriceHLCV') {
      push @params, qw/\@high \@low \@close \@volume/;
      push @comments, '@high, @low, @close, @volume - real values arrays, all have to be the same size';
    }
    elsif ($info->{paramName} eq 'inPriceOHLC') {
      push @params, qw/\@open \@high \@low \@close/;
      push @comments, '@open, @high, @low, @close - real values arrays, all have to be the same size';
    }
    elsif ($info->{paramName} eq 'inPriceHLC') {
      push @params, qw/\@high \@low \@close/;
      push @comments, '@high, @low, @close - real values arrays, all have to be the same size';
    }
    elsif ($info->{paramName} eq 'inPriceHL') {
      push @params, qw/\@high \@low/;
      push @comments, '@high, @low - real values arrays, both have to be the same size';
    }
    elsif ($info->{paramName} eq 'inPriceV') {
      push @params, qw/\@volume/;
      push @comments, '@volume - real values array';
    }
    else {
      die "INPAR.ERROR: paramname=",$info->{paramName},"\n","intype=",in_type($info->{type}),"\n";
    }
    #print ident($ident++), "Input: $info->{paramName}\n";
    #return unless $level > 3;
    #my @flags = in_flags($info->{flags});
    #print ident($ident), "Flags: @flags\n" if @flags > 0;
    #print ident($ident), "Type: ", in_type($info->{type}), "\n";
    return \@params, \@comments;
}

sub display_optpar {
    my ($fh, $i, $ident) = @_;
    my @params;
    my @comments;
    my $info = $fh->GetOptInputParameterInfo($i);
    my $h = ' ['.$info->{hint}.']' if $info->{hint};
    if(opt_type($info->{type}) eq 'TA_OptInput_IntegerRange') {
      push @params, '$'.$info->{paramName};
      push @comments, '$'.$info->{paramName}.$h.' - integer (optional)';
    }    
    elsif(opt_type($info->{type}) eq 'TA_OptInput_RealRange') {
      push @params, '$'.$info->{paramName};
      push @comments, '$'.$info->{paramName}.$h.' - real number (optional)';
    }    
    elsif(opt_type($info->{type}) eq 'TA_OptInput_IntegerList' && $info->{paramName} =~ /^optIn(Fast|Slow|Signal|Slow)?(K_|D_)?MAType$/) {
      push @params, '$'.$info->{paramName};
      push @comments, '$'.$info->{paramName}.$h.' - integer (optional)';
    }    
    else {
      die "OPTPAR.ERROR: paramname=",$info->{paramName},"\n","intype=",opt_type($info->{type}),"\n";
    }
    
    #print ident($ident++), "Option: $info->{paramName}\n"; 
    #return unless $level > 3;
    #print ident($ident), "Name: $info->{displayName}\n"; 
    #print ident($ident), "Hint: $info->{hint}\n"; 
    my @flags = opt_flags($info->{flags});
    #print ident($ident), "Flags: @flags\n" if @flags > 0;
    #print ident($ident), "Type: ", opt_type($info->{type}), "\n";
    #print ident($ident), "Default: $info->{defaultValue}\n";
    push @comments, "    default: $info->{defaultValue}" if defined $info->{defaultValue};    
    my $c1 = display_range($info->{dataSet}, $info->{type}, $ident+1) if ($info->{type} == $TA_OptInput_RealRange) || ($info->{type} == $TA_OptInput_IntegerRange);    
    push @comments, "    valid range: $c1" if defined $c1;
    my $c2 = display_list($info->{dataSet}, $ident+1) if ($info->{type} == $TA_OptInput_RealList) || ($info->{type} == $TA_OptInput_IntegerList);
    push @comments, "    valid values: $c2" if defined $c2;
    return \@params, \@comments;
}

sub display_outpar {
    my ($fh, $i, $ident) = @_;
    my @returnss;
    my @comments;
    my $info = $fh->GetOutputParameterInfo($i);
    if (out_type($info->{type}) eq 'TA_Output_Real') {
      push @returnss, '$'.$info->{paramName};
      push @comments, 'returns: $'.$info->{paramName}.' - reference to real values array';
    }
    elsif (out_type($info->{type}) eq 'TA_Output_Integer') {
      push @returnss, '$'.$info->{paramName};
      push @comments, 'returns: $'.$info->{paramName}.' - reference to integer values array';
    }
    else {
      die "OUTPAR.ERROR: paramname=",$info->{paramName},"\n","intype=",out_type($info->{type}),"\n";
    }
    #print ident($ident++), "Output: $info->{paramName}\n"; 
    #return unless $level > 3;
    my @flags = out_flags($info->{flags});
    #print( ident($ident), "Flags: @flags\n") if @flags > 0;
    #print ident($ident), "Type: ", out_type($info->{type}), "\n";
    return \@returnss, \@comments;
}

open PODFILE, '>', 'tmp.pod';

print PODFILE <<'MARKER';
=head1 NAME

Finance::TA - Perl wrapper for Technical Analysis Library (http://ta-lib.org)

=head1 VERSION

Version 0.4.0

=head1 DESCRIPTION

L<TA-Lib|"http://ta-lib.org"> comprise of multi-platform tools for market analysis. TA-Lib is widely used
by trading software developers requiring to perform technical analysis of financial market data.
It includes approx 200 indicators such as ADX, MACD, RSI, Stochastic, Bollinger Bands etc.

Perl bindings for TA-Lib are more or less 1:1 wrapper around the TA-Lib's C API functions.

=head1 SYNOPSIS

 my @series = ('91.500000','94.815000','94.375000','95.095000','93.780000',
               '94.625000','92.530000','92.750000','90.315000','92.470000');
 my ($retCode, $begIdx, $result) = TA_MAX(0, $#series, \@series, 4);

General calling convention - let us have:

  ($retCode, $begIdx, $outReal) = TA_MAX($startIdx, $endIdx, \@inReal, $optInTimePeriod);

The first two params C<$startIdx> and C<$endIdxReturn> are common for all TA functions, they follow the original API which means:

=over

=item * B<$startIdx> start index for input data - most likely it sould be C<0>

=item * B<$endIdxReturn> end index for input data - most likely it sould be C<$#inReal>

=back

Return values C<$retCode> and C<$begIdx> are common for all TA functions, they follow the original API which means:

=over

=item * B<$retCode> should return C<$TA_SUCCESS> on success

=item * B<$begIdx> is expected to be 0, it is an index to C<@$outReal> array point to the beginning of the output data

=back
 
=head1 SUBROUTINES/METHODS

=head2 Version related functions

 use Finance::TA;
 print "TA_GetVersionString = ", TA_GetVersionString(), "\n";
 print "TA_GetVersionMajor  = ", TA_GetVersionMajor(), "\n";
 print "TA_GetVersionMinor  = ", TA_GetVersionMinor(), "\n";
 print "TA_GetVersionBuild  = ", TA_GetVersionBuild(), "\n";
 print "TA_GetVersionDate   = ", TA_GetVersionDate(), "\n";
 print "TA_GetVersionTime   = ", TA_GetVersionTime(), "\n";

MARKER

@groups = TA_GroupTable();
shift @groups;

foreach $group (@groups) {
    print PODFILE "\n=head2 Group: $group\n\n";
    #next unless $level > 1;
    #print "=" x 70, "\n";
    @functions = TA_FuncTable($group);
    shift @functions;
    foreach $function (@functions) {
        $fh = new TA_FuncHandle($function);
        $fi = $fh->GetFuncInfo();
        #next unless $level > 2;
        local $" = ' | ';
        my @fflags = func_flags($fi->{flags});
	my @rr;
	my @pp;
	my @cc;
        for ($i = 0; $i < $fi->{nbInput};  $i++) {
            my ($p, $c) = display_inpar($fh, $i, 2);
#	    pp $p; pp $c;
	    push @pp, @$p;
	    push @cc, @$c;
        }
        for ($i = 0; $i < $fi->{nbOptInput};  $i++) {
            my ($p, $c) = display_optpar($fh, $i, 2);
#	    pp $p; pp $c;
	    push @pp, @$p;
	    push @cc, @$c;
        }
        for ($i = 0; $i < $fi->{nbOutput};  $i++) {
            my ($r, $c) = display_outpar($fh, $i, 2);
#	    pp $r; pp $c;
	    push @rr, @$r;
	    push @cc, @$c;
        }
	
	print PODFILE "=head3 TA_$function ($fi->{hint})\n\n";
	unshift @rr, qw/$retCode $begIdx/;
	unshift @pp, qw/$startIdx $endIdx/;
	if (scalar(@rr) == 1) {
	  print PODFILE " $rr[0] = TA_$function";
	}
	elsif (scalar(@rr) > 1) {
	  print PODFILE " (" . join(', ', @rr) . ") = TA_$function";
	}
	else {
	  die "FATAL: rr.size=".scalar(@rr);
	}
	print PODFILE "(" . join(', ', @pp) . ");\n";
	print PODFILE " \n";
	print PODFILE " # $_\n" for (@cc);
	print PODFILE "\n\n";
    }
}

print PODFILE <<'MARKER'
=head1 LICENSE AND COPYRIGHT

 TA-LIB Copyright (c) 1999-2011
 All rights reserved.

 Redistribution and use in source and binary forms, with or
 without modification, are permitted provided that the following
 conditions are met:

 - Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

 - Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in
   the documentation and/or other materials provided with the
   distribution.

 - Neither name of author nor the names of its contributors
   may be used to endorse or promote products derived from this
   software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 REGENTS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
MARKER
