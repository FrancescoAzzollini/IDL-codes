pro KontarPositAnis1

  RESTORE, 'all_results_fundamental.sav'
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




  xdataB = [15.93, 26.5, 41.9, 45.01, 54.95, 66.65, 75.86, 88.7, 95.05, 104.5, 118.68, 135.1];, 169.89]

  ndataB = 10^[0.31, 0.01, -0.28, -0.32, -0.43, -0.53, -0.62, -0.71, -0.78, -0.83, -0.9, -0.95]*1000.;, -1.05]*1000.

  errorB = [0.419, 0.694, 1.21, 1.125, 2.78, 2.36, 3.79, 2.225, 2.76, 3.03, 3.45, 3.92];, 6.01]

  ;4 4 3 4 1 2 1 4 3 3 3 3 2

  ;Bougeret 1984 data F


  ;1.24964034017290,
  xdataM=[1.67217555144050,1.99611921341233,2.41865442467994];,2.90456991763768]
  ;8.72311102097739,
  ndataM=8.9e-3*sqrt(10^[7.67672883173806,7.43183087255438,6.96429840502192]);,6.70826872042080])
  ;Malitson & Erickson (1966)fundamental



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

  xdataW = [40.]
  ndataW = [425.]*1e-3

  xdataW1 = [40., 40.]
  ndataW1 = [425., 425]*1e-3
  ;STEREO Wind


  xdataR = 10.^[2.3324-0.973086637029588, 2.3324-0.769585042798533, 2.3324-0.664674354022148, 2.3324-0.593136806738055, 2.3324-0.533184576528805, 2.3324-0.397812075014571, 2.3324-0.34373392912243]
  ndataR = [940., 740., 540., 388., 272., 196., 148.]*1e-3
  
  errorR=[3.644,4.137,2.717,5.796,3.9,3.501,2.626]
  ;Reiner 1998



  result = [1e-3*ndataB, 8.9e-3*sqrt(ndataH), ndataR, ndataW];, ndataM
  shiftresult = [xdataB, xdataH, xdataR, xdataW];, xdataM - resultMf

  errorALL = [0.419, 0.694, 1.21, 1.125, 2.78, 2.36, 3.79, 2.225, 2.76, 3.03, 3.45, 3.92, 7.63, 3.644, 4.137, 2.717, 5.796, 3.9, 3.501, 2.626, 4.5, 4.5]
  errorAllx= [0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,1.65e-2,0.,0.,0.,0.,0.,0.,0.,25.*1e-3, 25.*1e-3]

  REF=['Bougeret et al. 1984','Gurnett et al. 1978', 'Reiner et al 1998', 'Reiner et al 2009']

  window, 0

  pint1d_1 = plot(e2a042,  e2a042d, 'g',NAME='$\epsilon$ = 2.0',DIM=[1500,1000],TITLE='Fundamental Emission',$
   XRANGE=[0.1, 10.],FONT_SIZE=20,/XLOG, /YLOG, FILL_BACKGROUND=1,FILL_COLOR='grey',FILL_TRANSPARENCY=70,THICK=3.0)
  pint2d_1 = plot(e2a033,  e2a033d, 'r',/OVERPLOT,/XLOG, /YLOG, THICK=3.0)
  pint3d_1 = plot(e2a025,  e2a025d, 'b',/OVERPLOT,/XLOG, /YLOG, THICK=3.0)
  pint4d_1 = plot(e2a019,  e2a019d, 'orange',/OVERPLOT,/XLOG, /YLOG, THICK=3.0)


  pint1d = plot(e05a042,  e05a042d, 'g',NAME = '$\alpha$ = 0.42',/OVERPLOT,/XLOG, /YLOG, THICK=3.0)
  pint2d = plot(e05a033,  e05a033d, 'r',NAME = '$\alpha$ = 0.33',/OVERPLOT,/XLOG, /YLOG, THICK=3.0)
  pint3d = plot(e05a025,  e05a025d, 'b',/OVERPLOT,/XLOG, NAME = '$\alpha$ = 0.25',/YLOG, THICK=3.0)
  pint4d = plot(e05a019,  e05a019d, 'orange',/OVERPLOT,NAME = '$\alpha$ = 0.19',/XLOG, /YLOG,FILL_BACKGROUND=1,FILL_COLOR='white',FILL_TRANSPARENCY=10, THICK=3.0)




  ;scatterplots of data
  dshiftBf = errorplot( ndataB*1.e-3, xdataB, 0, errorB, SYMBOL='.',SYM_SIZE=8.0, /SYM_FILLED,SYM_COLOR = 'black',$
    NAME = 'Bougeret et al. 1984', /OVERPLOT,/XLOG, THICK=2.,LINESTYLE = 6,ERRORBAR_COLOR = 'black',ERRORBAR_CAPSIZE = 0,ERRORBAR_THICK=2,$
    POSITION=[.2,.2,.9,.9], YTITLE='$R_{obs} [Solar Radii]$', XTITLE='$Frequency [MHz]$')
  dshiftHf = errorplot(8.9e-3*sqrt(ndataH1),xdataH1,[1.65e-2, 1.65e-2],[7.63, 7.63], $
    SYMBOL='tu',SYM_SIZE=1.0, /SYM_FILLED,SYM_COLOR = 'k', $
    NAME = 'Gurnett et al. 1978',LINESTYLE = 6, ERRORBAR_COLOR = 'k',ERRORBAR_CAPSIZE = 0,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftRf = errorplot(ndataR,xdataR, 0, [3.644,4.137,2.717,5.796,3.9,3.501,2.626],SYMBOL='td',SYM_SIZE=1.0, /SYM_FILLED,SYM_COLOR = 'k',$
    NAME = 'Reiner et al 1998',FONT_SIZE=20,LINESTYLE = 6,ERRORBAR_COLOR = 'k',ERRORBAR_CAPSIZE = 0,ERRORBAR_THICK=2,/OVERPLOT, /XLOG, THICK=2.)
  dshiftWf = errorplot(ndataW1,xdataW1,[25.*1e-3, 25.*1e-3],[4.5, 4.5], SYMBOL='d',SYM_SIZE=1.2, /SYM_FILLED,SYM_COLOR = 'k',$
    NAME = 'Reiner et al 2009',FONT_SIZE=20,LINESTYLE = 6,ERRORBAR_COLOR = 'k',ERRORBAR_CAPSIZE = 0,ERRORBAR_THICK=2, /OVERPLOT, /XLOG, THICK=2.)

  fit = plot(rb, 26.5/rb^0.73, 'k--',/OVERPLOT, XRANGE=[0.1,10.],YRANGE=[10.,200.], THICK=2.,/XLOG, /YLOG)

  leg = LEGEND(TARGET=[dshiftBf, dshiftHf, dshiftRf, dshiftWf], POSITION=[10,200], SAMPLE_WIDTH=0,FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR, LINESTYLE=6)



  ;scatterplot of simulated datapoints

  
  ;interpolation of simulated datapoints

  ;int1d_1 = INTERPOL(e141a042d,  e141a042, rb)
  ;int2d_1 = INTERPOL(e141a033d,  e141a033, rb)
  ;int3d_1 = INTERPOL(e141a025d,  e141a025, rb)
  ;int4d_1 = INTERPOL(e141a019d,  e141a019, rb)

  ;pint1d_1 = plot(rb, int1d_1, 'b-.',NAME='$\epsilon$ = 1.41',/OVERPLOT,/XLOG, /YLOG)
  ;pint2d_1 = plot(rb, int2d_1, 'g-.',/OVERPLOT,/XLOG, /YLOG)
  ;pint3d_1 = plot(rb, int3d_1, 'purple',linestyle='-.',/OVERPLOT,/XLOG, /YLOG)
  ;pint4d_1 = plot(rb, int4d_1, 'r-.',/OVERPLOT,/XLOG, /YLOG)


  

  leg = LEGEND(TARGET=[pint1d, pint2d, pint3d, pint4d], POSITION=[10.,76.], SAMPLE_WIDTH=0, FONT_SIZE=18,$
    /DATA, /AUTO_TEXT_COLOR, LINESTYLE=6)

  ;leg = LEGEND(TARGET=[pint1d, pint1d_1], TEXT_COLOR='k',POSITION=[10.,30.], FONT_SIZE=18,$
  ;  /DATA, LINESTYLE=6)
 
 
stop

pint1d_1.save,'Anis1.eps'
pint1d_1.save,'Anis1.png'

errorBx=[0,0,0,0,0,0,0,0,0,0,0,0]
errorH=[7.63]
errorHx=[1.65e-2]
errorW=[4.5]
errorWx=[25.e-3]
errorR=[3.644,4.137,2.717,5.796,3.9,3.501,2.626]
errorRx=[0,0,0,0,0,0,0]
RefsB=['Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984','Bougeret et al. 1984']
RefsR=['Reiner et al. 1998','Reiner et al. 1998','Reiner et al. 1998','Reiner et al. 1998','Reiner et al. 1998','Reiner et al. 1998','Reiner et al. 1998']

write_csv, 'AnisPlotB.csv', 1e-3*ndataB, xdataB, errorBx, errorB, RefsB
write_csv, 'AnisPlotG.csv',8.9e-3*sqrt(ndataH), xdataH, errorHx, errorH, ['Gurnett et al. 1978']
write_csv, 'AnisPlotR1.csv',ndataR,xdataR, errorRx,errorR, RefsR
write_csv, 'AnisPlotR2.csv',ndataW,xdataW,errorWx,errorW, ['Reiner et al. 2009']
write_csv, 'AnisPlot.csv',[1e-3*ndataB,8.9e-3*sqrt(ndataH),ndataR,ndataW],[xdataB,xdataH,xdataR,xdataW],$
  [errorBx,errorHx,errorRx,errorWx],[errorB,errorH,errorR,errorW], [RefsB, ['Gurnett et al. 1978'],RefsR,['Reiner et al. 2009']]

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