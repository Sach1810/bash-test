#!/bin/bash
skipIntegrityFileName="/Users/Sach1810/Desktop/bash-test/test/integrityExitCode.php"
fileName="/Users/Sach1810/Desktop/bash-test/test/Sacha.php"


integrityTypes=("CopyGlassAnalyzer" "CopyGlassAnalyzerVerify" "CopyGlassAnalyzerMultitilt" "CopyGlassScreenCalibration" "CopyGlassScreenCalibrationVerify" "CopyGlassPdAnalyze")

if [ -f "$skipIntegrityFileName" ]; 
  then 
  echo "sacha"
  exit 0;
fi



if [ ! -f "$fileName" ]; 
  then
    echo "Fatal PHP error occured in Integrity for All Integrity instances"
    exit 1;
fi

for i in "${integrityTypes[@]}"
do
  if ! grep -q $i $fileName;
    then
      echo "Fatal PHP error occured in Integrity"
      exit 1;
  fi
done





