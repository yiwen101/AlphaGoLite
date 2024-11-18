set -x
pwd
for i in {1..1}
do
    echo "Iteration $i"
    echo "Selfplay"
    time ../cpp/build/alphaGoLite selfplay

    echo "Train"
    time python3 ../python/train.py 

    echo "Export"
    time  python3 ../python/export_model.py
done

exit 0