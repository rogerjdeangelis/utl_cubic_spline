# utl_cubic_spline
Interpolate a series using cubic splines (or other methods)

    ```  T1006850 SAS Forum: Cubic spline interpolation of yield curve (IML/R SAS/WPS/R)  ```
    ```    ```
    ```    see or run code below  ```
    ```    https://www.dropbox.com/s/ncvejaead09twsd/splinefit.pdf?dl=0  ```
    ```    ```
    ```     WORKING CODE (almost all of it)  ```
    ```    ```
    ```        xy<-read_sas("d:/sd1/have.sas7bdat");  ```
    ```
      want<-as.data.frame(spline(xy$RTTM_INT, xy$YIELD,method="fmm", n = 201));  ```
    ```        import r=want data=wrk.wantwps;  ```
    ```    ```
    ```  see  ```
    ```  https://goo.gl/HPA56r  ```
    ```  https://communities.sas.com/t5/SAS-Forecasting-and-Econometrics/  ```
    ```  Cubic-spline-interpolation-of-yield-curve/m-p/383461  ```
    ```    ```
    ```  HAVE  ```
    ```  ====  ```
    ```    ```
    ```  Up to 40 obs SD1.HAVE total obs=9  ```
    ```    ```
    ```  Obs    RTTM_INT    YIELD  ```
    ```    ```
    ```   1         1        3.20  ```
    ```   2         3        3.50  ```
    ```   3         7        4.25  ```
    ```   4        10        3.70  ```
    ```   5        11        3.50  ```
    ```   6        13        3.80  ```
    ```   7        15        4.20  ```
    ```   8        18        4.40  ```
    ```   9        21        4.70  ```
    ```    ```
    ```    ```
    ```    ```
    ```  WANT  ```
    ```  ====  ```
    ```    ```
    ```  Up to 40 obs WORK.WANTWPS total obs=210  ```
    ```    ```
    ```  Obs    RTTM_INT     YIELD  ```
    ```    ```
    ```    1       1.0      3.20000  ```
    ```    2       1.1      3.20488  ```
    ```    3       1.2      3.21105  ```
    ```    4       1.3      3.21849  ```
    ```    5       1.4      3.22716  ```
    ```  ...  ```
    ```    ```
    ```    ```
    ```    YEILD  ```
    ```  5.0 +  ```
    ```      |      Observed and Spline Fit  ```
    ```      |                                         4.7  ```
    ```      |                                          O  ```
    ```      |                                        **  ```
    ```  4.5 +                                      ***  ```
    ```      |            4.3                   ****O  4.4  ```
    ```      |              O           4.2  O**  ```
    ```      |            *****            ***  ```
    ```      |           *    **          **  ```
    ```  4.0 +          *      **        **  ```
    ```      |         **       **       O  3.8  ```
    ```      |        **         **     *  ```
    ```      |       **       3.7 O    *  ```
    ```      |   3.5 O            **  **  ```
    ```  3.5 +      *              *O**  ```
    ```      |     *               3.5  ```
    ```      |   **  ```
    ```      |  O 3.2  ```
    ```      |  ```
    ```  3.0 +  ```
    ```      -+------+------+------+------+------+------+  ```
    ```      0.0    3.5    7.0   10.5   14.0   17.5  21.0  ```
    ```    ```
    ```                         RTTM_INT  ```
    ```    ```
    ```  *                _              _       _  ```
    ```   _ __ ___   __ _| | _____    __| | __ _| |_ __ _  ```
    ```  | '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |  ```
    ```  | | | | | | (_| |   <  __/ | (_| | (_| | || (_| |  ```
    ```  |_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|  ```
    ```  ;  ```
    ```    ```
    ```  options validvarname=upcase;  ```
    ```  libname sd1 "d:/sd1";  ```
    ```  data sd1.have;  ```
    ```   input rttm_int yield;  ```
    ```  cards4;  ```
    ```  1 3.2  ```
    ```  3 3.5  ```
    ```  7 4.25  ```
    ```  10 3.7  ```
    ```  11 3.5  ```
    ```  13 3.8  ```
    ```  15 4.2  ```
    ```  18 4.4  ```
    ```  21 4.7  ```
    ```  ;;;;  ```
    ```  run;quit;  ```
    ```    ```
