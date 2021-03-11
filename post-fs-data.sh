#!/system/bin/sh
MODULE=/data/adb/modules
# Conflict module remover
if [ -e $MODULE/FDE ]; then
    touch $MODULE/FDE/remove
fi
if [ -e $MODULE/LiteProject ]; then
    touch $MODULE/LiteProject/remove
fi
if [ -e $MODULE/autoswitch ]; then
    touch $MODULE/autoswitch/remove
fi
if [ -e $MODULE/fkm_spectrum_injector ]; then
    touch $MODULE/fkm_spectrum_injector/remove
fi
if [ -e $MODULE/injector ]; then
    touch $MODULE/injector/remove
fi
if [ -e $MODULE/Ktks ]; then
    touch $MODULE/Ktks/remove
fi
if [ -e $MODULE/KTKSR ]; then
    touch $MODULE/KTKSR/remove
fi
if [ -e $MODULE/KLR ]; then
    touch $MODULE/KLR/remove
fi
if [ -e $MODULE/ZeroLAG ]; then
    touch $MODULE/ZeroLAG/remove
fi
if [ -e $MODULE/extreme ]; then
    touch $MODULE/extreme/remove
fi
if [ -e $MODULE/lazy ]; then
    touch $MODULE/lazy/remove
fi
if [ -e $MODULE/govTuner ]; then
    touch $MODULE/govTuner/remove
fi
if [ -e $MODULE/lspeed ]; then
    touch $MODULE/lspeed/remove
fi
if [ -e $MODULE/MAGNETAR ]; then
    touch $MODULE/MAGNETAR/remove
fi
if [ -e $MODULE/AuroxT ]; then
    touch $MODULE/AuroxT/remove
fi
if [ -e $MODULE/R.kashyap ]; then
    touch $MODULE/R.kashyap/remove
fi
if [ -e $MODULE/modul_mantul ]; then
    touch $MODULE/modul_mantul/remove
fi
for b in $MODULE/*injector*; do
    touch $b/remove;
done;
for b in $MODULE/Aurox*; do
    touch $b/remove;
done;
for b in $MODULE/AUROX*; do
    touch $b/remove;
done;
for b in $MODULE/*boost*; do
    touch $b/remove;
done;
for b in $MODULE/*Boost*; do
    touch $b/remove;
done;
for g in $MODULE/*gaming*; do
    touch $g/remove;
done;
for g in $MODULE/*Gaming*; do
    touch $g/remove;
done;
for g in $MODULE/*gpu*; do
    touch $g/remove;
done;
for g in $MODULE/*GPU*; do
    touch $g/remove;
done;
for g in $MODULE/*game*; do
    touch $g/remove;
done;
for g in $MODULE/*Game*; do
    touch $g/remove;
done;
for q in $MODULE/*quantum*; do
  touch $q/remove;
done;
for t in $MODULE/*tweak*; do
    touch $t/remove;
done;
