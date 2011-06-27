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

Version 0.3.0

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

=item * B<$endIdx> end index for input data - most likely it sould be C<$#inReal> (the last index of C<@inReal>)

=back

Return values C<$retCode> and C<$begIdx> are common for all TA functions, they follow the original API which means:

=over

=item * B<$retCode> - return code of the function

 #valid $retCode values
 #  $TA_SUCCESS
 #  $TA_LIB_NOT_INITIALIZE
 #  $TA_BAD_PARAM
 #  $TA_ALLOC_ERR
 #  $TA_GROUP_NOT_FOUND
 #  $TA_FUNC_NOT_FOUND
 #  $TA_INVALID_HANDLE
 #  $TA_INVALID_PARAM_HOLDER
 #  $TA_INVALID_PARAM_HOLDER_TYPE
 #  $TA_INVALID_PARAM_FUNCTION
 #  $TA_INPUT_NOT_ALL_INITIALIZE
 #  $TA_OUTPUT_NOT_ALL_INITIALIZE
 #  $TA_OUT_OF_RANGE_START_INDEX
 #  $TA_OUT_OF_RANGE_END_INDEX
 #  $TA_INVALID_LIST_TYPE
 #  $TA_BAD_OBJECT
 #  $TA_NOT_SUPPORTED
 #  $TA_INTERNAL_ERROR
 #  $TA_UNKNOWN_ERR

=item * B<$begIdx> is expected to be 0; it is an index to C<@$outReal> array, it points to the beginning of the output data

=back

=head1 INSTALLATION

You need to have ta-lib installed on your system in order to install Finance::TA perl module.

Finance::TA module checks during its installation (in given order):

=over

=item * Environment variables C<TALIB_CFLAGS> and C<TALIB_LIBS>

=item * Config script C<ta-lib-config --cflags> and C<ta-lib-config --libs>

=back

=head1 SUBROUTINES/METHODS

=head2 Version Related Functions

 use Finance::TA;
 print "TA_GetVersionString = ", TA_GetVersionString(), "\n";
 print "TA_GetVersionMajor  = ", TA_GetVersionMajor(), "\n";
 print "TA_GetVersionMinor  = ", TA_GetVersionMinor(), "\n";
 print "TA_GetVersionBuild  = ", TA_GetVersionBuild(), "\n";
 print "TA_GetVersionDate   = ", TA_GetVersionDate(), "\n";
 print "TA_GetVersionTime   = ", TA_GetVersionTime(), "\n";

Prints something like:

 TA_GetVersionString = 0.4.0 (Jun 20 2011 08:34:04)
 TA_GetVersionMajor  = 0
 TA_GetVersionMinor  = 4
 TA_GetVersionBuild  = 0 
 TA_GetVersionDate   = Jun 20 2011
 TA_GetVersionTime   = 08:34:04
 
=head2 Special Helper Functions

Some TA functions takes a certain amount of input data
before stabilizing and outputing meaningful data. This is
a behavior pertaining to the algo of some TA functions and
is not particular to the TA-Lib implementation.
TA-Lib allows you to automatically strip off these unstabl
data from your output and from any internal processing.

 $retCode = TA_SetUnstablePeriod($function_id, $unstablePeriod);
 $period = TA_GetUnstablePeriod($function_id);
 
 #valid $function_id values
 #  $TA_FUNC_UNST_ADX
 #  $TA_FUNC_UNST_ADXR
 #  $TA_FUNC_UNST_ATR
 #  $TA_FUNC_UNST_CMO
 #  $TA_FUNC_UNST_DX
 #  $TA_FUNC_UNST_EMA
 #  $TA_FUNC_UNST_HT_DCPERIOD
 #  $TA_FUNC_UNST_HT_DCPHASE
 #  $TA_FUNC_UNST_HT_PHASOR
 #  $TA_FUNC_UNST_HT_SINE
 #  $TA_FUNC_UNST_HT_TRENDLINE
 #  $TA_FUNC_UNST_HT_TRENDMODE
 #  $TA_FUNC_UNST_KAMA
 #  $TA_FUNC_UNST_MAMA
 #  $TA_FUNC_UNST_MFI
 #  $TA_FUNC_UNST_MINUS_DI
 #  $TA_FUNC_UNST_MINUS_DM
 #  $TA_FUNC_UNST_NATR
 #  $TA_FUNC_UNST_PLUS_DI
 #  $TA_FUNC_UNST_PLUS_DM
 #  $TA_FUNC_UNST_RSI
 #  $TA_FUNC_UNST_STOCHRSI
 #  $TA_FUNC_UNST_T3
 #  $TA_FUNC_UNST_ALL
 #  $TA_FUNC_UNST_NONE

You can change slightly the behavior of the TA functions
by requesting compatibiliy with some existing software.
By default, the behavior is as close as the original 
author of the TA functions intend it to be.

 $retCode = TA_SetCompatibility($compatibility);
 $compatibility = TA_GetCompatibility();
 
 #valid $compatibility values
 #  $TA_COMPATIBILITY_DEFAULT
 #  $TA_COMPATIBILITY_METASTOCK

Because candlestick patterns are subjective, it is necessary 
to allow the user to specify what should be the meaning of 
'long body', 'short shadows', etc.
Call TA_SetCandleSettings to set that when comparing a candle 
basing on settingType it must be compared with the average 
of the last avgPeriod candles' rangeType multiplied by factor.
This setting is valid until TA_RestoreCandleDefaultSettings is called

 $retCode = TA_SetCandleSettings($settingType, $rangeType, $avgPeriod, $factor);
 $retCode = TA_RestoreCandleDefaultSettings($settingType); 
 
 #valid $settingType values
 #  $TA_BodyLong
 #  $TA_BodyVeryLong
 #  $TA_BodyShort
 #  $TA_BodyDoji
 #  $TA_ShadowLong
 #  $TA_ShadowVeryLong
 #  $TA_ShadowShort
 #  $TA_ShadowVeryShort
 #  $TA_Near
 #  $TA_Far
 #  $TA_Equal
 #  $TA_AllCandleSettings
 
 #valid $rangeType values
 #  $TA_RangeType_RealBody
 #  $TA_RangeType_HighLow
 #  $TA_RangeType_Shadows

End-user can get additional information related to a TA_RetCode
 
 # let us have $retCode = return code of any TA_* function
 my $rci = TA_RetCodeInfo->new;
 TA_SetRetCodeInfo($retCode, $rci);
 warn "enumStr=", $rci->{enumStr}, "\n";
 warn "infoStr=", $rci->{infoStr}, "\n";

TA_Initialize() initialize the ressources used by TA-Lib.
TA_Shutdown() allows to free all ressources used by TA-Lib.

There is no need to call TA_Initialize.  The module initializes itself on
'use' with default parameters.  Call TA_Initialize if you need to provide
your own init params. There is no need to call TA_Shutdown, ever. The module 
shuts itself down on 'END'. Calling TA_Initialize on already initialized library
automatically invokes TA_Shutdown first. If you call TA_Shutdown, make
sure that there are no defined "TA" variables around. Some objects make
calls to TA-LIB in their destructors.

 TA_Initialize();
 TA_Shutdown();
 
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

 TA-LIB Copyright (c) 1999-2007, Mario Fortier
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
