# 🛠️ Plan de Implementación N4N (Opción B)

**Objetivo**: Configurar el entorno base de Neovim para N4N utilizando la configuración existente de GentlemanNvim, aislado mediante `NVIM_APPNAME`.

---

## 1. Estrategia de Configuración

Utilizaremos la **Opción B** (NVIM_APPNAME) para mantener el aislamiento sin perder la potencia de la configuración base.

- **Base**: Copia exacta de `GentlemanNvim` (LazyVim, Telescope, etc.)
- **Destino**: `n4n-main/config/nvim`
- **Aislamiento**: Variable `NVIM_APPNAME=nvim-n4n`
- **Integración**: Scripts para Fish y Layouts para Zellij

---

## 2. Pasos de Implementación

### Paso 1: Clonar Configuración Base
Copiar todo el contenido de `GentlemanNvim/nvim/` a `n4n-main/config/nvim/`.
Esto nos dará inmediatamente:
- ✅ Gestor de plugins `lazy.nvim`
- ✅ Configuración de `Telescope`
- ✅ Configuración de `LSP`, `Treesitter`, `CMP`
- ✅ Estética y keymaps base

### Paso 2: Limpieza y Adaptación
Una vez copiado, realizaremos ajustes menores en `n4n-main/config/nvim/`:
- Verificar `lazy-lock.json` (puede ser necesario regenerarlo o mantenerlo)
- Asegurar que `lua/config/options.lua` no tenga rutas absolutas hardcoded (generalmente LazyVim usa rutas relativas a stdpath, lo cual es perfecto para NVIM_APPNAME).

### Paso 3: Configuración de Snippets N4N
Preparar la estructura para nuestros snippets clínicos:
- Crear `n4n-main/config/nvim/snippets/package.json` (definición VSCode style)
- Crear `n4n-main/config/nvim/snippets/nursing.json` (donde irán `evo`, `hcp`, `sno`)
- Configurar `lua/plugins/n4n-snippets.lua` para cargar estos snippets.

### Paso 4: Integración con Shell (Fish)
Crear un script/función de Fish en `n4n-main/scripts/n4n.fish`:
```fish
function n4n
    set -x NVIM_APPNAME nvim-n4n
    nvim $argv
end
```

### Paso 5: Integración con Zellij
Crear un layout específico en `n4n-main/templates/zellij-n4n.kdl`:
- Panel principal con Neovim (`n4n`)
- Panel lateral/inferior para referencia o terminal

---

## 3. Estructura Resultante en `n4n-main`

```
n4n-main/
├── config/
│   └── nvim/                  # Clon de GentlemanNvim + Snippets N4N
│       ├── init.lua
│       ├── lazy-lock.json
│       ├── lua/
│       │   ├── config/
│       │   └── plugins/
│       │       └── n4n.lua    # Config específica N4N
│       └── snippets/          # Snippets clínicos
│           ├── package.json
│           └── nursing.json
├── scripts/
│   └── n4n.fish               # Alias para Fish
└── templates/
    └── zellij-n4n.kdl         # Layout de Zellij
```

---

## 4. Ejecución

1. **Copiar archivos base** (GentlemanNvim -> n4n-main/config/nvim)
2. **Crear archivos de configuración N4N** (snippets, plugins)
3. **Crear scripts de integración**

---

**Estado**: Planificación completada. Listo para ejecutar.
