pro KontarPosit1H

  RESTORE, 'all_results_Harmonic.sav'
  ;0.19
  e05a019 = sims.fmhz[where((sims.eps EQ 0.5) AND (sims.anis EQ 0.19))]
  e05a019d = sims.r_shift[where((sims.eps EQ 0.5) AND (sims.anis EQ 0.19))]

  e141a019 = sims.fmhz[where((sims.eps EQ 1.41) AND (sims.anis EQ 0.19))]
  e141a019d = sims.r_shift[where((sims.eps EQ 1.41) AND (sims.anis EQ 0.19))]

  e1a019 = sims.fmhz[where((sims.eps EQ 1.) AND (sims.anis EQ 0.19))]
  e1a019d = sims.r_shift[where((sims.eps EQ 1.) AND (sims.anis EQ 0.19))]
  e2a019 = sims.fmhz[where((sims.eps EQ 2.) AND (sims.anis EQ 0.19))]
  e2a019d = sims.r_shift[where((sims.eps EQ 2.) AND (sims.anis EQ 0.19))]

  e07a019 = sims.fmhz[where((sims.eps EQ 0.70921987) AND (sims.anis EQ 0.19))]
  e07a019d = sims.r_shift[where((sims.eps EQ 0.70921987) AND (sims.anis EQ 0.19))]


  ;0.25
  e05a025 = sims.fmhz[where((sims.eps EQ 0.5) AND (sims.anis EQ 0.25))]
  e05a025d = sims.r_shift[where((sims.eps EQ 0.5) AND (sims.anis EQ 0.25))]

  e141a025 = sims.fmhz[where((sims.eps EQ 1.41) AND (sims.anis EQ 0.25))]
  e141a025d = sims.r_shift[where((sims.eps EQ 1.41) AND (sims.anis EQ 0.25))]

  e1a025 = sims.fmhz[where((sims.eps EQ 1.) AND (sims.anis EQ 0.25))]
  e1a025d = sims.r_shift[where((sims.eps EQ 1.) AND (sims.anis EQ 0.25))]

  e2a025 = sims.fmhz[where((sims.eps EQ 2.) AND (sims.anis EQ 0.25))]
  e2a025d = sims.r_shift[where((sims.eps EQ 2.) AND (sims.anis EQ 0.25))]

  e07a025 = sims.fmhz[where((sims.eps EQ 0.70921987) AND (sims.anis EQ 0.25))]
  e07a025d = sims.r_shift[where((sims.eps EQ 0.70921987) AND (sims.anis EQ 0.25))]


  ;0.33
  e05a033 = sims.fmhz[where((sims.eps EQ 0.5) AND (sims.anis EQ 0.33000001))]
  e05a033d = sims.r_shift[where((sims.eps EQ 0.5) AND (sims.anis EQ 0.33000001))]

  e141a033 = sims.fmhz[where((sims.eps EQ 1.41) AND (sims.anis EQ 0.33000001))]
  e141a033d = sims.r_shift[where((sims.eps EQ 1.41) AND (sims.anis EQ 0.33000001))]

  e1a033 = sims.fmhz[where((sims.eps EQ 1.) AND (sims.anis EQ 0.33000001))]
  e1a033d = sims.r_shift[where((sims.eps EQ 1.) AND (sims.anis EQ 0.33000001))]

  e2a033 = sims.fmhz[where((sims.eps EQ 2.) AND (sims.anis EQ 0.33000001))]
  e2a033d = sims.r_shift[where((sims.eps EQ 2.) AND (sims.anis EQ 0.33000001))]

  e07a033 = sims.fmhz[where((sims.eps EQ 0.70921987) AND (sims.anis EQ 0.33000001))]
  e07a033d = sims.r_shift[where((sims.eps EQ 0.70921987) AND (sims.anis EQ 0.33000001))]


  ;0.42
  e05a042 = sims.fmhz[where((sims.eps EQ 0.5) AND (sims.anis EQ 0.41999999))]
  e05a042d = sims.r_shift[where((sims.eps EQ 0.5) AND (sims.anis EQ 0.41999999))]

  e141a042 = sims.fmhz[where((sims.eps EQ 1.41) AND (sims.anis EQ 0.41999999))]
  e141a042d = sims.r_shift[where((sims.eps EQ 1.41) AND (sims.anis EQ 0.41999999))]

  e1a042 = sims.fmhz[where((sims.eps EQ 1.) AND (sims.anis EQ 0.41999999))]
  e1a042d = sims.r_shift[where((sims.eps EQ 1.) AND (sims.anis EQ 0.41999999))]

  e2a042 = sims.fmhz[where((sims.eps EQ 2.) AND (sims.anis EQ 0.41999999))]
  e2a042d = sims.r_shift[where((sims.eps EQ 2.) AND (sims.anis EQ 0.41999999))]

  e07a042 = sims.fmhz[where((sims.eps EQ 0.70921987) AND (sims.anis EQ 0.41999999))]
  e07a042d = sims.r_shift[where((sims.eps EQ 0.70921987) AND (sims.anis EQ 0.41999999))]



  lowe = ALOG10(1.1)
  uppe = ALOG10(215.)
  re = DINDGEN(1000000)*(uppe - lowe)/(1000000 - 1L) + lowe
  r = 10^(re)


  loweb = ALOG10(0.1)
  uppeb = ALOG10(180.)
  reb = DINDGEN(100000)*(uppeb - loweb)/(100000 - 1L) + loweb
  rb = 10^(reb)


  
  xdataB = [15.93, 26.5, 41.9, 45.01, 54.95, 66.65, 75.86, 88.7];, 169.89]
  
  ndataB = 10^[0.31, 0.01, -0.28, -0.32, -0.43, -0.53, -0.62, -0.71]*1000.;, -1.05]*1000.
  
  errorB = [0.419, 0.694, 1.21, 1.125, 2.78, 2.36, 3.79, 2.225];, 6.01]
  
  ;4 4 3 4 1 2 1 4 3 3 3 3 2
  
  ;Bougeret 1984 data F


  ;1.24964034017290,
  xdataM=[1.67217555144050,1.99611921341233,2.41865442467994];,2.90456991763768]
  ;8.72311102097739,
  ndataM=8.9e-3*sqrt(10^[7.67672883173806,7.43183087255438,6.96429840502192]);,6.70826872042080])
  ;Malitson & Erickson (1966)Harmonic



  xdataF = 10.^[1.06058389331499,1.20066160482733,  1.29578262905943, 1.38086558274534,  1.48595313413109,  1.60109826789737]
  ndataF = 10.^[5.01476014760148,4.54981549815498,4.35055350553505,4.12915129151291,3.83025830258302,3.58671586715867]
  ;Fainberg et al

  ;xdataH = 10^[2.81E-01,3.19E-01,3.57E-01,4.06E-01,4.44E-01,5.28E-01, $
  ;  6.47E-01,7.18E-01,8.13E-01,9.57E-01,1.06E+00];,1.21E+00,1.30E+00,1.35E+00,1.40E+00,1.48E+00,1.54E+00,1.58E+00,1.63E+00] ;
  ;ndataH = 10^[7.73E+00,  7.29E+00,  7.06E+00,  6.84E+00,  6.70E+00,  $
  ;    6.45E+00,  6.12E+00,  5.93E+00,  5.69E+00,  5.30E+00,  5.05E+00];, 4.72E+00,  4.53E+00,  4.42E+00,  4.26E+00,  4.14E+00,  3.96E+00,  3.84E+00,  3.70E+00];
  ;Hartz 1969 data F

  xdataH = 10^[-0.4025]*215.;10^[-0.2246, -0.4025]*215.
  ndataH = 10^[2.5482];10^[2.0519, 2.5482]
  ;[1e-2, 1.65e-2],[8.6,7.63] error on Gurnett
  xdataH1 = 10^[-0.4025, -0.4025]*215.
  ndataH1 = 10^[2.5482, 2.5482]
  ;Gurnett 1978 data F

  xdataW = [40., 40.]
  ndataW = [425., 425]*1e-3

  xdataW1 = [40., 40.]
  ndataW1 = [425., 425]*1e-3
  ;STEREO Wind


  xdataR = 10.^[2.3324-0.973086637029588, 2.3324-0.769585042798533, 2.3324-0.664674354022148, 2.3324-0.593136806738055, 2.3324-0.533184576528805, 2.3324-0.397812075014571]
  ndataR = [940., 740., 540., 388., 272., 196.]*1e-3
  ;Reiner 1998

  

  result = [1e-3*ndataB, ndataR, ndataW];, ndataM
  shiftresult = [xdataB, xdataR, xdataW];, xdataM - resultMf
  
  errorALL = [0.419, 0.694, 1.21, 1.125, 2.78, 2.36, 3.79, 2.225, 7.63, 3.644, 4.137, 2.717, 5.796, 3.9, 3.501, 4.5]



  window, 0
  Chisq0 = []

  ;plots of data
  dshiftBf = errorplot( ndataB*1.e-3, xdataB, 0, errorB, SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'black',$
    NAME = 'Bougeret et al. 1984', DIM=[2500,2000],TITLE='Harmonic Emission, $\alpha = 0.42$', XRANGE=[0.1, 10.],FONT_SIZE=25,/XLOG, THICK=2.,LINESTYLE = 6,ERRORBAR_COLOR = 'black',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,$
    POSITION=[.1,.4,.95,.95], XTICKUNITS='Scientific')
  ;dshiftHf = errorplot(8.9e-3*sqrt(ndataH1),xdataH1,[1.65e-2, 1.65e-2],[7.63, 7.63], $
    ;SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'red', $
    ;NAME = 'Gurnett et al. 1978',LINESTYLE = 6, ERRORBAR_COLOR = 'red',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftRf = errorplot(ndataR,xdataR, 0, [3.644,4.137,2.717,5.796,3.9,3.501],SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'blue',$
    NAME = 'Reiner et al 1998',FONT_SIZE=25,LINESTYLE = 6,ERRORBAR_COLOR = 'blue',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftWf = errorplot(ndataW1,xdataW1,[25.*1e-3, 25.*1e-3],[4.5, 4.5], SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'green',$
    NAME = 'Reiner et al 2009',FONT_SIZE=25,LINESTYLE = 6,ERRORBAR_COLOR = 'green',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2, /OVERPLOT, /XLOG, THICK=2.)


  fit = plot(rb, 7.+20./(rb+0.05), /OVERPLOT, XRANGE=[0.1,10.],YRANGE=[10.,200.], THICK=5.,/XLOG, /YLOG)

  leg = LEGEND(TARGET=[dshiftBf, dshiftRf, dshiftWf], POSITION=[10,200],SAMPLE_WIDTH=0, FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR)

  ;plot of simulated datapoints

  ;anis=0.41999999
  ;plc = plot(sims.r_init, sims.r_shift,SYMBOL='+',SYM_SIZE=1.,SYM_COLOR = 'black' , /XLOG, THICK=2., /YLOG)
  pl1d = plot(e05a042, e05a042d,SYMBOL='+',SYM_SIZE=1.,COLOR = 'blue' , $
    /OVERPLOT, NAME = '$\epsilon$ = 0.5', YTITLE='$R_{obs} [Solar Radii]$',/XLOG, THICK=2., /YLOG)
  pl2d = plot(e141a042, e141a042d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'green' , NAME = '$\epsilon$ = 1.41',/XLOG, THICK=2., /YLOG)
  ;pl3d = plot(e1a042, e1a042d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR='purple' ,NAME = '$\epsilon$ = 1.0', /XLOG, THICK=2., /YLOG)
  pl4d = plot(e07a042, e07a042d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'red' , NAME = '$\epsilon$ = 0.71',/XLOG, THICK=2., /YLOG)
  pl5d = plot(e2a042, e2a042d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'cyan' , NAME = '$\epsilon$ = 2.0',/XLOG, THICK=2., /YLOG)

  

  leg = LEGEND(TARGET=[pl1d, pl4d, pl2d, pl5d], POSITION=[0.3,30], FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR)

  ;Residuals and Chi^2
  ;YRANGE=[-60, 30.]




  ;!P.POSITION=[0.2,0.4,0.1,0.9]
  datintF05 = INTERPOL(e05a042d , e05a042, result)
  chis05 = TOTAL(((datintF05 - shiftresult)^2)/datintF05)
  simcomp05 = shiftresult - datintF05
  normstan05 = errorALL ;sqrt(total(simcomp05^2)/(n_elements(simcomp05^2)-1))
  res05 = plot(result[sort(result)],  simcomp05[sort(result)]/normstan05,'b', Name='$\chi^2$ ='+STRING(chis05), XTITLE='$f_{obs} [MHz]$', $
    YRANGE=[-150., 30.], XRANGE=[0.1, 10.],YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25, $
    STAIRSTEP=1,/CURRENT,  POSITION=[.1,.1,.95,.35], THICK=2.,XTICKUNITS='Scientific')
  ;max(abs(simcomp05))



  datintF141 = INTERPOL(e141a042d , e141a042, result )
  chis141 = TOTAL(((datintF141 - shiftresult)^2)/datintF141)
  simcomp141 = shiftresult - datintF141
  normstan141 = errorALL ;sqrt(total(simcomp141^2)/(n_elements(simcomp141^2)-1))
  res141 = plot(result[sort(result)],  simcomp141[sort(result)]/normstan141, 'g',Name='$\chi^2$ ='+STRING(chis141), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)



  datintF07 = INTERPOL(e07a042d , e07a042, result )
  chis07 = TOTAL(((datintF07 - shiftresult)^2)/datintF07)
  simcomp07 = shiftresult - datintF07
  normstan07 = errorALL ;sqrt(total(simcomp07^2)/(n_elements(simcomp07^2)-1))
  res07 = plot(result[sort(result)],  simcomp07[sort(result)]/normstan07, 'r',Name='$\chi^2$ ='+STRING(chis07), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)


  datintF2 = INTERPOL(e2a042d , e2a042, result )
  chis2 = TOTAL(((datintF2 - shiftresult)^2)/datintF2)
  simcomp2 = shiftresult - datintF2
  normstan2 = errorALL  ;sqrt(total(simcomp2^2)/(n_elements(simcomp2^2)-1))
  res2 = plot(result[sort(result)],  simcomp2[sort(result)]/normstan2,'c',Name='$\chi^2$ ='+STRING(chis2), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)

  ;leg = LEGEND(TARGET=[res05, res07, res141, res2 ], POSITION=[10,5], FONT_SIZE=18,$
    ;/DATA, /AUTO_TEXT_COLOR)


  Chisq0 = [Chisq0, [chis05]]
  Chisq0 = [Chisq0, [chis07]]
  Chisq0 = [Chisq0, [chis141]]
  Chisq0 = [Chisq0, [chis2]]

  ;print, Chisq0

  dshiftBf.save,'Posit0.42H.eps'

  stop

  window, 1
  Chisq1 = []

  ;plots of data
  dshiftBf = errorplot( ndataB*1.e-3, xdataB, 0, errorB, SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'black',$
    NAME = 'Bougeret et al. 1984', DIM=[2500,2000],TITLE='Harmonic Emission, $\alpha = 0.25$', XRANGE=[0.1, 10.],FONT_SIZE=25,/XLOG, THICK=2.,LINESTYLE = 6,ERRORBAR_COLOR = 'black',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,$
    POSITION=[.1,.4,.95,.95], XTICKUNITS='Scientific')
  ;dshiftHf = errorplot(8.9e-3*sqrt(ndataH1),xdataH1,[1.65e-2, 1.65e-2],[7.63, 7.63], $
    ;SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'red', $
    ;NAME = 'Gurnett et al. 1978',LINESTYLE = 6, ERRORBAR_COLOR = 'red',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftRf = errorplot(ndataR,xdataR, 0, [3.644,4.137,2.717,5.796,3.9,3.501],SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'blue',$
    NAME = 'Reiner et al 1998',FONT_SIZE=25,LINESTYLE = 6,ERRORBAR_COLOR = 'blue',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftWf = errorplot(ndataW1,xdataW1,[25.*1e-3, 25.*1e-3],[4.5, 4.5], SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'green',$
    NAME = 'Reiner et al 2009',FONT_SIZE=25,LINESTYLE = 6,ERRORBAR_COLOR = 'green',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2, /OVERPLOT, /XLOG, THICK=2.)

  fit = plot(rb, 7.+20./(rb+0.05), /OVERPLOT, XRANGE=[0.1,10.],YRANGE=[10.,200.], THICK=5.,/XLOG, /YLOG)

  leg = LEGEND(TARGET=[dshiftBf, dshiftRf, dshiftWf], POSITION=[10,200], SAMPLE_WIDTH=0,FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR)


  ;plot of simulated datapoints

  ;anis=0.41999999
  ;plc = plot(sims.r_init, sims.r_shift,SYMBOL='+',SYM_SIZE=1.,SYM_COLOR = 'black' , /XLOG, THICK=2., /YLOG)
  pl1d = plot(e05a025, e05a025d,SYMBOL='+',SYM_SIZE=1.,COLOR = 'blue' , $
    /OVERPLOT,NAME = '$\epsilon$ = 0.5', YTITLE='$R_{obs} [Solar Radii]$', /XLOG, THICK=2., /YLOG)
  pl2d = plot(e141a025, e141a025d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'green' , NAME = '$\epsilon$ = 1.41',/XLOG, THICK=2., /YLOG)
  pl3d = plot(e1a025, e1a025d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'purple' ,NAME = '$\epsilon$ = 1.0', /XLOG, THICK=2., /YLOG)
  pl4d = plot(e07a025, e07a025d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'red' , NAME = '$\epsilon$ = 0.71',/XLOG, THICK=2., /YLOG)
  pl5d = plot(e2a025, e2a025d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'cyan' , NAME = '$\epsilon$ = 2.0',/XLOG, THICK=2., /YLOG)

  
  leg = LEGEND(TARGET=[pl1d, pl4d, pl3d, pl2d, pl5d ], POSITION=[0.3,30], FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR)

  ;Residuals and Chi^2


  datintF05 = INTERPOL(e05a025d , e05a025, result)
  chis05 = TOTAL(((datintF05 - shiftresult)^2)/datintF05)
  simcomp05 = shiftresult - datintF05
  normstan05 = errorALL ;(simcomp05^2)/(n_elements(simcomp05^2)-1))
  res05 = plot(result[sort(result)],  simcomp05[sort(result)]/normstan05,'b', Name='$\chi^2$ ='+STRING(chis05), XTITLE='$f_{obs} [MHz]$', $
    YRANGE=[-150., 30.], YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],XRANGE=[0.1, 10.],FONT_SIZE=25, THICK=2.,STAIRSTEP=1,/CURRENT,  POSITION=[.1,.1,.95,.35], XTICKUNITS='Scientific')



  datintF141 = INTERPOL(e141a025d , e141a025, result )
  chis141 = TOTAL(((datintF141 - shiftresult)^2)/datintF141)
  simcomp141 = shiftresult - datintF141
  normstan141 = errorALL ;(simcomp141^2)/(n_elements(simcomp141^2)-1))
  res141 = plot(result[sort(result)],  simcomp141[sort(result)]/normstan141, 'g',Name='$\chi^2$ ='+STRING(chis141), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)


  datintF07 = INTERPOL(e07a025d , e07a025, result )
  chis07 = TOTAL(((datintF07 - shiftresult)^2)/datintF07)
  simcomp07 = shiftresult - datintF07
  normstan07 = errorALL ;(simcomp07^2)/(n_elements(simcomp07^2)-1))
  res07 = plot(result[sort(result)],  simcomp07[sort(result)]/normstan07, 'r',Name='$\chi^2$ ='+STRING(chis07), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)


  datintF2 = INTERPOL(e2a025d , e2a025, result )
  chis2 = TOTAL(((datintF2 - shiftresult)^2)/datintF2)
  simcomp2 = shiftresult - datintF2
  normstan2 = errorALL ;(simcomp2^2)/(n_elements(simcomp2^2)-1))
  res2 = plot(result[sort(result)],  simcomp2[sort(result)]/normstan2,'c',Name='$\chi^2$ ='+STRING(chis2), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)


  ;leg = LEGEND(TARGET=[res05, res07, res141, res2 ], POSITION=[10,5], FONT_SIZE=18,$
    ;/DATA, /AUTO_TEXT_COLOR)

  Chisq1 = [Chisq1, [chis05]]
  Chisq1 = [Chisq1, [chis07]]
  Chisq1 = [Chisq1, [chis141]]
  Chisq1 = [Chisq1, [chis2]]

  ;print, Chisq1

  dshiftBf.save,'Posit0.25H.eps'


  window, 2
  Chisq2 = []

  ;plots of data
  dshiftBf = errorplot( ndataB*1.e-3, xdataB, 0, errorB, SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'black',$
    NAME = 'Bougeret et al. 1984', DIM=[2500,2000],TITLE='Harmonic Emission, $\alpha = 0.33$', XRANGE=[0.1, 10.],FONT_SIZE=25,/XLOG, THICK=2.,LINESTYLE = 6,ERRORBAR_COLOR = 'black',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,$
    POSITION=[.1,.4,.95,.95], XTICKUNITS='Scientific')
  ;dshiftHf = errorplot(8.9e-3*sqrt(ndataH1),xdataH1,[1.65e-2, 1.65e-2],[7.63, 7.63], $
    ;SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'red', $
    ;NAME = 'Gurnett et al. 1978',LINESTYLE = 6, ERRORBAR_COLOR = 'red',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftRf = errorplot(ndataR,xdataR, 0, [3.644,4.137,2.717,5.796,3.9,3.501],SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'blue',$
    NAME = 'Reiner et al 1998',FONT_SIZE=25,LINESTYLE = 6,ERRORBAR_COLOR = 'blue',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftWf = errorplot(ndataW1,xdataW1,[25.*1e-3, 25.*1e-3],[4.5, 4.5], SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'green',$
    NAME = 'Reiner et al 2009',FONT_SIZE=25,LINESTYLE = 6,ERRORBAR_COLOR = 'green',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2, /OVERPLOT, /XLOG, THICK=2.)

  fit = plot(rb, 7.+20./(rb+0.05), /OVERPLOT, XRANGE=[0.1,10.],YRANGE=[10.,200.], THICK=5.,/XLOG, /YLOG)

  leg = LEGEND(TARGET=[dshiftBf, dshiftRf, dshiftWf], POSITION=[10,200], SAMPLE_WIDTH=0,FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR)



  ;plot of simulated datapoints

  ;anis=0.41999999
  ;plc = plot(sims.r_init, sims.r_shift,SYMBOL='+',SYM_SIZE=1.,SYM_COLOR = 'black' , /XLOG, THICK=2., /YLOG)
  pl1d = plot(e05a033, e05a033d,SYMBOL='+',SYM_SIZE=1.,COLOR = 'blue' , $
    /OVERPLOT, NAME = '$\epsilon$ = 0.5', YTITLE='$R_{obs} [Solar Radii]$', /XLOG, THICK=2., /YLOG)
  pl2d = plot(e141a033, e141a033d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'green' , NAME = '$\epsilon$ = 1.41',/XLOG, THICK=2., /YLOG)
  ;pl3d = plot(e1a033, e1a033d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'purple' ,NAME = '$\epsilon$ = 1.0', /XLOG, THICK=2., /YLOG)
  pl4d = plot(e07a033, e07a033d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'red' , NAME = '$\epsilon$ = 0.71',/XLOG, THICK=2., /YLOG)
  pl5d = plot(e2a033, e2a033d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'cyan' , NAME = '$\epsilon$ = 2.0',/XLOG, THICK=2., /YLOG)

  

  leg = LEGEND(TARGET=[pl1d, pl4d, pl2d, pl5d ], POSITION=[0.3,30], FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR)

  ;Residuals and Chi^2


  datintF05 = INTERPOL(e05a033d , e05a033, result)
  chis05 = TOTAL(((datintF05 - shiftresult)^2)/datintF05)
  simcomp05 = shiftresult - datintF05
  normstan05 = errorALL ;(simcomp05^2)/(n_elements(simcomp05^2)-1))
  res05 = plot(result[sort(result)],  simcomp05[sort(result)]/normstan05,'b', Name='$\chi^2$ ='+STRING(chis05), XTITLE='$f_{obs} [MHz]$', $
    YRANGE=[-150., 30.], YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,XRANGE=[0.1, 10.], THICK=2.,STAIRSTEP=1,/CURRENT,  POSITION=[.1,.1,.95,.35], XTICKUNITS='Scientific')



  datintF141 = INTERPOL(e141a033d , e141a033, result )
  chis141 = TOTAL(((datintF141 - shiftresult)^2)/datintF141)
  simcomp141 = shiftresult - datintF141
  normstan141 = errorALL ;(simcomp141^2)/(n_elements(simcomp141^2)-1))
  res141 = plot(result[sort(result)],  simcomp141[sort(result)]/normstan141, 'g',Name='$\chi^2$ ='+STRING(chis141), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)




  datintF07 = INTERPOL(e07a033d , e07a033, result )
  chis07 = TOTAL(((datintF07 - shiftresult)^2)/datintF07)
  simcomp07 = shiftresult - datintF07
  normstan07 = errorALL ;(simcomp07^2)/(n_elements(simcomp07^2)-1))
  res07 = plot(result[sort(result)],  simcomp07[sort(result)]/normstan07, 'r',Name='$\chi^2$ ='+STRING(chis07), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)


  datintF2 = INTERPOL(e2a033d , e2a033, result )
  chis2 = TOTAL(((datintF2 - shiftresult)^2)/datintF2)
  simcomp2 = shiftresult - datintF2
  normstan2 = errorALL ;(simcomp2^2)/(n_elements(simcomp2^2)-1))
  res2 = plot(result[sort(result)],  simcomp2[sort(result)]/normstan2,'c',Name='$\chi^2$ ='+STRING(chis2), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)


  ;leg = LEGEND(TARGET=[res05, res07, res141, res2 ], POSITION=[10,5], FONT_SIZE=18,$
    ;/DATA, /AUTO_TEXT_COLOR)

  Chisq2 = [Chisq2, [chis05]]
  Chisq2 = [Chisq2, [chis07]]
  Chisq2 = [Chisq2, [chis141]]
  Chisq2 = [Chisq2, [chis2]]

  ;print, Chisq2

  dshiftBf.save,'Posit0.33H.eps'



  window, 3
  Chisq3 = []
  
 ;plots of data
  dshiftBf = errorplot( ndataB*1.e-3, xdataB, 0, errorB, SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'black',$
    NAME = 'Bougeret et al. 1984', DIM=[2500,2000],TITLE='Harmonic Emission, $\alpha = 0.19$', XRANGE=[0.1, 10.],FONT_SIZE=25,/XLOG, THICK=2.,LINESTYLE = 6,ERRORBAR_COLOR = 'black',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,$
    POSITION=[.1,.4,.95,.95], XTICKUNITS='Scientific')
  ;dshiftHf = errorplot(8.9e-3*sqrt(ndataH1),xdataH1,[1.65e-2, 1.65e-2],[7.63, 7.63], $
    ;SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'red', $
    ;NAME = 'Gurnett et al. 1978',LINESTYLE = 6, ERRORBAR_COLOR = 'red',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftRf = errorplot(ndataR,xdataR, 0, [3.644,4.137,2.717,5.796,3.9,3.501],SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'blue',$
    NAME = 'Reiner et al 1998',FONT_SIZE=25,LINESTYLE = 6,ERRORBAR_COLOR = 'blue',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftWf = errorplot(ndataW1,xdataW1,[25.*1e-3, 25.*1e-3],[4.5, 4.5], SYMBOL='.',SYM_SIZE=12.0, /SYM_FILLED,SYM_COLOR = 'green',$
    NAME = 'Reiner et al 2009',FONT_SIZE=25,LINESTYLE = 6,ERRORBAR_COLOR = 'green',ERRORBAR_CAPSIZE = 0.05,ERRORBAR_THICK=2, /OVERPLOT, /XLOG, THICK=2.)

  fit = plot(rb, 7.+20./(rb+0.05), /OVERPLOT, XRANGE=[0.1,10.],YRANGE=[10.,200.], THICK=5.,/XLOG, /YLOG)

  leg = LEGEND(TARGET=[dshiftBf, dshiftRf, dshiftWf], POSITION=[10,200], SAMPLE_WIDTH=0,FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR)
    
  ;plot of simulated datapoints

  ;anis=0.41999999
  ;plc = plot(sims.r_init, sims.r_shift,SYMBOL='+',SYM_SIZE=1.,SYM_COLOR = 'black' , /XLOG, THICK=2., /YLOG)
  pl1d = plot(e05a019, e05a019d,SYMBOL='+',SYM_SIZE=1.,COLOR = 'blue' , $
    /OVERPLOT,NAME = '$\epsilon$ = 0.5', YTITLE='$R_{obs} [Solar Radii]$', /XLOG, THICK=2., /YLOG)
  pl2d = plot(e141a019, e141a019d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'green' , NAME = '$\epsilon$ = 1.41',/XLOG, THICK=2., /YLOG)
  ;pl3d = plot(e1a019, e1a019d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'purple' ,NAME = '$\epsilon$ = 1.0', /XLOG, THICK=2., /YLOG)
  pl4d = plot(e07a019, e07a019d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'red' , NAME = '$\epsilon$ = 0.71',/XLOG, THICK=2., /YLOG)
  pl5d = plot(e2a019, e2a019d, /OVERPLOT,SYMBOL='+',SYM_SIZE=1.,COLOR = 'cyan' , NAME = '$\epsilon$ = 2.0',/XLOG, THICK=2., /YLOG)

  
  leg = LEGEND(TARGET=[pl1d, pl4d, pl2d, pl5d ], POSITION=[0.3,30], FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR)

  ;Residuals and Chi^2


  datintF05 = INTERPOL(e05a019d , e05a019, result)
  chis05 = TOTAL(((datintF05 - shiftresult)^2)/datintF05)
  simcomp05 = shiftresult - datintF05
  normstan05 = errorALL ;(simcomp05^2)/(n_elements(simcomp05^2)-1))
  res05 = plot(result[sort(result)],  simcomp05[sort(result)]/normstan05,'b', Name='$\chi^2$ ='+STRING(chis05), XTITLE='$f_{obs} [MHz]$', $
    YRANGE=[-150., 30.],YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,XRANGE=[0.1, 10.], STAIRSTEP=1,/CURRENT, THICK=2., POSITION=[.1,.1,.95,.35], XTICKUNITS='Scientific')



  datintF141 = INTERPOL(e141a019d , e141a019, result )
  chis141 = TOTAL(((datintF141 - shiftresult)^2)/datintF141)
  simcomp141 = shiftresult - datintF141
  normstan141 = errorALL ;(simcomp141^2)/(n_elements(simcomp141^2)-1))
  res141 = plot(result[sort(result)],  simcomp141[sort(result)]/normstan141, 'g',Name='$\chi^2$ ='+STRING(chis141), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)




  datintF07 = INTERPOL(e07a019d , e07a019, result )
  chis07 = TOTAL(((datintF07 - shiftresult)^2)/datintF07)
  simcomp07 = shiftresult - datintF07
  normstan07 = errorALL ;(simcomp07^2)/(n_elements(simcomp07^2)-1))
  res07 = plot(result[sort(result)],  simcomp07[sort(result)]/normstan07, 'r',Name='$\chi^2$ ='+STRING(chis07), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)


  datintF2 = INTERPOL(e2a019d , e2a019, result )
  chis2 = TOTAL(((datintF2 - shiftresult)^2)/datintF2)
  simcomp2 = shiftresult - datintF2
  normstan2 = errorALL ;(simcomp2^2)/(n_elements(simcomp2^2)-1))
  res2 = plot(result[sort(result)],  simcomp2[sort(result)]/normstan2,'c',Name='$\chi^2$ ='+STRING(chis2), XTITLE='$f_{obs} [MHz]$', $
    YTITLE='Normalised Residual [Solar Radii]',DIM=[2500,2000],FONT_SIZE=25,STAIRSTEP=1,/OVERPLOT,/XLOG, THICK=2.)


  ;leg = LEGEND(TARGET=[res05, res07, res141, res2 ], POSITION=[10,5], FONT_SIZE=18,$
  ;  /DATA, /AUTO_TEXT_COLOR)

  Chisq3 = [Chisq3, [chis05]]
  Chisq3 = [Chisq3, [chis07]]
  Chisq3 = [Chisq3, [chis141]]
  Chisq3 = [Chisq3, [chis2]]

  ;print, Chisq3

  dshiftBf.save,'Posit0.19H.eps'
  
  stop
  
  
  Chisq = [[Chisq3], [Chisq1], [Chisq2], [Chisq0]]/15.
  print, Chisq
  epsilon=[0.5, 0.7, 1.41, 2.]
  alpha = [0.19, 0.25, 0.33, 0.42]

  surf = SURFACE(Chisq, epsilon, alpha, XTITLE='$\epsilon$', YTITLE='$\alpha$', ZTITLE='$\chi^2$', $
    XTICKVALUES=[0.5, 0.7, 1.41, 2.],YTICKVALUES=[0.19, 0.25, 0.33, 0.42],DIM=[2500,2000], FONT_SIZE=25)

  cont23 = contour(Chisq, epsilon, alpha, C_VALUE = [2.041], C_COLOR=7, $
    DIM=[2500,2000], FONT_SIZE=45,XTITLE='$\epsilon$', YTITLE='$\alpha$', TITLE='$\chi^2-\chi^2_{min}=1$', XTICKVALUES=[0.5, 0.7, 1.41, 2.],YTICKVALUES=[0.19, 0.25, 0.33, 0.42])

  ;cont0 = contour(Chisq, epsilon, alpha, C_VALUE = [1.61], C_COLOR=7, OVERPLOT=1,$
  ;DIM=[2500,2000], FONT_SIZE=45, C_LINESTYLE=2)

  cont0 = contour(Chisq, epsilon, alpha, C_VALUE = [1.041], C_COLOR=7, OVERPLOT=1,$
    DIM=[2500,2000], FONT_SIZE=45)


  cont23.save,'ContPlotH.eps'

  surf.save,'ChisqPlotH.png'

  stop

 

end
FUNCTION density_r, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 4.8e9/r^14 + 3e8/r^6 + 1.4e6/r^2.3
END

FUNCTION freq_ratB, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 10.*(r/215.)^(-2.8)
END

FUNCTION freq_ratBF, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 40.*(r/215.)^(-2.8)
END

FUNCTION freq_ratAH, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 6.14*((r-0.95)/215.)^(-2.38)
END

FUNCTION freq_ratF, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 10.*(r/215.)^(-2.6)
END

FUNCTION freq_ratH, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 30.*((r-1.)/215.)^(-2.3)
END

FUNCTION freq_ratHF, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 4.*30.*((r-1.)/215.)^(-2.3)
END

FUNCTION freq_ratAl1, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 25.*(r/215.)^(-2.5)
END

FUNCTION freq_ratAl2, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 3.*(r/215.)^(-3.3)
END

FUNCTION freq_ratHel, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 6.14*(r/215.)^(-2.1)
END

FUNCTION freq_ratS, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, (10.)*(r/215.)^(-2.75)
END

; intvert freq_ratB
function r_freq_ratB, density
  compile_opt strictarr

  return, 215.0 * exp((alog(density) - alog(10.0)) / (-2.8))
end

function r_freq_ratBh, density
  compile_opt strictarr

  return, 215.0 * exp((alog(2*(112.3*density)^2) - alog(10.0)) / (-2.8))
end

function r_freq_ratH, density
  compile_opt strictarr

  return, 215.0 * exp((alog(density) - alog(30.0)) / (-2.3)) + 1.
end

function r_freq_ratHh, density
  compile_opt strictarr

  return, 215.0 * exp((alog(2*(112.3*density)^2) - alog(30.0)) / (-2.3)) + 1.
end

function r_freq_ratAH, density
  compile_opt strictarr

  return, 215.0 * exp((alog(density) - alog(6.14)) / (-2.38)) + 0.95
end

FUNCTION freq_ratM, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, (0.007)*((r-0.39)/215.)^(-4.49)
END

FUNCTION freq_ratBFfra, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, (50)*((r-33.9)/215.)^(-1.55)
END

FUNCTION freq_ratHFfra, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, (132)*((r-0.72)/215.)^(-2.28)
END

FUNCTION N1967, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 3.45e6*r^(-2.63)
END

FUNCTION BAdensity_r, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 1.55e8*r^(-6) + 2.99e8*r^(-16)
END

FUNCTION BRGdensity_r, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, -1.05e9/r^4.15 + 1.43e9/r^3.6 - 3.05e9/r^3.73
END

FUNCTION MagF2, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  k_b = 1.3803e-16
  pi = 3.14
  return, 1./(r^(4.)*k_b*16.*pi)
END

FUNCTION MagF1, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  k_b = 1.3803e-16
  pi = 3.14
  return, 1./(r^(6.)*k_b*16.*pi)
END

FUNCTION BRGmodel_r, r
  ;density in cm^-3
  ;r heliocentric distance (Solar Radii)
  return, 1.46e6 * r^(-2.3)
END