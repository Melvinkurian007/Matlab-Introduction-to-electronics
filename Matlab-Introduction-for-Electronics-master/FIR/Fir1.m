%Expriment 1
N=20
Y=hamming(N+1)
wc=0.25
b=fir1(N,wc,'low',Y)
[h,w]=freqz(b,1,256)
subplot(4,2,1)
plot(w/pi,20*log10(abs(h)))
ylabel("gain in db")
xlabel("normal frequenzy")
title("magnitude reprentation of FIR LPF(Hamming Window)")
subplot(4,2,2)
plot(w/pi,angle(h))
xlabel("normalized frequency")
ylabel("phase angle")
title("Phase response of FIR LPF(Hamming Window)")
%Experiment 2
N=20
Y=hamming(N+1)
wc=0.7
b=fir1(N,wc,'high',Y)
[h,w]=freqz(b,1,256)
subplot(4,2,3)
plot(w/pi,20*log10(abs(h)))
ylabel("gain in db")
xlabel("normal frequenzy")
title("magnitude reprentation of FIR HPF(Hamming Window)")
subplot(4,2,4)
plot(w/pi,angle(h))
ylabel("phase angle")
xlabel("normal frequenzy")
title("Phase response of FIR HPF(Hamming Window)")
%Experiment 3
N=20
Y=hamming(N+1)
wc=[0.5,0.8]
b=fir1(N,wc,'bandpass',Y)
[h,w]=freqz(b,1,256)
subplot(4,2,5)
plot(w/pi,20*log10(abs(h)))
ylabel("gain in db")
xlabel("normal frequenzy")
title("magnitude reprentation of FIR BPF(Hamming Window)")
subplot(4,2,6)
plot(w/pi,angle(h))
ylabel("phase angle")
xlabel("normal frequenzy")
title("Phase response of FIR BPF(Hamming Window)")
%Experiment 4
N=20
Y=hamming(N+1)
wc=[0.35,0.75]
b=fir1(N,wc,'stop',Y)
[h,w]=freqz(b,1,256)
subplot(4,2,7)
plot(w/pi,20*log10(abs(h)))
ylabel("gain in db")
xlabel("normal frequenzy")
title("magnitude reprentation of FIR BSF(Kaiser Window)")
subplot(4,2,8)
plot(w/pi,angle(h))
ylabel("phase angle")
xlabel("normal frequenzy")
title("Phase response of FIR BSF(Kaiser Window)")