# This file was automatically generated by SWIG (http://www.swig.org).
# Version 1.3.40
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Finance::TA;
use base qw(Exporter);
use base qw(DynaLoader);
package Finance::TAc;
bootstrap Finance::TA;
package Finance::TA;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Finance::TA;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package Finance::TA;

*TA_GetVersionString = *Finance::TAc::TA_GetVersionString;
*TA_GetVersionMajor = *Finance::TAc::TA_GetVersionMajor;
*TA_GetVersionMinor = *Finance::TAc::TA_GetVersionMinor;
*TA_GetVersionBuild = *Finance::TAc::TA_GetVersionBuild;
*TA_GetVersionDate = *Finance::TAc::TA_GetVersionDate;
*TA_GetVersionTime = *Finance::TAc::TA_GetVersionTime;
*TA_SetRetCodeInfo = *Finance::TAc::TA_SetRetCodeInfo;
*TA_Initialize = *Finance::TAc::TA_Initialize;
*TA_Shutdown = *Finance::TAc::TA_Shutdown;
*TA_ACOS = *Finance::TAc::TA_ACOS;
*TA_ACOS_Lookback = *Finance::TAc::TA_ACOS_Lookback;
*TA_AD = *Finance::TAc::TA_AD;
*TA_AD_Lookback = *Finance::TAc::TA_AD_Lookback;
*TA_ADD = *Finance::TAc::TA_ADD;
*TA_ADD_Lookback = *Finance::TAc::TA_ADD_Lookback;
*TA_ADOSC = *Finance::TAc::TA_ADOSC;
*TA_ADOSC_Lookback = *Finance::TAc::TA_ADOSC_Lookback;
*TA_ADX = *Finance::TAc::TA_ADX;
*TA_ADX_Lookback = *Finance::TAc::TA_ADX_Lookback;
*TA_ADXR = *Finance::TAc::TA_ADXR;
*TA_ADXR_Lookback = *Finance::TAc::TA_ADXR_Lookback;
*TA_APO = *Finance::TAc::TA_APO;
*TA_APO_Lookback = *Finance::TAc::TA_APO_Lookback;
*TA_AROON = *Finance::TAc::TA_AROON;
*TA_AROON_Lookback = *Finance::TAc::TA_AROON_Lookback;
*TA_AROONOSC = *Finance::TAc::TA_AROONOSC;
*TA_AROONOSC_Lookback = *Finance::TAc::TA_AROONOSC_Lookback;
*TA_ASIN = *Finance::TAc::TA_ASIN;
*TA_ASIN_Lookback = *Finance::TAc::TA_ASIN_Lookback;
*TA_ATAN = *Finance::TAc::TA_ATAN;
*TA_ATAN_Lookback = *Finance::TAc::TA_ATAN_Lookback;
*TA_ATR = *Finance::TAc::TA_ATR;
*TA_ATR_Lookback = *Finance::TAc::TA_ATR_Lookback;
*TA_AVGPRICE = *Finance::TAc::TA_AVGPRICE;
*TA_AVGPRICE_Lookback = *Finance::TAc::TA_AVGPRICE_Lookback;
*TA_BBANDS = *Finance::TAc::TA_BBANDS;
*TA_BBANDS_Lookback = *Finance::TAc::TA_BBANDS_Lookback;
*TA_BETA = *Finance::TAc::TA_BETA;
*TA_BETA_Lookback = *Finance::TAc::TA_BETA_Lookback;
*TA_BOP = *Finance::TAc::TA_BOP;
*TA_BOP_Lookback = *Finance::TAc::TA_BOP_Lookback;
*TA_CCI = *Finance::TAc::TA_CCI;
*TA_CCI_Lookback = *Finance::TAc::TA_CCI_Lookback;
*TA_CDL2CROWS = *Finance::TAc::TA_CDL2CROWS;
*TA_CDL2CROWS_Lookback = *Finance::TAc::TA_CDL2CROWS_Lookback;
*TA_CDL3BLACKCROWS = *Finance::TAc::TA_CDL3BLACKCROWS;
*TA_CDL3BLACKCROWS_Lookback = *Finance::TAc::TA_CDL3BLACKCROWS_Lookback;
*TA_CDL3INSIDE = *Finance::TAc::TA_CDL3INSIDE;
*TA_CDL3INSIDE_Lookback = *Finance::TAc::TA_CDL3INSIDE_Lookback;
*TA_CDL3LINESTRIKE = *Finance::TAc::TA_CDL3LINESTRIKE;
*TA_CDL3LINESTRIKE_Lookback = *Finance::TAc::TA_CDL3LINESTRIKE_Lookback;
*TA_CDL3OUTSIDE = *Finance::TAc::TA_CDL3OUTSIDE;
*TA_CDL3OUTSIDE_Lookback = *Finance::TAc::TA_CDL3OUTSIDE_Lookback;
*TA_CDL3STARSINSOUTH = *Finance::TAc::TA_CDL3STARSINSOUTH;
*TA_CDL3STARSINSOUTH_Lookback = *Finance::TAc::TA_CDL3STARSINSOUTH_Lookback;
*TA_CDL3WHITESOLDIERS = *Finance::TAc::TA_CDL3WHITESOLDIERS;
*TA_CDL3WHITESOLDIERS_Lookback = *Finance::TAc::TA_CDL3WHITESOLDIERS_Lookback;
*TA_CDLABANDONEDBABY = *Finance::TAc::TA_CDLABANDONEDBABY;
*TA_CDLABANDONEDBABY_Lookback = *Finance::TAc::TA_CDLABANDONEDBABY_Lookback;
*TA_CDLADVANCEBLOCK = *Finance::TAc::TA_CDLADVANCEBLOCK;
*TA_CDLADVANCEBLOCK_Lookback = *Finance::TAc::TA_CDLADVANCEBLOCK_Lookback;
*TA_CDLBELTHOLD = *Finance::TAc::TA_CDLBELTHOLD;
*TA_CDLBELTHOLD_Lookback = *Finance::TAc::TA_CDLBELTHOLD_Lookback;
*TA_CDLBREAKAWAY = *Finance::TAc::TA_CDLBREAKAWAY;
*TA_CDLBREAKAWAY_Lookback = *Finance::TAc::TA_CDLBREAKAWAY_Lookback;
*TA_CDLCLOSINGMARUBOZU = *Finance::TAc::TA_CDLCLOSINGMARUBOZU;
*TA_CDLCLOSINGMARUBOZU_Lookback = *Finance::TAc::TA_CDLCLOSINGMARUBOZU_Lookback;
*TA_CDLCONCEALBABYSWALL = *Finance::TAc::TA_CDLCONCEALBABYSWALL;
*TA_CDLCONCEALBABYSWALL_Lookback = *Finance::TAc::TA_CDLCONCEALBABYSWALL_Lookback;
*TA_CDLCOUNTERATTACK = *Finance::TAc::TA_CDLCOUNTERATTACK;
*TA_CDLCOUNTERATTACK_Lookback = *Finance::TAc::TA_CDLCOUNTERATTACK_Lookback;
*TA_CDLDARKCLOUDCOVER = *Finance::TAc::TA_CDLDARKCLOUDCOVER;
*TA_CDLDARKCLOUDCOVER_Lookback = *Finance::TAc::TA_CDLDARKCLOUDCOVER_Lookback;
*TA_CDLDOJI = *Finance::TAc::TA_CDLDOJI;
*TA_CDLDOJI_Lookback = *Finance::TAc::TA_CDLDOJI_Lookback;
*TA_CDLDOJISTAR = *Finance::TAc::TA_CDLDOJISTAR;
*TA_CDLDOJISTAR_Lookback = *Finance::TAc::TA_CDLDOJISTAR_Lookback;
*TA_CDLDRAGONFLYDOJI = *Finance::TAc::TA_CDLDRAGONFLYDOJI;
*TA_CDLDRAGONFLYDOJI_Lookback = *Finance::TAc::TA_CDLDRAGONFLYDOJI_Lookback;
*TA_CDLENGULFING = *Finance::TAc::TA_CDLENGULFING;
*TA_CDLENGULFING_Lookback = *Finance::TAc::TA_CDLENGULFING_Lookback;
*TA_CDLEVENINGDOJISTAR = *Finance::TAc::TA_CDLEVENINGDOJISTAR;
*TA_CDLEVENINGDOJISTAR_Lookback = *Finance::TAc::TA_CDLEVENINGDOJISTAR_Lookback;
*TA_CDLEVENINGSTAR = *Finance::TAc::TA_CDLEVENINGSTAR;
*TA_CDLEVENINGSTAR_Lookback = *Finance::TAc::TA_CDLEVENINGSTAR_Lookback;
*TA_CDLGAPSIDESIDEWHITE = *Finance::TAc::TA_CDLGAPSIDESIDEWHITE;
*TA_CDLGAPSIDESIDEWHITE_Lookback = *Finance::TAc::TA_CDLGAPSIDESIDEWHITE_Lookback;
*TA_CDLGRAVESTONEDOJI = *Finance::TAc::TA_CDLGRAVESTONEDOJI;
*TA_CDLGRAVESTONEDOJI_Lookback = *Finance::TAc::TA_CDLGRAVESTONEDOJI_Lookback;
*TA_CDLHAMMER = *Finance::TAc::TA_CDLHAMMER;
*TA_CDLHAMMER_Lookback = *Finance::TAc::TA_CDLHAMMER_Lookback;
*TA_CDLHANGINGMAN = *Finance::TAc::TA_CDLHANGINGMAN;
*TA_CDLHANGINGMAN_Lookback = *Finance::TAc::TA_CDLHANGINGMAN_Lookback;
*TA_CDLHARAMI = *Finance::TAc::TA_CDLHARAMI;
*TA_CDLHARAMI_Lookback = *Finance::TAc::TA_CDLHARAMI_Lookback;
*TA_CDLHARAMICROSS = *Finance::TAc::TA_CDLHARAMICROSS;
*TA_CDLHARAMICROSS_Lookback = *Finance::TAc::TA_CDLHARAMICROSS_Lookback;
*TA_CDLHIGHWAVE = *Finance::TAc::TA_CDLHIGHWAVE;
*TA_CDLHIGHWAVE_Lookback = *Finance::TAc::TA_CDLHIGHWAVE_Lookback;
*TA_CDLHIKKAKE = *Finance::TAc::TA_CDLHIKKAKE;
*TA_CDLHIKKAKE_Lookback = *Finance::TAc::TA_CDLHIKKAKE_Lookback;
*TA_CDLHIKKAKEMOD = *Finance::TAc::TA_CDLHIKKAKEMOD;
*TA_CDLHIKKAKEMOD_Lookback = *Finance::TAc::TA_CDLHIKKAKEMOD_Lookback;
*TA_CDLHOMINGPIGEON = *Finance::TAc::TA_CDLHOMINGPIGEON;
*TA_CDLHOMINGPIGEON_Lookback = *Finance::TAc::TA_CDLHOMINGPIGEON_Lookback;
*TA_CDLIDENTICAL3CROWS = *Finance::TAc::TA_CDLIDENTICAL3CROWS;
*TA_CDLIDENTICAL3CROWS_Lookback = *Finance::TAc::TA_CDLIDENTICAL3CROWS_Lookback;
*TA_CDLINNECK = *Finance::TAc::TA_CDLINNECK;
*TA_CDLINNECK_Lookback = *Finance::TAc::TA_CDLINNECK_Lookback;
*TA_CDLINVERTEDHAMMER = *Finance::TAc::TA_CDLINVERTEDHAMMER;
*TA_CDLINVERTEDHAMMER_Lookback = *Finance::TAc::TA_CDLINVERTEDHAMMER_Lookback;
*TA_CDLKICKING = *Finance::TAc::TA_CDLKICKING;
*TA_CDLKICKING_Lookback = *Finance::TAc::TA_CDLKICKING_Lookback;
*TA_CDLKICKINGBYLENGTH = *Finance::TAc::TA_CDLKICKINGBYLENGTH;
*TA_CDLKICKINGBYLENGTH_Lookback = *Finance::TAc::TA_CDLKICKINGBYLENGTH_Lookback;
*TA_CDLLADDERBOTTOM = *Finance::TAc::TA_CDLLADDERBOTTOM;
*TA_CDLLADDERBOTTOM_Lookback = *Finance::TAc::TA_CDLLADDERBOTTOM_Lookback;
*TA_CDLLONGLEGGEDDOJI = *Finance::TAc::TA_CDLLONGLEGGEDDOJI;
*TA_CDLLONGLEGGEDDOJI_Lookback = *Finance::TAc::TA_CDLLONGLEGGEDDOJI_Lookback;
*TA_CDLLONGLINE = *Finance::TAc::TA_CDLLONGLINE;
*TA_CDLLONGLINE_Lookback = *Finance::TAc::TA_CDLLONGLINE_Lookback;
*TA_CDLMARUBOZU = *Finance::TAc::TA_CDLMARUBOZU;
*TA_CDLMARUBOZU_Lookback = *Finance::TAc::TA_CDLMARUBOZU_Lookback;
*TA_CDLMATCHINGLOW = *Finance::TAc::TA_CDLMATCHINGLOW;
*TA_CDLMATCHINGLOW_Lookback = *Finance::TAc::TA_CDLMATCHINGLOW_Lookback;
*TA_CDLMATHOLD = *Finance::TAc::TA_CDLMATHOLD;
*TA_CDLMATHOLD_Lookback = *Finance::TAc::TA_CDLMATHOLD_Lookback;
*TA_CDLMORNINGDOJISTAR = *Finance::TAc::TA_CDLMORNINGDOJISTAR;
*TA_CDLMORNINGDOJISTAR_Lookback = *Finance::TAc::TA_CDLMORNINGDOJISTAR_Lookback;
*TA_CDLMORNINGSTAR = *Finance::TAc::TA_CDLMORNINGSTAR;
*TA_CDLMORNINGSTAR_Lookback = *Finance::TAc::TA_CDLMORNINGSTAR_Lookback;
*TA_CDLONNECK = *Finance::TAc::TA_CDLONNECK;
*TA_CDLONNECK_Lookback = *Finance::TAc::TA_CDLONNECK_Lookback;
*TA_CDLPIERCING = *Finance::TAc::TA_CDLPIERCING;
*TA_CDLPIERCING_Lookback = *Finance::TAc::TA_CDLPIERCING_Lookback;
*TA_CDLRICKSHAWMAN = *Finance::TAc::TA_CDLRICKSHAWMAN;
*TA_CDLRICKSHAWMAN_Lookback = *Finance::TAc::TA_CDLRICKSHAWMAN_Lookback;
*TA_CDLRISEFALL3METHODS = *Finance::TAc::TA_CDLRISEFALL3METHODS;
*TA_CDLRISEFALL3METHODS_Lookback = *Finance::TAc::TA_CDLRISEFALL3METHODS_Lookback;
*TA_CDLSEPARATINGLINES = *Finance::TAc::TA_CDLSEPARATINGLINES;
*TA_CDLSEPARATINGLINES_Lookback = *Finance::TAc::TA_CDLSEPARATINGLINES_Lookback;
*TA_CDLSHOOTINGSTAR = *Finance::TAc::TA_CDLSHOOTINGSTAR;
*TA_CDLSHOOTINGSTAR_Lookback = *Finance::TAc::TA_CDLSHOOTINGSTAR_Lookback;
*TA_CDLSHORTLINE = *Finance::TAc::TA_CDLSHORTLINE;
*TA_CDLSHORTLINE_Lookback = *Finance::TAc::TA_CDLSHORTLINE_Lookback;
*TA_CDLSPINNINGTOP = *Finance::TAc::TA_CDLSPINNINGTOP;
*TA_CDLSPINNINGTOP_Lookback = *Finance::TAc::TA_CDLSPINNINGTOP_Lookback;
*TA_CDLSTALLEDPATTERN = *Finance::TAc::TA_CDLSTALLEDPATTERN;
*TA_CDLSTALLEDPATTERN_Lookback = *Finance::TAc::TA_CDLSTALLEDPATTERN_Lookback;
*TA_CDLSTICKSANDWICH = *Finance::TAc::TA_CDLSTICKSANDWICH;
*TA_CDLSTICKSANDWICH_Lookback = *Finance::TAc::TA_CDLSTICKSANDWICH_Lookback;
*TA_CDLTAKURI = *Finance::TAc::TA_CDLTAKURI;
*TA_CDLTAKURI_Lookback = *Finance::TAc::TA_CDLTAKURI_Lookback;
*TA_CDLTASUKIGAP = *Finance::TAc::TA_CDLTASUKIGAP;
*TA_CDLTASUKIGAP_Lookback = *Finance::TAc::TA_CDLTASUKIGAP_Lookback;
*TA_CDLTHRUSTING = *Finance::TAc::TA_CDLTHRUSTING;
*TA_CDLTHRUSTING_Lookback = *Finance::TAc::TA_CDLTHRUSTING_Lookback;
*TA_CDLTRISTAR = *Finance::TAc::TA_CDLTRISTAR;
*TA_CDLTRISTAR_Lookback = *Finance::TAc::TA_CDLTRISTAR_Lookback;
*TA_CDLUNIQUE3RIVER = *Finance::TAc::TA_CDLUNIQUE3RIVER;
*TA_CDLUNIQUE3RIVER_Lookback = *Finance::TAc::TA_CDLUNIQUE3RIVER_Lookback;
*TA_CDLUPSIDEGAP2CROWS = *Finance::TAc::TA_CDLUPSIDEGAP2CROWS;
*TA_CDLUPSIDEGAP2CROWS_Lookback = *Finance::TAc::TA_CDLUPSIDEGAP2CROWS_Lookback;
*TA_CDLXSIDEGAP3METHODS = *Finance::TAc::TA_CDLXSIDEGAP3METHODS;
*TA_CDLXSIDEGAP3METHODS_Lookback = *Finance::TAc::TA_CDLXSIDEGAP3METHODS_Lookback;
*TA_CEIL = *Finance::TAc::TA_CEIL;
*TA_CEIL_Lookback = *Finance::TAc::TA_CEIL_Lookback;
*TA_CMO = *Finance::TAc::TA_CMO;
*TA_CMO_Lookback = *Finance::TAc::TA_CMO_Lookback;
*TA_CORREL = *Finance::TAc::TA_CORREL;
*TA_CORREL_Lookback = *Finance::TAc::TA_CORREL_Lookback;
*TA_COS = *Finance::TAc::TA_COS;
*TA_COS_Lookback = *Finance::TAc::TA_COS_Lookback;
*TA_COSH = *Finance::TAc::TA_COSH;
*TA_COSH_Lookback = *Finance::TAc::TA_COSH_Lookback;
*TA_DEMA = *Finance::TAc::TA_DEMA;
*TA_DEMA_Lookback = *Finance::TAc::TA_DEMA_Lookback;
*TA_DIV = *Finance::TAc::TA_DIV;
*TA_DIV_Lookback = *Finance::TAc::TA_DIV_Lookback;
*TA_DX = *Finance::TAc::TA_DX;
*TA_DX_Lookback = *Finance::TAc::TA_DX_Lookback;
*TA_EMA = *Finance::TAc::TA_EMA;
*TA_EMA_Lookback = *Finance::TAc::TA_EMA_Lookback;
*TA_EXP = *Finance::TAc::TA_EXP;
*TA_EXP_Lookback = *Finance::TAc::TA_EXP_Lookback;
*TA_FLOOR = *Finance::TAc::TA_FLOOR;
*TA_FLOOR_Lookback = *Finance::TAc::TA_FLOOR_Lookback;
*TA_HT_DCPERIOD = *Finance::TAc::TA_HT_DCPERIOD;
*TA_HT_DCPERIOD_Lookback = *Finance::TAc::TA_HT_DCPERIOD_Lookback;
*TA_HT_DCPHASE = *Finance::TAc::TA_HT_DCPHASE;
*TA_HT_DCPHASE_Lookback = *Finance::TAc::TA_HT_DCPHASE_Lookback;
*TA_HT_PHASOR = *Finance::TAc::TA_HT_PHASOR;
*TA_HT_PHASOR_Lookback = *Finance::TAc::TA_HT_PHASOR_Lookback;
*TA_HT_SINE = *Finance::TAc::TA_HT_SINE;
*TA_HT_SINE_Lookback = *Finance::TAc::TA_HT_SINE_Lookback;
*TA_HT_TRENDLINE = *Finance::TAc::TA_HT_TRENDLINE;
*TA_HT_TRENDLINE_Lookback = *Finance::TAc::TA_HT_TRENDLINE_Lookback;
*TA_HT_TRENDMODE = *Finance::TAc::TA_HT_TRENDMODE;
*TA_HT_TRENDMODE_Lookback = *Finance::TAc::TA_HT_TRENDMODE_Lookback;
*TA_KAMA = *Finance::TAc::TA_KAMA;
*TA_KAMA_Lookback = *Finance::TAc::TA_KAMA_Lookback;
*TA_LINEARREG = *Finance::TAc::TA_LINEARREG;
*TA_LINEARREG_Lookback = *Finance::TAc::TA_LINEARREG_Lookback;
*TA_LINEARREG_ANGLE = *Finance::TAc::TA_LINEARREG_ANGLE;
*TA_LINEARREG_ANGLE_Lookback = *Finance::TAc::TA_LINEARREG_ANGLE_Lookback;
*TA_LINEARREG_INTERCEPT = *Finance::TAc::TA_LINEARREG_INTERCEPT;
*TA_LINEARREG_INTERCEPT_Lookback = *Finance::TAc::TA_LINEARREG_INTERCEPT_Lookback;
*TA_LINEARREG_SLOPE = *Finance::TAc::TA_LINEARREG_SLOPE;
*TA_LINEARREG_SLOPE_Lookback = *Finance::TAc::TA_LINEARREG_SLOPE_Lookback;
*TA_LN = *Finance::TAc::TA_LN;
*TA_LN_Lookback = *Finance::TAc::TA_LN_Lookback;
*TA_LOG10 = *Finance::TAc::TA_LOG10;
*TA_LOG10_Lookback = *Finance::TAc::TA_LOG10_Lookback;
*TA_MA = *Finance::TAc::TA_MA;
*TA_MA_Lookback = *Finance::TAc::TA_MA_Lookback;
*TA_MACD = *Finance::TAc::TA_MACD;
*TA_MACD_Lookback = *Finance::TAc::TA_MACD_Lookback;
*TA_MACDEXT = *Finance::TAc::TA_MACDEXT;
*TA_MACDEXT_Lookback = *Finance::TAc::TA_MACDEXT_Lookback;
*TA_MACDFIX = *Finance::TAc::TA_MACDFIX;
*TA_MACDFIX_Lookback = *Finance::TAc::TA_MACDFIX_Lookback;
*TA_MAMA = *Finance::TAc::TA_MAMA;
*TA_MAMA_Lookback = *Finance::TAc::TA_MAMA_Lookback;
*TA_MAVP = *Finance::TAc::TA_MAVP;
*TA_MAVP_Lookback = *Finance::TAc::TA_MAVP_Lookback;
*TA_MAX = *Finance::TAc::TA_MAX;
*TA_MAX_Lookback = *Finance::TAc::TA_MAX_Lookback;
*TA_MAXINDEX = *Finance::TAc::TA_MAXINDEX;
*TA_MAXINDEX_Lookback = *Finance::TAc::TA_MAXINDEX_Lookback;
*TA_MEDPRICE = *Finance::TAc::TA_MEDPRICE;
*TA_MEDPRICE_Lookback = *Finance::TAc::TA_MEDPRICE_Lookback;
*TA_MFI = *Finance::TAc::TA_MFI;
*TA_MFI_Lookback = *Finance::TAc::TA_MFI_Lookback;
*TA_MIDPOINT = *Finance::TAc::TA_MIDPOINT;
*TA_MIDPOINT_Lookback = *Finance::TAc::TA_MIDPOINT_Lookback;
*TA_MIDPRICE = *Finance::TAc::TA_MIDPRICE;
*TA_MIDPRICE_Lookback = *Finance::TAc::TA_MIDPRICE_Lookback;
*TA_MIN = *Finance::TAc::TA_MIN;
*TA_MIN_Lookback = *Finance::TAc::TA_MIN_Lookback;
*TA_MININDEX = *Finance::TAc::TA_MININDEX;
*TA_MININDEX_Lookback = *Finance::TAc::TA_MININDEX_Lookback;
*TA_MINMAX = *Finance::TAc::TA_MINMAX;
*TA_MINMAX_Lookback = *Finance::TAc::TA_MINMAX_Lookback;
*TA_MINMAXINDEX = *Finance::TAc::TA_MINMAXINDEX;
*TA_MINMAXINDEX_Lookback = *Finance::TAc::TA_MINMAXINDEX_Lookback;
*TA_MINUS_DI = *Finance::TAc::TA_MINUS_DI;
*TA_MINUS_DI_Lookback = *Finance::TAc::TA_MINUS_DI_Lookback;
*TA_MINUS_DM = *Finance::TAc::TA_MINUS_DM;
*TA_MINUS_DM_Lookback = *Finance::TAc::TA_MINUS_DM_Lookback;
*TA_MOM = *Finance::TAc::TA_MOM;
*TA_MOM_Lookback = *Finance::TAc::TA_MOM_Lookback;
*TA_MULT = *Finance::TAc::TA_MULT;
*TA_MULT_Lookback = *Finance::TAc::TA_MULT_Lookback;
*TA_NATR = *Finance::TAc::TA_NATR;
*TA_NATR_Lookback = *Finance::TAc::TA_NATR_Lookback;
*TA_OBV = *Finance::TAc::TA_OBV;
*TA_OBV_Lookback = *Finance::TAc::TA_OBV_Lookback;
*TA_PLUS_DI = *Finance::TAc::TA_PLUS_DI;
*TA_PLUS_DI_Lookback = *Finance::TAc::TA_PLUS_DI_Lookback;
*TA_PLUS_DM = *Finance::TAc::TA_PLUS_DM;
*TA_PLUS_DM_Lookback = *Finance::TAc::TA_PLUS_DM_Lookback;
*TA_PPO = *Finance::TAc::TA_PPO;
*TA_PPO_Lookback = *Finance::TAc::TA_PPO_Lookback;
*TA_ROC = *Finance::TAc::TA_ROC;
*TA_ROC_Lookback = *Finance::TAc::TA_ROC_Lookback;
*TA_ROCP = *Finance::TAc::TA_ROCP;
*TA_ROCP_Lookback = *Finance::TAc::TA_ROCP_Lookback;
*TA_ROCR = *Finance::TAc::TA_ROCR;
*TA_ROCR_Lookback = *Finance::TAc::TA_ROCR_Lookback;
*TA_ROCR100 = *Finance::TAc::TA_ROCR100;
*TA_ROCR100_Lookback = *Finance::TAc::TA_ROCR100_Lookback;
*TA_RSI = *Finance::TAc::TA_RSI;
*TA_RSI_Lookback = *Finance::TAc::TA_RSI_Lookback;
*TA_SAR = *Finance::TAc::TA_SAR;
*TA_SAR_Lookback = *Finance::TAc::TA_SAR_Lookback;
*TA_SAREXT = *Finance::TAc::TA_SAREXT;
*TA_SAREXT_Lookback = *Finance::TAc::TA_SAREXT_Lookback;
*TA_SIN = *Finance::TAc::TA_SIN;
*TA_SIN_Lookback = *Finance::TAc::TA_SIN_Lookback;
*TA_SINH = *Finance::TAc::TA_SINH;
*TA_SINH_Lookback = *Finance::TAc::TA_SINH_Lookback;
*TA_SMA = *Finance::TAc::TA_SMA;
*TA_SMA_Lookback = *Finance::TAc::TA_SMA_Lookback;
*TA_SQRT = *Finance::TAc::TA_SQRT;
*TA_SQRT_Lookback = *Finance::TAc::TA_SQRT_Lookback;
*TA_STDDEV = *Finance::TAc::TA_STDDEV;
*TA_STDDEV_Lookback = *Finance::TAc::TA_STDDEV_Lookback;
*TA_STOCH = *Finance::TAc::TA_STOCH;
*TA_STOCH_Lookback = *Finance::TAc::TA_STOCH_Lookback;
*TA_STOCHF = *Finance::TAc::TA_STOCHF;
*TA_STOCHF_Lookback = *Finance::TAc::TA_STOCHF_Lookback;
*TA_STOCHRSI = *Finance::TAc::TA_STOCHRSI;
*TA_STOCHRSI_Lookback = *Finance::TAc::TA_STOCHRSI_Lookback;
*TA_SUB = *Finance::TAc::TA_SUB;
*TA_SUB_Lookback = *Finance::TAc::TA_SUB_Lookback;
*TA_SUM = *Finance::TAc::TA_SUM;
*TA_SUM_Lookback = *Finance::TAc::TA_SUM_Lookback;
*TA_T3 = *Finance::TAc::TA_T3;
*TA_T3_Lookback = *Finance::TAc::TA_T3_Lookback;
*TA_TAN = *Finance::TAc::TA_TAN;
*TA_TAN_Lookback = *Finance::TAc::TA_TAN_Lookback;
*TA_TANH = *Finance::TAc::TA_TANH;
*TA_TANH_Lookback = *Finance::TAc::TA_TANH_Lookback;
*TA_TEMA = *Finance::TAc::TA_TEMA;
*TA_TEMA_Lookback = *Finance::TAc::TA_TEMA_Lookback;
*TA_TRANGE = *Finance::TAc::TA_TRANGE;
*TA_TRANGE_Lookback = *Finance::TAc::TA_TRANGE_Lookback;
*TA_TRIMA = *Finance::TAc::TA_TRIMA;
*TA_TRIMA_Lookback = *Finance::TAc::TA_TRIMA_Lookback;
*TA_TRIX = *Finance::TAc::TA_TRIX;
*TA_TRIX_Lookback = *Finance::TAc::TA_TRIX_Lookback;
*TA_TSF = *Finance::TAc::TA_TSF;
*TA_TSF_Lookback = *Finance::TAc::TA_TSF_Lookback;
*TA_TYPPRICE = *Finance::TAc::TA_TYPPRICE;
*TA_TYPPRICE_Lookback = *Finance::TAc::TA_TYPPRICE_Lookback;
*TA_ULTOSC = *Finance::TAc::TA_ULTOSC;
*TA_ULTOSC_Lookback = *Finance::TAc::TA_ULTOSC_Lookback;
*TA_VAR = *Finance::TAc::TA_VAR;
*TA_VAR_Lookback = *Finance::TAc::TA_VAR_Lookback;
*TA_WCLPRICE = *Finance::TAc::TA_WCLPRICE;
*TA_WCLPRICE_Lookback = *Finance::TAc::TA_WCLPRICE_Lookback;
*TA_WILLR = *Finance::TAc::TA_WILLR;
*TA_WILLR_Lookback = *Finance::TAc::TA_WILLR_Lookback;
*TA_WMA = *Finance::TAc::TA_WMA;
*TA_WMA_Lookback = *Finance::TAc::TA_WMA_Lookback;
*TA_SetUnstablePeriod = *Finance::TAc::TA_SetUnstablePeriod;
*TA_GetUnstablePeriod = *Finance::TAc::TA_GetUnstablePeriod;
*TA_SetCompatibility = *Finance::TAc::TA_SetCompatibility;
*TA_GetCompatibility = *Finance::TAc::TA_GetCompatibility;
*TA_SetCandleSettings = *Finance::TAc::TA_SetCandleSettings;
*TA_RestoreCandleDefaultSettings = *Finance::TAc::TA_RestoreCandleDefaultSettings;
*TA_GroupTable = *Finance::TAc::TA_GroupTable;
*TA_FuncTable = *Finance::TAc::TA_FuncTable;
*TA_GetFuncHandle = *Finance::TAc::TA_GetFuncHandle;
*TA_GetFuncInfo = *Finance::TAc::TA_GetFuncInfo;
*TA_GetInputParameterInfo = *Finance::TAc::TA_GetInputParameterInfo;
*TA_GetOptInputParameterInfo = *Finance::TAc::TA_GetOptInputParameterInfo;
*TA_GetOutputParameterInfo = *Finance::TAc::TA_GetOutputParameterInfo;
*TA_FunctionDescriptionXML = *Finance::TAc::TA_FunctionDescriptionXML;

############# Class : Finance::TA::TA_RetCodeInfo ##############

package Finance::TA::TA_RetCodeInfo;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_enumStr_get = *Finance::TAc::TA_RetCodeInfo_enumStr_get;
*swig_enumStr_set = *Finance::TAc::TA_RetCodeInfo_enumStr_set;
*swig_infoStr_get = *Finance::TAc::TA_RetCodeInfo_infoStr_get;
*swig_infoStr_set = *Finance::TAc::TA_RetCodeInfo_infoStr_set;
sub new {
    my $pkg = shift;
    my $self = Finance::TAc::new_TA_RetCodeInfo(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Finance::TAc::delete_TA_RetCodeInfo($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_FuncHandle ##############

package Finance::TA::TA_FuncHandle;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_FuncInfo ##############

package Finance::TA::TA_FuncInfo;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_name_get = *Finance::TAc::TA_FuncInfo_name_get;
*swig_name_set = *Finance::TAc::TA_FuncInfo_name_set;
*swig_group_get = *Finance::TAc::TA_FuncInfo_group_get;
*swig_group_set = *Finance::TAc::TA_FuncInfo_group_set;
*swig_hint_get = *Finance::TAc::TA_FuncInfo_hint_get;
*swig_hint_set = *Finance::TAc::TA_FuncInfo_hint_set;
*swig_camelCaseName_get = *Finance::TAc::TA_FuncInfo_camelCaseName_get;
*swig_camelCaseName_set = *Finance::TAc::TA_FuncInfo_camelCaseName_set;
*swig_flags_get = *Finance::TAc::TA_FuncInfo_flags_get;
*swig_flags_set = *Finance::TAc::TA_FuncInfo_flags_set;
*swig_nbInput_get = *Finance::TAc::TA_FuncInfo_nbInput_get;
*swig_nbInput_set = *Finance::TAc::TA_FuncInfo_nbInput_set;
*swig_nbOptInput_get = *Finance::TAc::TA_FuncInfo_nbOptInput_get;
*swig_nbOptInput_set = *Finance::TAc::TA_FuncInfo_nbOptInput_set;
*swig_nbOutput_get = *Finance::TAc::TA_FuncInfo_nbOutput_get;
*swig_nbOutput_set = *Finance::TAc::TA_FuncInfo_nbOutput_set;
*swig_handle_get = *Finance::TAc::TA_FuncInfo_handle_get;
*swig_handle_set = *Finance::TAc::TA_FuncInfo_handle_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_RealRange ##############

package Finance::TA::TA_RealRange;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_min_get = *Finance::TAc::TA_RealRange_min_get;
*swig_min_set = *Finance::TAc::TA_RealRange_min_set;
*swig_max_get = *Finance::TAc::TA_RealRange_max_get;
*swig_max_set = *Finance::TAc::TA_RealRange_max_set;
*swig_precision_get = *Finance::TAc::TA_RealRange_precision_get;
*swig_precision_set = *Finance::TAc::TA_RealRange_precision_set;
*swig_suggested_start_get = *Finance::TAc::TA_RealRange_suggested_start_get;
*swig_suggested_start_set = *Finance::TAc::TA_RealRange_suggested_start_set;
*swig_suggested_end_get = *Finance::TAc::TA_RealRange_suggested_end_get;
*swig_suggested_end_set = *Finance::TAc::TA_RealRange_suggested_end_set;
*swig_suggested_increment_get = *Finance::TAc::TA_RealRange_suggested_increment_get;
*swig_suggested_increment_set = *Finance::TAc::TA_RealRange_suggested_increment_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_IntegerRange ##############

package Finance::TA::TA_IntegerRange;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_min_get = *Finance::TAc::TA_IntegerRange_min_get;
*swig_min_set = *Finance::TAc::TA_IntegerRange_min_set;
*swig_max_get = *Finance::TAc::TA_IntegerRange_max_get;
*swig_max_set = *Finance::TAc::TA_IntegerRange_max_set;
*swig_suggested_start_get = *Finance::TAc::TA_IntegerRange_suggested_start_get;
*swig_suggested_start_set = *Finance::TAc::TA_IntegerRange_suggested_start_set;
*swig_suggested_end_get = *Finance::TAc::TA_IntegerRange_suggested_end_get;
*swig_suggested_end_set = *Finance::TAc::TA_IntegerRange_suggested_end_set;
*swig_suggested_increment_get = *Finance::TAc::TA_IntegerRange_suggested_increment_get;
*swig_suggested_increment_set = *Finance::TAc::TA_IntegerRange_suggested_increment_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_RealDataPair ##############

package Finance::TA::TA_RealDataPair;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_value_get = *Finance::TAc::TA_RealDataPair_value_get;
*swig_value_set = *Finance::TAc::TA_RealDataPair_value_set;
*swig_string_get = *Finance::TAc::TA_RealDataPair_string_get;
*swig_string_set = *Finance::TAc::TA_RealDataPair_string_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_IntegerDataPair ##############

package Finance::TA::TA_IntegerDataPair;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_value_get = *Finance::TAc::TA_IntegerDataPair_value_get;
*swig_value_set = *Finance::TAc::TA_IntegerDataPair_value_set;
*swig_string_get = *Finance::TAc::TA_IntegerDataPair_string_get;
*swig_string_set = *Finance::TAc::TA_IntegerDataPair_string_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_RealList ##############

package Finance::TA::TA_RealList;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_data_get = *Finance::TAc::TA_RealList_data_get;
*swig_data_set = *Finance::TAc::TA_RealList_data_set;
*swig_nbElement_get = *Finance::TAc::TA_RealList_nbElement_get;
*swig_nbElement_set = *Finance::TAc::TA_RealList_nbElement_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_IntegerList ##############

package Finance::TA::TA_IntegerList;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_data_get = *Finance::TAc::TA_IntegerList_data_get;
*swig_data_set = *Finance::TAc::TA_IntegerList_data_set;
*swig_nbElement_get = *Finance::TAc::TA_IntegerList_nbElement_get;
*swig_nbElement_set = *Finance::TAc::TA_IntegerList_nbElement_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_InputParameterInfo ##############

package Finance::TA::TA_InputParameterInfo;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_type_get = *Finance::TAc::TA_InputParameterInfo_type_get;
*swig_type_set = *Finance::TAc::TA_InputParameterInfo_type_set;
*swig_paramName_get = *Finance::TAc::TA_InputParameterInfo_paramName_get;
*swig_paramName_set = *Finance::TAc::TA_InputParameterInfo_paramName_set;
*swig_flags_get = *Finance::TAc::TA_InputParameterInfo_flags_get;
*swig_flags_set = *Finance::TAc::TA_InputParameterInfo_flags_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_OptInputParameterInfo ##############

package Finance::TA::TA_OptInputParameterInfo;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_type_get = *Finance::TAc::TA_OptInputParameterInfo_type_get;
*swig_type_set = *Finance::TAc::TA_OptInputParameterInfo_type_set;
*swig_paramName_get = *Finance::TAc::TA_OptInputParameterInfo_paramName_get;
*swig_paramName_set = *Finance::TAc::TA_OptInputParameterInfo_paramName_set;
*swig_flags_get = *Finance::TAc::TA_OptInputParameterInfo_flags_get;
*swig_flags_set = *Finance::TAc::TA_OptInputParameterInfo_flags_set;
*swig_displayName_get = *Finance::TAc::TA_OptInputParameterInfo_displayName_get;
*swig_displayName_set = *Finance::TAc::TA_OptInputParameterInfo_displayName_set;
*swig_dataSet_get = *Finance::TAc::TA_OptInputParameterInfo_dataSet_get;
*swig_dataSet_set = *Finance::TAc::TA_OptInputParameterInfo_dataSet_set;
*swig_defaultValue_get = *Finance::TAc::TA_OptInputParameterInfo_defaultValue_get;
*swig_defaultValue_set = *Finance::TAc::TA_OptInputParameterInfo_defaultValue_set;
*swig_hint_get = *Finance::TAc::TA_OptInputParameterInfo_hint_get;
*swig_hint_set = *Finance::TAc::TA_OptInputParameterInfo_hint_set;
*swig_helpFile_get = *Finance::TAc::TA_OptInputParameterInfo_helpFile_get;
*swig_helpFile_set = *Finance::TAc::TA_OptInputParameterInfo_helpFile_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Finance::TA::TA_OutputParameterInfo ##############

package Finance::TA::TA_OutputParameterInfo;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Finance::TA );
%OWNER = ();
%ITERATORS = ();
*swig_type_get = *Finance::TAc::TA_OutputParameterInfo_type_get;
*swig_type_set = *Finance::TAc::TA_OutputParameterInfo_type_set;
*swig_paramName_get = *Finance::TAc::TA_OutputParameterInfo_paramName_get;
*swig_paramName_set = *Finance::TAc::TA_OutputParameterInfo_paramName_set;
*swig_flags_get = *Finance::TAc::TA_OutputParameterInfo_flags_get;
*swig_flags_set = *Finance::TAc::TA_OutputParameterInfo_flags_set;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package Finance::TA;

*TA_INTEGER_MIN = *Finance::TAc::TA_INTEGER_MIN;
*TA_INTEGER_MAX = *Finance::TAc::TA_INTEGER_MAX;
*TA_REAL_MIN = *Finance::TAc::TA_REAL_MIN;
*TA_REAL_MAX = *Finance::TAc::TA_REAL_MAX;
*TA_INTEGER_DEFAULT = *Finance::TAc::TA_INTEGER_DEFAULT;
*TA_REAL_DEFAULT = *Finance::TAc::TA_REAL_DEFAULT;
*TA_SUCCESS = *Finance::TAc::TA_SUCCESS;
*TA_LIB_NOT_INITIALIZE = *Finance::TAc::TA_LIB_NOT_INITIALIZE;
*TA_BAD_PARAM = *Finance::TAc::TA_BAD_PARAM;
*TA_ALLOC_ERR = *Finance::TAc::TA_ALLOC_ERR;
*TA_GROUP_NOT_FOUND = *Finance::TAc::TA_GROUP_NOT_FOUND;
*TA_FUNC_NOT_FOUND = *Finance::TAc::TA_FUNC_NOT_FOUND;
*TA_INVALID_HANDLE = *Finance::TAc::TA_INVALID_HANDLE;
*TA_INVALID_PARAM_HOLDER = *Finance::TAc::TA_INVALID_PARAM_HOLDER;
*TA_INVALID_PARAM_HOLDER_TYPE = *Finance::TAc::TA_INVALID_PARAM_HOLDER_TYPE;
*TA_INVALID_PARAM_FUNCTION = *Finance::TAc::TA_INVALID_PARAM_FUNCTION;
*TA_INPUT_NOT_ALL_INITIALIZE = *Finance::TAc::TA_INPUT_NOT_ALL_INITIALIZE;
*TA_OUTPUT_NOT_ALL_INITIALIZE = *Finance::TAc::TA_OUTPUT_NOT_ALL_INITIALIZE;
*TA_OUT_OF_RANGE_START_INDEX = *Finance::TAc::TA_OUT_OF_RANGE_START_INDEX;
*TA_OUT_OF_RANGE_END_INDEX = *Finance::TAc::TA_OUT_OF_RANGE_END_INDEX;
*TA_INVALID_LIST_TYPE = *Finance::TAc::TA_INVALID_LIST_TYPE;
*TA_BAD_OBJECT = *Finance::TAc::TA_BAD_OBJECT;
*TA_NOT_SUPPORTED = *Finance::TAc::TA_NOT_SUPPORTED;
*TA_INTERNAL_ERROR = *Finance::TAc::TA_INTERNAL_ERROR;
*TA_UNKNOWN_ERR = *Finance::TAc::TA_UNKNOWN_ERR;
*TA_COMPATIBILITY_DEFAULT = *Finance::TAc::TA_COMPATIBILITY_DEFAULT;
*TA_COMPATIBILITY_METASTOCK = *Finance::TAc::TA_COMPATIBILITY_METASTOCK;
*TA_MAType_SMA = *Finance::TAc::TA_MAType_SMA;
*TA_MAType_EMA = *Finance::TAc::TA_MAType_EMA;
*TA_MAType_WMA = *Finance::TAc::TA_MAType_WMA;
*TA_MAType_DEMA = *Finance::TAc::TA_MAType_DEMA;
*TA_MAType_TEMA = *Finance::TAc::TA_MAType_TEMA;
*TA_MAType_TRIMA = *Finance::TAc::TA_MAType_TRIMA;
*TA_MAType_KAMA = *Finance::TAc::TA_MAType_KAMA;
*TA_MAType_MAMA = *Finance::TAc::TA_MAType_MAMA;
*TA_MAType_T3 = *Finance::TAc::TA_MAType_T3;
*TA_FUNC_UNST_ADX = *Finance::TAc::TA_FUNC_UNST_ADX;
*TA_FUNC_UNST_ADXR = *Finance::TAc::TA_FUNC_UNST_ADXR;
*TA_FUNC_UNST_ATR = *Finance::TAc::TA_FUNC_UNST_ATR;
*TA_FUNC_UNST_CMO = *Finance::TAc::TA_FUNC_UNST_CMO;
*TA_FUNC_UNST_DX = *Finance::TAc::TA_FUNC_UNST_DX;
*TA_FUNC_UNST_EMA = *Finance::TAc::TA_FUNC_UNST_EMA;
*TA_FUNC_UNST_HT_DCPERIOD = *Finance::TAc::TA_FUNC_UNST_HT_DCPERIOD;
*TA_FUNC_UNST_HT_DCPHASE = *Finance::TAc::TA_FUNC_UNST_HT_DCPHASE;
*TA_FUNC_UNST_HT_PHASOR = *Finance::TAc::TA_FUNC_UNST_HT_PHASOR;
*TA_FUNC_UNST_HT_SINE = *Finance::TAc::TA_FUNC_UNST_HT_SINE;
*TA_FUNC_UNST_HT_TRENDLINE = *Finance::TAc::TA_FUNC_UNST_HT_TRENDLINE;
*TA_FUNC_UNST_HT_TRENDMODE = *Finance::TAc::TA_FUNC_UNST_HT_TRENDMODE;
*TA_FUNC_UNST_KAMA = *Finance::TAc::TA_FUNC_UNST_KAMA;
*TA_FUNC_UNST_MAMA = *Finance::TAc::TA_FUNC_UNST_MAMA;
*TA_FUNC_UNST_MFI = *Finance::TAc::TA_FUNC_UNST_MFI;
*TA_FUNC_UNST_MINUS_DI = *Finance::TAc::TA_FUNC_UNST_MINUS_DI;
*TA_FUNC_UNST_MINUS_DM = *Finance::TAc::TA_FUNC_UNST_MINUS_DM;
*TA_FUNC_UNST_NATR = *Finance::TAc::TA_FUNC_UNST_NATR;
*TA_FUNC_UNST_PLUS_DI = *Finance::TAc::TA_FUNC_UNST_PLUS_DI;
*TA_FUNC_UNST_PLUS_DM = *Finance::TAc::TA_FUNC_UNST_PLUS_DM;
*TA_FUNC_UNST_RSI = *Finance::TAc::TA_FUNC_UNST_RSI;
*TA_FUNC_UNST_STOCHRSI = *Finance::TAc::TA_FUNC_UNST_STOCHRSI;
*TA_FUNC_UNST_T3 = *Finance::TAc::TA_FUNC_UNST_T3;
*TA_FUNC_UNST_ALL = *Finance::TAc::TA_FUNC_UNST_ALL;
*TA_FUNC_UNST_NONE = *Finance::TAc::TA_FUNC_UNST_NONE;
*TA_RangeType_RealBody = *Finance::TAc::TA_RangeType_RealBody;
*TA_RangeType_HighLow = *Finance::TAc::TA_RangeType_HighLow;
*TA_RangeType_Shadows = *Finance::TAc::TA_RangeType_Shadows;
*TA_BodyLong = *Finance::TAc::TA_BodyLong;
*TA_BodyVeryLong = *Finance::TAc::TA_BodyVeryLong;
*TA_BodyShort = *Finance::TAc::TA_BodyShort;
*TA_BodyDoji = *Finance::TAc::TA_BodyDoji;
*TA_ShadowLong = *Finance::TAc::TA_ShadowLong;
*TA_ShadowVeryLong = *Finance::TAc::TA_ShadowVeryLong;
*TA_ShadowShort = *Finance::TAc::TA_ShadowShort;
*TA_ShadowVeryShort = *Finance::TAc::TA_ShadowVeryShort;
*TA_Near = *Finance::TAc::TA_Near;
*TA_Far = *Finance::TAc::TA_Far;
*TA_Equal = *Finance::TAc::TA_Equal;
*TA_AllCandleSettings = *Finance::TAc::TA_AllCandleSettings;
*TA_FUNC_FLG_OVERLAP = *Finance::TAc::TA_FUNC_FLG_OVERLAP;
*TA_FUNC_FLG_VOLUME = *Finance::TAc::TA_FUNC_FLG_VOLUME;
*TA_FUNC_FLG_UNST_PER = *Finance::TAc::TA_FUNC_FLG_UNST_PER;
*TA_FUNC_FLG_CANDLESTICK = *Finance::TAc::TA_FUNC_FLG_CANDLESTICK;
*TA_Input_Price = *Finance::TAc::TA_Input_Price;
*TA_Input_Real = *Finance::TAc::TA_Input_Real;
*TA_Input_Integer = *Finance::TAc::TA_Input_Integer;
*TA_OptInput_RealRange = *Finance::TAc::TA_OptInput_RealRange;
*TA_OptInput_RealList = *Finance::TAc::TA_OptInput_RealList;
*TA_OptInput_IntegerRange = *Finance::TAc::TA_OptInput_IntegerRange;
*TA_OptInput_IntegerList = *Finance::TAc::TA_OptInput_IntegerList;
*TA_Output_Real = *Finance::TAc::TA_Output_Real;
*TA_Output_Integer = *Finance::TAc::TA_Output_Integer;
*TA_IN_PRICE_OPEN = *Finance::TAc::TA_IN_PRICE_OPEN;
*TA_IN_PRICE_HIGH = *Finance::TAc::TA_IN_PRICE_HIGH;
*TA_IN_PRICE_LOW = *Finance::TAc::TA_IN_PRICE_LOW;
*TA_IN_PRICE_CLOSE = *Finance::TAc::TA_IN_PRICE_CLOSE;
*TA_IN_PRICE_VOLUME = *Finance::TAc::TA_IN_PRICE_VOLUME;
*TA_IN_PRICE_OPENINTEREST = *Finance::TAc::TA_IN_PRICE_OPENINTEREST;
*TA_IN_PRICE_TIMESTAMP = *Finance::TAc::TA_IN_PRICE_TIMESTAMP;
*TA_OPTIN_IS_PERCENT = *Finance::TAc::TA_OPTIN_IS_PERCENT;
*TA_OPTIN_IS_DEGREE = *Finance::TAc::TA_OPTIN_IS_DEGREE;
*TA_OPTIN_IS_CURRENCY = *Finance::TAc::TA_OPTIN_IS_CURRENCY;
*TA_OPTIN_ADVANCED = *Finance::TAc::TA_OPTIN_ADVANCED;
*TA_OUT_LINE = *Finance::TAc::TA_OUT_LINE;
*TA_OUT_DOT_LINE = *Finance::TAc::TA_OUT_DOT_LINE;
*TA_OUT_DASH_LINE = *Finance::TAc::TA_OUT_DASH_LINE;
*TA_OUT_DOT = *Finance::TAc::TA_OUT_DOT;
*TA_OUT_HISTO = *Finance::TAc::TA_OUT_HISTO;
*TA_OUT_PATTERN_BOOL = *Finance::TAc::TA_OUT_PATTERN_BOOL;
*TA_OUT_PATTERN_BULL_BEAR = *Finance::TAc::TA_OUT_PATTERN_BULL_BEAR;
*TA_OUT_PATTERN_STRENGTH = *Finance::TAc::TA_OUT_PATTERN_STRENGTH;
*TA_OUT_POSITIVE = *Finance::TAc::TA_OUT_POSITIVE;
*TA_OUT_NEGATIVE = *Finance::TAc::TA_OUT_NEGATIVE;
*TA_OUT_ZERO = *Finance::TAc::TA_OUT_ZERO;
*TA_OUT_UPPER_LIMIT = *Finance::TAc::TA_OUT_UPPER_LIMIT;
*TA_OUT_LOWER_LIMIT = *Finance::TAc::TA_OUT_LOWER_LIMIT;
1;
# This perl snippet is appended to the perl module generated by SWIG
# customizing and extending its functionality

package Finance::TA;

use strict;

our $VERSION = v0.4.0;

package Finance::TA::TA_RetCodeInfo;

# Redefine &new to a friendler version accepting an optional parameter
undef *new;

*new = sub {
    my ($pkg, $code) = @_;
    my $self = ::Finance::TAc::new_TA_RetCodeInfo();
    bless $self, $pkg if defined($self);
    ::Finance::TA::TA_SetRetCodeInfo($code, $self) if defined($code) && defined($self);
    return $self;
};

package Finance::TA::TA_FuncHandle;

sub new {
    my ($pkg, $name) = @_;
    my $self;
    my $retCode = ::Finance::TAc::TA_GetFuncHandle($name, \$self);
    if (defined $self) {
        bless $self, $pkg;
    }
    return $self;
}


sub GetFuncInfo {
    my ($self) = @_;
    my $info;
    my $retCode = ::Finance::TAc::TA_GetFuncInfo($self, \$info);
    return $info;
}


sub GetInputParameterInfo {
    my ($self, $param) = @_;
    my $info;
    my $retCode = ::Finance::TAc::TA_GetInputParameterInfo($self, $param, \$info);
    return $info;
}


sub GetOutputParameterInfo {
    my ($self, $param) = @_;
    my $info;
    my $retCode = ::Finance::TAc::TA_GetOutputParameterInfo($self, $param, \$info);
    return $info;
}


sub GetOptInputParameterInfo {
    my ($self, $param) = @_;
    my $info;
    my $retCode = ::Finance::TAc::TA_GetOptInputParameterInfo($self, $param, \$info);
    return $info;
}



package Finance::TA::TA_FuncInfo;

sub new {
    my ($pkg, $handle) = @_;
    my $self;
    my $retCode = ::Finance::TAc::TA_GetFuncInfo($handle, \$self);
    if (defined $self) {
        bless $self, $pkg;
    }
    return $self;
}


package Finance::TA;

# Redefine exported TA_Initialize/TA_Shutdown functions 
# to be more "Perl-friendly"

our $INITIALIZED = 0;

undef *TA_Initialize;

*TA_Initialize = sub {
    my $retCode;
    if ($INITIALIZED) {
        $retCode = TA_Shutdown();
        return $retCode if $retCode != $Finance::TA::TA_SUCCESS;
    }
    # Accept calls with no parameters
    $retCode = ::Finance::TAc::TA_Initialize();
    $INITIALIZED = ($retCode == $Finance::TA::TA_SUCCESS);
    return $retCode;
};

undef *TA_Shutdown;

*TA_Shutdown = sub {
    if ($INITIALIZED) {
        $INITIALIZED = 0;
        return ::Finance::TAc::TA_Shutdown();
    } else {
        # We are more forgiving on multiple calls to &TA_Shutdown
        # than TA-LIB on TA_Shutdown()
        return $Finance::TA::TA_SUCCESS;
    }
};

# SWIG does not export anything by default
# This small loop circumvents that and export everything beginning with 'TA_'
foreach (keys %Finance::TA::) {
    if (/^TA_/) {
        local *::sym = $Finance::TA::{$_};        
        push(@Finance::TA::EXPORT, "\$$_") if defined $::sym;
        push(@Finance::TA::EXPORT, "\@$_") if @::sym;
        push(@Finance::TA::EXPORT, "\%$_") if %::sym;
        push(@Finance::TA::EXPORT, $_) if defined &::sym;
    }
}

END { TA_Shutdown() }

TA_Initialize();
$INITIALIZED;
