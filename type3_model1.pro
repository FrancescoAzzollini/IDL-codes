pro type3_model1

nr=3000
nt=10000
r =10.^(findgen(Nr)/Nr*2.8)
t= (10.^(findgen(Nt)/nt*3.7)-1)+1e-3
Txt=fltarr(nt,nr)
decay=fltarr(nr)
Txt1=fltarr(nt,nr)
decay1=fltarr(nr)
Txt2=fltarr(nt,nr)
decay2=fltarr(nr)
Txt3=fltarr(nt,nr)
decay3=fltarr(nr)
n_e =density_r(r)
fMHz=8.9e-3*sqrt(n_e)
r0=1.05
freqlist = [100, 30, 10, 1, 0.1]
r_int = interpol(r, fmhz, freqlist)



num_t=1000
t_ = findgen(num_t)*1/num_t + 1/num_t
t_i = findgen(num_t+1)
flux0=fltarr(num_t+1)
flux1=fltarr(num_t+1)
flux2=fltarr(num_t+1)
flux3=fltarr(num_t+1)
flux4=fltarr(num_t+1)
for i=0, num_t do begin
  flux0[i]= total(fxt3(r_int[0], t_[0:999]+i, freq=8.9e-3*sqrt(density_r(r_int[0]))))
  flux1[i]= total(fxt3(r_int[1], t_[0:999]+i, freq=8.9e-3*sqrt(density_r(r_int[1]))))
  flux2[i]= total(fxt3(r_int[2], t_[0:999]+i, freq=8.9e-3*sqrt(density_r(r_int[2]))))
  flux3[i]= total(fxt3(r_int[3], t_[0:999]+i, freq=8.9e-3*sqrt(density_r(r_int[3]))))
  flux4[i]= total(fxt3(r_int[4], t_[0:999]+i, freq=8.9e-3*sqrt(density_r(r_int[4]))))
endfor




stop 


for i=0, N_elements(r)-1 do begin
  Txt[*,i]=8.9e5*sqrt(n_e[i])*fxt(r[value_locate(fMhz, FMHz[i])]-r0,t,freq=FMHz[i])+ $
           8.9e5*sqrt(n_e[i])*fxt(r[value_locate(fMhz, FMHz[i]*0.5)]-r0,t,freq=FMHz[i]*0.5)
  ;plot,t,Txt[i,*], /xlog
  decay[i]=t[max(where(Txt[*,i]/max(Txt[*,i]) GT 0.5))]-t[min(where(Txt[*,i]/max(Txt[*,i]) GT 0.5))]
  ;stop
  
  Txt1[*,i]=8.9e5*sqrt(n_e[i])*fxt1(r[value_locate(fMhz, FMHz[i])]-r0,t,freq=FMHz[i])+ $
    8.9e5*sqrt(n_e[i])*fxt1(r[value_locate(fMhz, FMHz[i]*0.5)]-r0,t,freq=FMHz[i]*0.5)
  ;plot,t,Txt[i,*], /xlog
  decay1[i]=t[max(where(Txt1[*,i]/max(Txt1[*,i]) GT 0.5))]-t[min(where(Txt1[*,i]/max(Txt1[*,i]) GT 0.5))]
  ;stop
  
  Txt2[*,i]=8.9e5*sqrt(n_e[i])*fxt2(r[value_locate(fMhz, FMHz[i])]-r0,t,freq=FMHz[i])+ $
    8.9e5*sqrt(n_e[i])*fxt2(r[value_locate(fMhz, FMHz[i]*0.5)]-r0,t,freq=FMHz[i]*0.5)
  ;plot,t,Txt[i,*], /xlog
  decay2[i]=t[max(where(Txt2[*,i]/max(Txt2[*,i]) GT 0.5))]-t[min(where(Txt2[*,i]/max(Txt2[*,i]) GT 0.5))]
  ;stop
  
  Txt3[*,i]=8.9e5*sqrt(n_e[i])*fxt3(r[value_locate(fMhz, FMHz[i])]-r0,t,freq=FMHz[i])+ $
    8.9e5*sqrt(n_e[i])*fxt3(r[value_locate(fMhz, FMHz[i]*0.5)]-r0,t,freq=FMHz[i]*0.5)
  ;plot,t,Txt[i,*], /xlog
  decay3[i]=t[max(where(Txt3[*,i]/max(Txt3[*,i]) GT 0.5))]-t[min(where(Txt3[*,i]/max(Txt3[*,i]) GT 0.5))]
  ;stop
endfor
loadct,39

window, 0
spectro_plot,reverse(Txt,2),t,reverse(fMHz),/no_ut,/xs,/ys,xrange=[0.01,100],/ylog,drange=[1e-5,1]*max(Txt),frange=[0.01,100],$
  xtitle='time, [sec]',ytitle='Frequency [MHz]',/log
;spectro_plot,reverse(Txt,2),t,reverse(fMHz*2),/oplot 

linecolors
window, 1
f0=32.
i30=value_locate(fMhz, f0)
I30H=value_locate(fMhz, f0/2)
print, max(Txt[*,i30],loci)
plot,t,Txt[*,i30],xrange=[0,4]*t[loci]
oplot,t,fxt(r[i30] -r0,t,freq=f0),   line=2,color=2
oplot,t,fxt(r[i30h]-r0,t,freq=f0/2.),line=2,color=9

window,2
plot_oo,FMHz,decay,xrange=[0.01,1000]
oplot,fMHz,72./fMHz,line=1

window, 3, xsize=1000, ysize=600

!P.charsize=2.5
!P.thick=1
!P.charthick=1


!P.MULTI = [3,3,0]

plot, t, 1.8e4*sqrt(n_e(r_int[0]))*fxt(r_int[0], t, freq=8.9e-3*sqrt(density_r(r_int[0]))), xrange=[35, 45], $
  xtitle='time, [sec]', ytitle='n(t)', title='100 MHz', /ylog, line=0

!P.MULTI = [2,3,0]

plot, t, 1.8e4*sqrt(n_e(r_int[0]))*fxt(r_int[0], t, freq=8.9e-3*sqrt(density_r(r_int[0]))), xrange=[30, 100], $
  xtitle='time, [sec]', ytitle='n(t)', title='100 MHz, 30 MHz, 10 MHz', /ylog, line=0
oplot, t, 1.8e4*sqrt(n_e(r_int[1]))*fxt(r_int[1], t, freq=8.9e-3*sqrt(density_r(r_int[1]))), line=1
oplot, t, 1.8e4*sqrt(n_e(r_int[2]))*fxt(r_int[2], t, freq=8.9e-3*sqrt(density_r(r_int[2]))), line=2

text_legend=[textoIDL('100 MHz'),$
  textoIDL('30 MHz'),$
  textoIDL('10 MHz')]
al_legend,linestyle=[0,1,2],text_legend,/right_legend,thick=2,box=0, charsize=1



!P.MULTI = [1,3,0]

plot, t, 1.8e4*sqrt(n_e(r_int[3]))*fxt(r_int[3], t, freq=8.9e-3*sqrt(density_r(r_int[3]))), xrange=[100, 1600], $
  xtitle='time, [sec]', ytitle='n(t)', title='1 MHz, 0.1 MHz', /ylog, line=0
oplot, t, 1.8e4*sqrt(n_e(r_int[4]))*fxt(r_int[4], t, freq=8.9e-3*sqrt(density_r(r_int[4]))), line=1

text_legend=[textoIDL('1 MHz'),$
  textoIDL('0.1 MHz')]
al_legend,linestyle=[0,1],text_legend,/right_legend,thick=2,box=0, charsize=1



window, 4, xsize=1000, ysize=600

!P.charsize=1.4
!P.thick=1
!P.charthick=1


!P.MULTI = [2,2,0]

plot, t, fxt1(r_int[0]*7.e10, t, freq=8.9e-3*sqrt(density_r(r_int[0]))), xrange=[100.,3000.], $
  xtitle='time, [sec]', ytitle='n(t)', title='100 MHz, 30 MHz, 10 MHz', /ylog, line=0
oplot, t, fxt1(r_int[1]*7e10, t, freq=8.9e-3*sqrt(density_r(r_int[1]))), line=1
oplot, t, fxt1(r_int[2]*7e10, t, freq=8.9e-3*sqrt(density_r(r_int[2]))), line=2

text_legend=[textoIDL('100 MHz'),$
  textoIDL('30 MHz'),$
  textoIDL('10 MHz')]
al_legend,linestyle=[0,1,2],text_legend,/left_legend,thick=2,box=0, charsize=1.1

!P.MULTI = [1,2,0]

plot, t, fxt1(r_int[3]*7e10, t, freq=8.9e-3*sqrt(density_r(r_int[3]))), xrange=[2000.,5000.], $
  xtitle='time, [sec]', ytitle='n(t)', title='1 MHz', /ylog, line=3
;oplot, t, fxt1(r_int[4]*7e10, t, freq=8.9e-3*sqrt(density_r(r_int[4]))), line=4

;text_legend=[textoIDL('1 MHz'), textoIDL('0.1 MHz')]
;al_legend,linestyle=[3,4],text_legend,/left_legend,thick=2,box=0, charsize=1.1



window, 5, xsize=800, ysize=400

!P.charsize=1.8
!P.thick=1
!P.charthick=1

!P.MULTI = [1,1,0]

plot, t, 1e10*fxt2(r_int[0], t, freq=8.9e-3*sqrt(density_r(r_int[0]))), xrange=[0, 1050], $
  xtitle='time, [sec]', ytitle='n(t)', title='100 MHz, 30 MHz, 10 MHz, 1 MHz, 0.1 MHz', /ylog, line=0
oplot, t, 1e10*fxt2(r_int[1], t, freq=8.9e-3*sqrt(density_r(r_int[1]))), line=1
oplot, t, 1e10*fxt2(r_int[2], t, freq=8.9e-3*sqrt(density_r(r_int[2]))), line=2
oplot, t, 1e10*fxt2(r_int[3], t, freq=8.9e-3*sqrt(density_r(r_int[3]))), line=3
oplot, t, 1e10*fxt2(r_int[4], t, freq=8.9e-3*sqrt(density_r(r_int[4]))), line=4

text_legend=[textoIDL('100 MHz'),$
  textoIDL('30 MHz'),$
  textoIDL('10 MHz'), textoIDL('1 MHz'), textoIDL('0.1 MHz')]
al_legend,linestyle=[0,1,2,3,4],text_legend,/right_legend,thick=2,box=0, charsize=1.1



;window, 6, xsize=800, ysize=400

;!P.charsize=1.8
;!P.thick=1
;!P.charthick=1

;plot, r, 1e10*fxt2(r, t[0], freq=8.9e-3*sqrt(density_r(r))), xrange=[0, 1050], $
;  xtitle='x', ytitle='n(x)', title='t=1 s', /ylog, line=0
;oplot, r, 1e10*fxt2(r, t[0], freq=8.9e-3*sqrt(density_r(r))), line=1, color=5


window, 7
spectro_plot,reverse(Txt1,2),t,reverse(fMHz),/no_ut,/xs,/ys,xrange=[0.01,100],/ylog,drange=[1e-5,1]*max(Txt1),frange=[0.01,100],$
  xtitle='time, [sec]',ytitle='Frequency [MHz]',/log
;spectro_plot,reverse(Txt,2),t,reverse(fMHz*2),/oplot


window, 8
spectro_plot,reverse(Txt2,2),t,reverse(fMHz),/no_ut,/xs,/ys,xrange=[0.01,100],/ylog,drange=[1e-5,1]*max(Txt2),frange=[0.01,100],$
  xtitle='time, [sec]',ytitle='Frequency [MHz]',/log
;spectro_plot,reverse(Txt,2),t,reverse(fMHz*2),/oplot

window, 9

plot, r, fxt3(r, 1000, freq=8.9e-3*sqrt(density_r(r))), xrange=[0, 500], $
  xtitle='distance', ytitle='n(x)', title='time=1000 s', /ylog, line=0


window, 10, xsize=800, ysize=400

  !P.charsize=1.8
  !P.thick=1
  !P.charthick=1

  !P.MULTI = [1,1,0]

  plot, t, fxt3(r_int[0], t, freq=8.9e-3*sqrt(density_r(r_int[0]))), xrange=[0, 1050], $
    xtitle='time, [sec]', ytitle='n(t)', title='100 MHz, 30 MHz, 10 MHz, 1 MHz, 0.1 MHz', /ylog, line=0
  oplot, t, fxt3(r_int[1], t, freq=8.9e-3*sqrt(density_r(r_int[1]))), line=1
  oplot, t, fxt3(r_int[2], t, freq=8.9e-3*sqrt(density_r(r_int[2]))), line=2
  oplot, t, fxt3(r_int[3], t, freq=8.9e-3*sqrt(density_r(r_int[3]))), line=3
  oplot, t, fxt3(r_int[4], t, freq=8.9e-3*sqrt(density_r(r_int[4]))), line=4

  text_legend=[textoIDL('100 MHz'),$
    textoIDL('30 MHz'),$
    textoIDL('10 MHz'), textoIDL('1 MHz'), textoIDL('0.1 MHz')]
  al_legend,linestyle=[0,1,2,3,4],text_legend,/right_legend,thick=2,box=0, charsize=1.1


window, 11
;electrons/cm with velocity v at time t

t_ = (10.^(findgen(Nt)/nt*3.7)-1)+1e-3
v=1e9/7e10
plot, v*t_, fxt3(v*t_, t_, freq=8.9e-3*sqrt(density_r(v*t_))), xrange=[0, 200], $
  xtitle='time, [sec]', ytitle='n(t)', title='100 MHz, 30 MHz, 10 MHz, 1 MHz, 0.1 MHz', /ylog, line=0



window, 12
spectro_plot,reverse(Txt3,2),t,reverse(fMHz),/no_ut,/xs,/ys,xrange=[0.01,100],/ylog,drange=[1e-5,1]*max(Txt3),frange=[0.01,100],$
  xtitle='time, [sec]',ytitle='Frequency [MHz]',/log
;spectro_plot,reverse(Txt,2),t,reverse(fMHz*2),/oplot



window, 13, xsize=1200, ysize=600

!P.charsize=1.8
!P.thick=1
!P.charthick=1

!P.MULTI = [1,1,0]

plot, t_i, flux1

plot, t_i, flux0, xtitle='time [sec]', ytitle='electrons /(s cc)', title='100 MHz, 30 MHz, 10 MHz, 1 MHz, 0.1 MHz', line=0
oplot, t_i, flux1, line=1
oplot, t_i, flux2, line=2
oplot, t_i, flux3, line=3
oplot, t_i, flux4, line=4

text_legend=[textoIDL('100 MHz'),$
  textoIDL('30 MHz'),$
  textoIDL('10 MHz'), textoIDL('1 MHz'), textoIDL('0.1 MHz')]
al_legend,linestyle=[0,1,2,3,4],text_legend,/right_legend,thick=2,box=0, charsize=1.1

stop
 

end



function fxt, x,t,freq=freq
  v0=5e10/7e10
  d=2e8/7e10
  return, exp(-((x-t*v0/2)/d)^2)*(X GT 0.)+0.*(X LE 0)
end


function fxt1, x,t,freq=freq
  N_e=1.e30
  m=9.1e-31
  T_e=1.e10
  ;const=m/(2*!PI*T_e)
  const=1.e-16
  return, N_e*sqrt(const)*(1./t)*(1. + (x/t)^2. * 8.*!PI*const)*exp(-4.*!PI*const*(x/t)^2)*(X GT 0.)+0.*(X LE 0)
end


function fxt2, x,t,freq=freq
  v0=1e10/7e10
  d=2e8/7e10
  sigma2=d^2+(v0/5*t)^2
  sigma2=0.5*(30./Freq)
  return, exp(-(x-t*v0)^2/sigma2/2)/sqrt(2*!PI*sigma2)*(X GT 0.)+0.*(X LE 0)
end


function fxt3, x,t,freq=freq
  v0=1e10/7e10
  d=2e8/7e10
  lamb=1.
  D=0.11*v0*lamb
  return, exp(-(x-t*v0/2)^2/(4*D*t))/sqrt(4*!PI*D*t)*(X GT 0.)+0.*(X LE 0) 
end


function density_r, rr
  ; returns plasma density in cm^-3
  rr=rr*1d0
  ; input: rr is the solar radius

  ; density in the low corona
  h0=144.d/6.96e5
  ; 144km/solar radius in km

  h1=20.d/960.
  ;20 arcsec/solar radius

  ;nc=1.17e17*exp(-(rr-1.)/(h0))+1e11*exp(-(rr-1.)/0.02)
  nc=3d11*exp(-(rr-1.d0)/h1)

  ; Newkirk model below
  ;return, 4.2e4*10.^(4.2/rr)

  ; Leblanc 1998 model below
  ; return, 3.3e5*RR^(-2.)+ 4.1e6*RR^(-4.)+8e7*RR^(-6)
  ;
  ; Model that fits Parker model but simple power-laws

  return, (4.8e9/RR^14.+ 3e8/RR^6.+1.39d6/RR^2.3)*(1 + 0.15*sin(1.68e3*RR))
  ;+nc

end
 