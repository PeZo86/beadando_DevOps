Az alkalmazás Python standard build rendszerével csomagolható

1. Build eszköz telepítéséhez a gyökérkönyvtárban az alábbi parancsot futtasd: 
python -m pip install --upgrade build parancs segítségével
2. Majd a gyökérkönyvtárban futtasd az alábbi parancsot:
python -m build
3. Sikeres futtatást követően a buildelt csomagok a dist/ mappában jönnek létre (.whl és .tar.gz) file nevek alatt
4. A build telepítésének ellenőrzése az alábbi paranccsal lehetséges:
pip install dist/*.whl
5. Majd futtasd a konzolban a devops-beadando parancsot.
