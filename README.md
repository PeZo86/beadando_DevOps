PYTHON BUILD KÉSZÍTÉSE

Az alkalmazás Python standard build rendszerével csomagolható

1. Build eszköz telepítéséhez a gyökérkönyvtárban az alábbi parancsot futtasd: 
python -m pip install --upgrade build parancs segítségével
2. Majd a gyökérkönyvtárban futtasd az alábbi parancsot:
python -m build
3. Sikeres futtatást követően a buildelt csomagok a dist/ mappában jönnek létre (.whl és .tar.gz) file nevek alatt
4. A build telepítésének ellenőrzése az alábbi paranccsal lehetséges:
pip install dist/*.whl
5. Majd futtasd a konzolban a devops-beadando parancsot.


DOCKER IMAGE KÉSZÍTÉSE ÉS FUTTATÁSA VALAMINT EGY AUTOMATIZÁLÓ SCRIPT KÉSZÍTÉSE, FUTTATÁSA
1. Verziókövetés miatt a build folyamat előtt a pyproject.toml file-ban emelj verzió számot!
2. Töröld a gyökérkönyvtárban található dist/ könyvtárból a *.tar.gz és *.whl file-okat 
3. Mielőtt Docker image-t készítünk, a Python alkalmazást buildelni kell, melyhez futtasd:
python -m build
4. Ezután építheted a Docker image-t, melyhez a futtasd:
docker bulid -t devops_beadando:v1 .
5. Ezután futtasd a konténert az alábbi paranccsal:
docker run -p 8080:5001 devops_beadando:v1
6. Sikeres indítást követően konzolban az URL-re kattintva nyílik meg a böngészőben az app.

A teljes automatizálás érdekében készült egy run_all.sh script mely a fenti folyamatok automatizálás és a böngésző
automatikus megnyitását végzi el. Ehhez az alábbi parancsokat kell futtatni, csak ezeket:
1. Az IDE consoljában futtasd a gyökérkönyvtában:
chmod +x run_all.sh
2. ./run_all.sh
