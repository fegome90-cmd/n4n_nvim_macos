# N4N - NursingNvim

**Entorno de Neovim especializado para registros de enfermería**

---

## 🎯 Objetivo

Crear un entorno aislado de Neovim con **snippets clínicos** para documentación médica que:
- NO afecta tu configuración global de macOS
- Coexiste con GentlemanNvim
- Usa variable de entorno `NVIM_APPNAME=nvim-n4n`

---

## 📁 Estructura del Proyecto

```
n4n-main/
├── config/nvim/         # Configuración de Neovim → se copia a ~/.config/nvim-n4n/
├── registros/           # Área de trabajo para registros de enfermería
├── scripts/             # Scripts de utilidad (launcher, instalador)
├── templates/           # Plantillas de documentos
└── docs/                # Documentación del proyecto
    └── ARCHITECTURE.md  # Arquitectura completa del proyecto
```

---

## 📖 Documentación

**Para entender la arquitectura completa**, lee:
- [`docs/ARCHITECTURE.md`](./docs/ARCHITECTURE.md) - Arquitectura detallada del proyecto

**Documentación de referencia** (en repositorio principal):
- `../dev-docs/planning/alternatives-existing-neovim.md` - Comparación de alternativas
- `../dev-docs/planning/mac-implementation-tasklist.md` - Tasklist de implementación
- `../dev-docs/README.md` - Índice completo de documentación

---

## 🚧 Estado Actual

**Fase 1: Análisis y Planificación** (en progreso)
- [x] Estructura de carpetas creada
- [x] Documentación de arquitectura
- [ ] Análisis de documentos en `dev-docs/documents/`
- [ ] Configuración de Neovim
- [ ] Snippets clínicos

---

## 🔜 Próximos Pasos

1. Analizar documentos de referencia en `../dev-docs/documents/`
2. Crear configuración mínima de Neovim (`config/nvim/init.lua`)
3. Implementar snippets clínicos (evo3000, hcp, sno)
4. Validar con casos de prueba

---

## 🤝 Contribuir

Este es un proyecto personal basado en el fork de [Gentleman.Dots](https://github.com/Gentleman-Programming/Gentleman.Dots).

---

**Última actualización**: 2025-11-25  
**Autor**: @fegome90-cmd
