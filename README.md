# 8-bit Gated Ring Oscillator Time-to-Digital Converter (GRO-TDC)

Este repositorio contiene el diseño, integración y banco de pruebas del **GRO-TDC de 8 bits** desarrollado por fellows de Fundación FULGOR para el programa de tapeout UNIC-CASS en la tecnología open-source **IHP SG13G2 (130 nm)**.

---

## 1. Estructura del Proyecto

La estructura reproducible del repositorio separa fuentes de diseño, verificación, datos históricos y dependencias:

```text
GRO-TDC/
├── .gitmodules              # Declaración de submódulos fijados a commits exactos
├── .gitignore               # Exclusión de archivos generados, temporales y extracciones
├── xschemrc                 # Configuración portable de rutas para Xschem
├── eda                      # Herramienta raíz para setup, diagnóstico, apertura y netlisting
├── tests/                   # Pruebas unitarias de la infraestructura EDA
├── design/
│   ├── schematic/           # Fuentes esquemáticas (.sch) y símbolos (.sym) del núcleo
│   └── layout/              # Vistas físicas (.gds) y registros de integración
├── verification/
│   └── testbenches/         # Bancos de pruebas esquemáticos (.sch) de bloques y celdas
├── drc/                     # Reglas y reportes de DRC en KLayout (minimal y maximal)
├── archive/                 # Paquetes zip históricos, esquemáticos antiguos y corridas previas
├── IHP-Open-PDK/            # Submódulo: PDK oficial IHP-GmbH/IHP-Open-PDK (rama dev)
└── openpdk-libraries/       # Submódulo: biblioteca de celdas openic-org (rama main)
```

---

## 2. Puesta en Marcha Reproducible

### Clonar el repositorio con submódulos
Si clona por primera vez:
```bash
git clone --recursive git@github.com:Fundacion-Fulgor/GRO-TDC.git
cd GRO-TDC
```

Si ya tenía el repositorio clonado o acaba de cambiar de rama:
```bash
./eda setup
```
`./eda setup` inicializa y sincroniza recursivamente los submódulos fijados en el índice de Git sin alterar cambios locales.

### Diagnóstico del entorno
Para comprobar el estado de los submódulos, la versión de Xschem y la configuración de rutas:
```bash
./eda doctor
```

---

## 3. Uso Diario con `./eda`

La herramienta `./eda` detecta si se ejecuta en el host y, si es necesario, ejecuta los comandos de diseño dentro del contenedor `iic-osic-tools2`:

### Abrir esquemáticos interactivamente
Abre el esquemático superior del núcleo (`design/schematic/GROTDC.sch`) por defecto:
```bash
./eda open
```

Para abrir cualquier otro bloque o banco de pruebas:
```bash
./eda open design/schematic/GRO.sch
./eda open verification/testbenches/tb_GRO.sch
```

### Generar netlists SPICE

Generar netlist estructural de simulación (salida en `runs/<nombre>/<nombre>.spice`):
```bash
./eda netlist design/schematic/GROTDC.sch
```

Generar netlist para LVS (habilita modo subcircuito y prefijos compatibles con Netgen):
```bash
./eda netlist design/schematic/GROTDC.sch --lvs
```

---

## 4. Fijar y Actualizar Dependencias a Commits Específicos

Las versiones del PDK y de las celdas de IO **no dependen de la instalación personal de cada desarrollador**, sino de punteros exactos controlados por Git:

- **PDK**: `IHP-Open-PDK` apunta al repositorio oficial `https://github.com/IHP-GmbH/IHP-Open-PDK.git` en la rama `dev`.
- **Celdas IO**: `openpdk-libraries` apunta a `https://github.com/openic-org/openpdk-libraries.git` en la rama `main`.

### ¿Cómo actualizar una dependencia a un commit específico?
1. Ingrese a la carpeta del submódulo:
   ```bash
   cd IHP-Open-PDK
   ```
2. Obtenga los últimos cambios o cambie al commit deseado:
   ```bash
   git fetch origin dev
   git checkout <hash_del_commit>
   cd ..
   ```
3. Verifique el estado en la raíz con `./eda doctor`.
4. Registre el nuevo puntero exacto en el repositorio principal:
   ```bash
   git add IHP-Open-PDK
   git commit -m "build: actualizar IHP-Open-PDK al commit <hash_del_commit>"
   git push origin main
   ```
5. Cuando otro miembro del equipo descargue los cambios, solo debe correr:
   ```bash
   git pull
   ./eda setup
   ```
   Esto asegura que todo el equipo trabaje exactamente sobre el mismo commit del PDK.
