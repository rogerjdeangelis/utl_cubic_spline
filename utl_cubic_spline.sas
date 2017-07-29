
%utl_submit_wps64('
libname sd1 sas7bdat "d:/sd1";
options set=R_HOME "C:/Program Files/R/R-3.3.2";
libname wrk sas7bdat "%sysfunc(pathname(work))";
proc r;
submit;
source("c:/Program Files/R/R-3.3.2/etc/Rprofile.site",echo=T);
library(haven);
xy<-read_sas("d:/sd1/have.sas7bdat");
want<-as.data.frame(spline(xy$RTTM_INT, xy$YIELD,method="fmm", n = 201));
endsubmit;
import r=want data=wrk.wantwps;
run;quit;
');

data pltpre;
  set
      wantwps(in=wps rename=(x=RTTM_INT y=YIELD))
      sd1.have;
  if wps then from="SPLINE    ";
  else from="OBSERVED";
  if from="OBSERVED" then datlbl=put(yield,5.1);
run;quit;

options orientation=landscape;
ods graphics on /height=8in width=10in;;
ods pdf file="d:/pdf/splinefit.pdf";
proc sgplot data=pltpre;
   title1 "Observed and Spline Fit";
   series x=RTTM_INT y=YIELD / group=From
   datalabel=datlbl datalabelattrs=(size=12)
   grouplc=from name="From";
   xaxis values=(0 to 22 by 2) grid;
   keylegend / location = inside
   position=BottomRight valueattrs=(size=10);
run;quit;
ods graphics off;
ods pdf close;
