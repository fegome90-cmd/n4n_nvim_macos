# 📐 Arquitectura N4N - Plan B (NVIM_APPNAME)

**Fecha de creación**: 2025-11-25  
**Estrategia**: Config paralela de Neovim usando variable de entorno `NVIM_APPNAME`  
**Ubicación del proyecto**: `/Users/felipe/Developer/n4n.dots-main/n4n-main`

---

## 🎯 Objetivo

Crear un entorno de Neovim especializado para **registros de enfermería (N4N)** que:

- ✅ **NO afecte** la configuración global de macOS
- ✅ **Coexista** con GentlemanNvim (configuración personal)
- ✅ Use **NVIM_APPNAME** para aislamiento completo
- ✅ Incluya **snippets clínicos** especializados

---

## 📁 Estructura de Carpetas

```
n4n-main/
├── config/                      # Configuración de Neovim (se copiará a ~/.config/nvim-n4n/)
│   └── nvim/
│       ├── lua/
│       │   ├── config/          # Configuraciones básicas
│       │   ├── plugins/         # Definiciones de plugins
│       │   └── n4n/             # Módulos específicos de N4N
│       ├── snippets/            # Snippets clínicos (evo3000, hcp, sno)
│       └── spell/               # Diccionario médico personalizado
│
├── registros/                   # Área de trabajo para registros de enfermería
│   ├── UPC/                     # Unidad de Pacientes Críticos
│   │   └── 2025/                # Registros por año
│   └── casos-prueba/            # Casos de validación de snippets
│
├── scripts/                     # Scripts de utilidad
│   └── (pendiente)              # Launcher, instalador, etc.
│
├── templates/                   # Plantillas de documentos
│   └── (pendiente)              # turno-diario.md, evolución.md, etc.
│
└── docs/                        # Documentación del proyecto
    └── ARCHITECTURE.md          # Este archivo
```

---

## 🔧 Estrategia de Aislamiento

### Método: NVIM_APPNAME

Neovim permite tener **múltiples configuraciones independientes** usando la variable `NVIM_APPNAME`:

**Por defecto**:

```bash
nvim                    # Lee desde ~/.config/nvim/ (GentlemanNvim)
```

**Con NVIM_APPNAME**:

```bash
NVIM_APPNAME=nvim-n4n nvim    # Lee desde ~/.config/nvim-n4n/ (N4N)
```

### Resultado

Dos Neovim completamente independientes:

- `~/.config/nvim/` → **GentlemanNvim** (configuración personal)
- `~/.config/nvim-n4n/` → **N4N** (configuración clínica)

---

## 📦 Componentes Principales

### 1. Configuración de Neovim (`config/nvim/`)

#### `init.lua`

- Bootstrap de lazy.nvim
- Opciones básicas (indentación, numeración, spelling)
- Carga de snippets VSCode-style
- Keymaps para navegación de snippets (Tab/Shift+Tab)

#### `lua/config/`

- Configuraciones generales
- Opciones de editor
- Keymaps globales

#### `lua/plugins/`

- Definiciones de plugins con lazy.nvim
- Mínimo requerido:
  - `L3MON4D3/LuaSnip` (engine de snippets)
  - `rafamadriz/friendly-snippets` (snippets VSCode)

#### `lua/n4n/`

- Módulos específicos de N4N
- Funciones auxiliares para registros clínicos
- (Futuro) Integración Telescope para menús por sistema

#### `snippets/`

- `package.json` - Metadata de snippets
- `markdown.json` - Snippets clínicos:
  - **evo3000**: Evolución por sistemas (71 campos)
  - **hcp**: Comando hemodinámico
  - **sno**: Sistema/Núcleo/Objetivo
  - (Futuro) Más comandos cortos (vmp, dve, dpl, inf, gli, bal)

#### `spell/`

- `medical.utf-8.add` - Diccionario de términos médicos

---

### 2. Registros (`registros/`)

Área de trabajo para pruebas y desarrollo de snippets:

#### `UPC/2025/`

- Registros de práctica de Unidad de Pacientes Críticos
- Estructura por año/mes según necesidad

#### `casos-prueba/`

- Casos de validación:
  - `caso1-shock-septico.md`
  - `caso2-vm-destete.md`
  - `caso3-onco-paliativo.md`

---

### 3. Scripts (`scripts/`)

Utilidades para facilitar el uso de N4N:

#### Launcher (pendiente)

```bash
# n4n-start.sh
export NVIM_APPNAME="nvim-n4n"
cd ~/Developer/n4n.dots-main/n4n-main/registros
nvim "$@"
```

#### Instalador (pendiente)

```bash
# install.sh
# Copia config/nvim/* a ~/.config/nvim-n4n/
# Crea alias en ~/.zshrc o ~/.config/fish/config.fish
```

---

### 4. Templates (`templates/`)

Plantillas markdown para flujos de trabajo:

- `turno-diario.md` - Estructura de turno completo
- `evolucion-completa.md` - Plantilla de evolución
- `incidente.md` - Reporte de evento adverso
- `relevo.md` - Traspaso de turno

---

## 🚀 Flujo de Instalación (Futuro)

1. **Copiar configuración a ~/.config/nvim-n4n/**

   ```bash
   cp -r n4n-main/config/nvim/* ~/.config/nvim-n4n/
   ```

2. **Crear alias**

   ```bash
   # En ~/.zshrc o ~/.config/fish/config.fish
   alias n4n="NVIM_APPNAME=nvim-n4n nvim"
   ```

3. **Primera ejecución**

   ```bash
   n4n
   # Lazy.nvim instalará plugins automáticamente
   ```

4. **Validar snippets**
   ```bash
   n4n registros/casos-prueba/test-evo.md
   # i → evo3000<Tab>
   ```

---

## 📊 Ventajas de esta Arquitectura

| Aspecto             | Beneficio                                               |
| ------------------- | ------------------------------------------------------- |
| **Aislamiento**     | ✅ Config clínica separada de config personal           |
| **Coexistencia**    | ✅ `nvim` (GentlemanNvim) y `n4n` funcionan en paralelo |
| **Reversibilidad**  | ✅ Fácil de borrar: solo `rm -rf ~/.config/nvim-n4n`    |
| **Aprovechamiento** | ✅ Usa el conocimiento de GentlemanNvim                 |
| **Portabilidad**    | ✅ Todo está en una carpeta, fácil de versionar         |

---

## 🔍 Comparación con Otras Alternativas

| Característica | Plan A (Agregar a GentlemanNvim) | **Plan B (NVIM_APPNAME)** | Plan C (XDG Aislado) |
| -------------- | -------------------------------- | ------------------------- | -------------------- |
| Tiempo setup   | 5 min                            | 30-45 min                 | 2-3 horas            |
| Complejidad    | 🟢 Muy simple                    | 🟡 Moderada               | 🔴 Alta              |
| Aislamiento    | ❌ Ninguno                       | ✅ **Completo**           | ✅✅ Total           |
| Espacio disco  | 0 MB                             | ~500 MB                   | ~500 MB              |
| Reversible     | ⚠️ Mezclado                      | ✅ **Muy fácil**          | ✅ Fácil             |

---

## 📝 Próximos Pasos

### Fase 1: Análisis (ACTUAL)

- [x] Crear estructura de carpetas
- [ ] Analizar documentos en `dev-docs/documents/`
- [ ] Definir configuración exacta de init.lua

### Fase 2: Configuración

- [ ] Crear `init.lua` mínimo
- [ ] Configurar lazy.nvim + LuaSnip
- [ ] Crear snippets clínicos base (evo3000, hcp, sno)

### Fase 3: Validación

- [ ] Copiar a `~/.config/nvim-n4n/`
- [ ] Crear alias `n4n`
- [ ] Probar 2-3 evoluciones de prueba

### Fase 4: Refinamiento

- [ ] Feedback de snippets
- [ ] Crear comandos adicionales según necesidad
- [ ] Optimizar flujo de trabajo

---

## 🔗 Relación con Gentleman.Dots

Este proyecto es un **fork especializado** de Gentleman.Dots:

- **Herencia**: Usa WezTerm, Fish, Zellij del repo original
- **Especialización**: Neovim enfocado en registros médicos
- **Aislamiento**: No modifica la config global de GentlemanNvim

---

## 📖 Referencias

- `dev-docs/planning/alternatives-existing-neovim.md` - Análisis de alternativas
- `dev-docs/planning/mac-implementation-tasklist.md` - Tasklist atómico
- `dev-docs/planning/mac-dev-environment.md` - Plan completo de 3 fases
- `dev-docs/README.md` - Índice general de documentación

---

**Última actualización**: 2025-11-25  
**Autor**: @fegome90-cmd  
**Proyecto**: N4N - NursingNvim
