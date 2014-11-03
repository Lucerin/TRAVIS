#! /bin/sh

pip install -r requerimientos.txt
autopep8 -ir *
flake8 --max-complexity=5 --exclude=*.txt,.gitignore *
lettuce Calculadora
cd CalculadoraUnitTest
python TestCalcultor.py
coverage run --branch TestCalcultor.py 
coverage report -m 
coverage html -title="cobertura del codigo mayor" 
