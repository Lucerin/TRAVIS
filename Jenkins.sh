#! /bin/sh

pip install -r requerimientos.txt
autopep8 -ir .
flake8 --max-complexity=5 --exclude=*.txt,.gitignore --max-line-length=200 .
lettuce Calculadora
cd CalculadoraUnitTest
python TestCalcultor.py
coverage run --branch TestCalcultor.py 
coverage report -m 
coverage html --title="cobertura del codigo mayor" 
