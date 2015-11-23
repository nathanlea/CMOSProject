echo stepsize 50.0

ana="ana "

for i in {0..7}
do
ana+=" A[$i] B[$i]"
done
ana+=" subtract S clk Cout"
for i in {0..7}
do
ana+=" out[$i]"
done
echo $ana

for i in {0..7}
do
echo "l A[$i]"
echo "l B[$i]"
done
echo "h S"
echo "l subtract"
echo "clock clk 0 1"
echo "c"
echo "c"
echo "h subtract"
echo "c"
echo "c"
echo "l subtract"
for i in {0..7}
do
echo "h B[$i]"
done
echo "c"
echo "c"
echo "h subtract"
echo "c"
echo "c"
for i in {0..7}
do
echo "h A[$i]"
echo "l B[$i]"
done
echo "l subtract"
echo "c"
echo "c"
echo "h subtract"
echo "c"
echo "c"
for i in {0..7}
do
echo "l A[$i]"
echo "l B[$i]"
done
echo "l S"
echo "l subtract"
echo "c"
echo "c"
echo "h subtract"
echo "c"
echo "c"
echo "l subtract"
for i in {0..7}
do
echo "h B[$i]"
done
echo "c"
echo "c"
echo "h subtract"
echo "c"
echo "c"
for i in {0..7}
do
echo "h A[$i]"
echo "l B[$i]"
done
echo "l subtract"
echo "c"
echo "c"
echo "h subtract"
echo "c"
echo "c"
for i in {0..7}
do
echo "h B[$i]"
done
echo "l subtract"
echo "c"
echo "c"
echo "h subtract"
echo "c"
echo "c"
