pro ParkerPolar

;input parameters  
R_q = 1.0
t_0 = 2.162059458859757
t_1 = 6.021385919380437
R_AU = 0.9996527055153939
tau_ = 2.87939316223812
a_ = -3.7517547166237653     
 

;plot Parker spiral
q_0 = R_q*sin(t_1) - R_q*cos(t_1)*tan(t_0)
x_ = R_AU*cos(tau_+!PI)*FINDGEN(3600) + R_AU*cos(tau_+!PI)
A = 50.*(!PI/180.)
k = -FLOOR((a_ + !PI)/(!PI - a_))      
w = -FINDGEN(3600)*(!PI/1800.)-2*k*!PI-a_   
tangent_line = tangent_m(tau_, a_)*x_ + tangent_q(tau_, a_)
teta_0_line = tan(t_0)*x_ + q_0
  
Gang = w
Gmag = P_Spiral(w + a_)
  
  
plot_PS1_sav = POLARPLOT(P_Spiral(w+a_+2*k*!PI), Gang, $
  TITLE='Parker Spiral, r [AU], $\theta$ [rad]', $
  COLOR='blue', THICK=3, DIM=[1000,1000],FONT_SIZE=15)
plot_PS2 = POLARPLOT( P_Spiral(-w-a_-2*k*!PI), Gang,$
  COLOR='blue', /OVERPLOT, THICK=3)

plot_teta_0_line = PLOT(x_, teta_0_line, /OVERPLOT, 'r',xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3, $
  NAME='Direction of max intensity')
  
plot_tangent = PLOT(x_, tangent_line, /OVERPLOT, 'g', xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3,linestyle=2, $
  NAME='Tangent to Parker spiral')
  
plot_R_q = POLARPLOT(fltarr(3600)+R_q, FINDGEN(3600)*(!PI/1800.), COLOR='black', THICK=3, /OVERPLOT)
  
plot_point_observer = scatterplot(R_q*cos(t_1), R_q*sin(t_1), SYMBOL='star',SYM_SIZE=2.0,SYM_COLOR = 'orange',Name='Observer',/SYM_FILLED, /OVERPLOT)

plot_point_tangent = scatterplot(R_AU*cos(tau_+!PI), R_AU*sin(tau_+!PI), SYMBOL='square',SYM_SIZE=0.7, $
  SYM_COLOR = 'green',/SYM_FILLED, NAME='Observed source Position', /OVERPLOT)

plot_point_Sun = scatterplot(0, 0, SYMBOL='circle',SYM_SIZE=4.0,SYM_COLOR = 'orange',/SYM_FILLED, /OVERPLOT)

leg = LEGEND(TARGET=[plot_teta_0_line, plot_tangent, plot_point_observer, plot_point_tangent], $
  POSITION=[1.7, 1.7], FONT_SIZE=10,$
  /DATA, /AUTO_TEXT_COLOR)



stop

;parameters 2

R_q = 1.0
t_0 = 2.1630637942749393
t_1 = 6.021385919380437
R_AU = 0.9989187398374607
tau_ = 2.8800336681219485
a_ = -3.7517547166237653 


q_0 = sin(t_1) - cos(t_1)*tan(t_0)
x_ = R_AU*cos(tau_+!PI)*FINDGEN(3600) + R_AU*cos(tau_+!PI)
A = 50.*(!PI/180.)
k = -FLOOR((a_ + !PI)/(!PI - a_))
w = -FINDGEN(3600)*(!PI/1800.)-2*k*!PI-a_
tangent_line = tangent_m(tau_, a_)*x_ + tangent_q(tau_, a_)
teta_0_line = tan(t_0)*x_ + q_0

Gang = w
Gmag = P_Spiral(w + a_)


plot_PS1 = POLARPLOT(P_Spiral(w+a_+2*k*!PI), Gang, COLOR='blue', THICK=3, DIM=[1000,1000],FONT_SIZE=15, /OVERPLOT, linestyle=2)
plot_PS2 = POLARPLOT( P_Spiral(-w-a_-2*k*!PI), Gang,$
  COLOR='blue', /OVERPLOT, THICK=3, linestyle=2)

plot_teta_0_line = PLOT(x_, teta_0_line, /OVERPLOT, 'r',xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3)

plot_tangent = PLOT(x_, tangent_line, /OVERPLOT, 'g', xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3,linestyle=2)


plot_point_observer = scatterplot(R_q*cos(t_1), R_q*sin(t_1), SYMBOL='star',SYM_SIZE=2.0,SYM_COLOR = 'orange',/SYM_FILLED, /OVERPLOT)

plot_point_tangent = scatterplot(R_AU*cos(tau_+!PI), R_AU*sin(tau_+!PI), SYMBOL='square',SYM_SIZE=0.7, $
  SYM_COLOR = 'green',/SYM_FILLED, /OVERPLOT)
  
  
stop
;Parameters 3
  
R_q = 1.0
t_0 = 2.660620841384187
t_1 = 6.021385919380437
R_AU = 0.5233497709716773
tau_ = 3.0890398088278324
a_ = -3.545748640978533     
 
  
q_0 = sin(t_1) - cos(t_1)*tan(t_0)
x_ = R_AU*cos(tau_+!PI)*FINDGEN(3600) + R_AU*cos(tau_+!PI)
A = 50.*(!PI/180.)
k = -FLOOR((a_ + !PI)/(!PI - a_))
w = -FINDGEN(3600)*(!PI/1800.)-2*k*!PI-a_
tangent_line = tangent_m(tau_, a_)*x_ + tangent_q(tau_, a_)
teta_0_line = tan(t_0)*x_ + q_0

Gang = w
Gmag = P_Spiral(w + a_)


plot_PS1 = POLARPLOT(P_Spiral(w+a_+2*k*!PI), Gang, COLOR='blue', THICK=3, DIM=[1000,1000],FONT_SIZE=15, /OVERPLOT,linestyle=2)
plot_PS2 = POLARPLOT( P_Spiral(-w-a_-2*k*!PI), Gang,$
  COLOR='blue', /OVERPLOT, THICK=3,linestyle=2)

plot_teta_0_line = PLOT(x_, teta_0_line, /OVERPLOT, 'r',xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3)

plot_tangent = PLOT(x_, tangent_line, /OVERPLOT, 'g', xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3,linestyle=2)


plot_point_observer = scatterplot(R_q*cos(t_1), R_q*sin(t_1), SYMBOL='star',SYM_SIZE=2.0,SYM_COLOR = 'orange',/SYM_FILLED, /OVERPLOT)

plot_point_tangent = scatterplot(R_AU*cos(tau_+!PI), R_AU*sin(tau_+!PI), SYMBOL='square',SYM_SIZE=0.7, $
    SYM_COLOR = 'green',/SYM_FILLED, /OVERPLOT)


;Parameters 4

R_q = 1.0
t_0 = 2.815998305218303
t_1 = 6.021385919380437
R_AU = 0.27358906876621303
tau_ = 3.0503624511504044
a_ = -3.2891139535221843
 

q_0 = sin(t_1) - cos(t_1)*tan(t_0)
x_ = R_AU*cos(tau_+!PI)*FINDGEN(3600) + R_AU*cos(tau_+!PI)
A = 50.*(!PI/180.)
k = -FLOOR((a_ + !PI)/(!PI - a_))
w = -FINDGEN(3600)*(!PI/1800.)-2*k*!PI-a_
tangent_line = tangent_m(tau_, a_)*x_ + tangent_q(tau_, a_)
teta_0_line = tan(t_0)*x_ + q_0

Gang = w
Gmag = P_Spiral(w + a_)


plot_PS1 = POLARPLOT(P_Spiral(w+a_+2*k*!PI), Gang, COLOR='blue', THICK=3, DIM=[1000,1000],FONT_SIZE=15, /OVERPLOT,linestyle=2)
plot_PS2 = POLARPLOT( P_Spiral(-w-a_-2*k*!PI), Gang,$
  COLOR='blue', /OVERPLOT, THICK=3,linestyle=2)

plot_teta_0_line = PLOT(x_, teta_0_line, /OVERPLOT, 'r',xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3)

plot_tangent = PLOT(x_, tangent_line, /OVERPLOT, 'g', xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3,linestyle=2)


plot_point_observer = scatterplot(R_q*cos(t_1), R_q*sin(t_1), SYMBOL='star',SYM_SIZE=2.0,SYM_COLOR = 'orange',/SYM_FILLED, /OVERPLOT)

plot_point_tangent = scatterplot(R_AU*cos(tau_+!PI), R_AU*sin(tau_+!PI), SYMBOL='square',SYM_SIZE=0.7, $
  SYM_COLOR = 'green',/SYM_FILLED, /OVERPLOT)

plot_point_Sun = scatterplot(0, 0, SYMBOL='circle',SYM_SIZE=4.0,SYM_COLOR = 'orange',/SYM_FILLED, /OVERPLOT)

plot_PS1_sav.save,'ParkerSpiralTangents.eps'

end
  
  
function Tangent_q, tau, a
compile_opt strictarr
A_ = 50.*(!PI/180.)
return, ((a+tau)/A_)*cos(tau)*(tan(tau) - (a+tau+tan(tau))/(1-(a+tau)*tan(tau)))
end
      
function Tangent_m, tau, a
  compile_opt strictarr

  return, (a+tau+tan(tau))/(1-(a+tau)*tan(tau))
end
  

function P_Spiral, tau
  compile_opt strictarr
  A_ = 50.*(!PI/180.)

  return, -tau/A_
end 
  

 