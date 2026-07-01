# PepQuant
PepQuant is a short-read Proteoform quantification tool derived from the miniQuant source code.

This repository contains a short-read focused version of miniQuant, called PepQuant-S, adapted to run paired-end short reads quantification with the `PepQuant` command.

## Build
```bash
cd /ssd/ssz/PepQuant
make
```
## Docker build
```bash
docker build -t pepquant .
```

## Docker run
```bash
docker run --rm -v $(pwd):/app -w /app pepquant bash -lc "make"
```

> Note: `PepQuant` currently requires `ggcat` static libraries in `./lib` before `make` can finish. These are not included in this repository.
## Usage
```bash
./PepQuant quant -r reference.fa -1 SR_R1.fq.gz -2 SR_R2.fq.gz -o PepQuant_res
```

## Notes
- This version is based on the `miniQuant` short-read code path.
- You need the `ggcat` libraries expected by the Makefile in `./lib` to build successfully.
- Output files are written to the specified `-o` folder.
