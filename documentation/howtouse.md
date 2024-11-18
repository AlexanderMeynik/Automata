[На основную страницу репозитория](..%2FREADME.md)
# Инструкция к использованию 

Собрать все комопненты:
```bash
./makeApps.sh
```

Скомпилировать .mil файл:
```bash
# will compile filename.mil into filename.ms
./compileMilan.sh &lt;filename.mil&gt;
```

```bash
# will compile filename.mil into filename2.ms
./compileMilan.sh &lt;filename.mil&gt &lt;filename2.ms&gt;
```

Запустить объектный файл на виртуальной машине:
```bash
# runs filename on vm
./runOnVm.sh &lt;filename&gt;
```
