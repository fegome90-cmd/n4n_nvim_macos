# N4N - Nursing Neovim

**Asistente de texto para escribir evoluciones de enfermería más rápido**

---

## 🎯 ¿Qué es N4N?

**N4N es un editor de texto especializado (Neovim) con snippets clínicos**

### Lo que N4N ES ✅
- **Editor de texto** configurado para enfermería
- **Snippets** que se expanden con Tab (evo, hcp, sno)
- **Archivos markdown** simples (.md)
- **Herramienta personal** para escribir evoluciones rápido

### Lo que N4N NO ES ❌
- ❌ NO es una ficha clínica electrónica
- ❌ NO integra HL7/FHIR ni sistemas del hospital
- ❌ NO usa IA/LLM
- ❌ NO maneja temas legales (eso es del EHR)

**N4N = Neovim + Snippets + Markdown. Nada más.**

---

## 🚀 Flujo de Trabajo

1. Abrir Neovim: `n4n`
2. Crear evolución: `:e turno-2025-11-25.md`
3. Usar snippet: `evo` + Tab → plantilla completa
4. Rellenar campos (Tab para navegar)
5. Guardar: `:w`
6. **Copiar/pegar al EHR del hospital**

**Tiempo**: 3-5 min por evolución (vs 10-15 min manual)

---

## 📁 Estructura del Proyecto

```
n4n-main/
├── config/nvim/         # Configuración de Neovim (se copia a ~/.config/nvim-n4n/)
├── registros/           # Archivos markdown de evoluciones
├── scripts/             # Launcher y utilidades
├── templates/           # Plantillas markdown
└── docs/                # Documentación
    ├── SCOPE.md         # ⭐ Qué ES y NO ES N4N
    └── ARCHITECTURE.md  # Arquitectura técnica
```

---

## 📖 Documentación

**Empieza aquí**:
- [`docs/SCOPE.md`](./docs/SCOPE.md) - ⭐ **Lee esto primero** (qué es y no es N4N)
- [`docs/ARCHITECTURE.md`](./docs/ARCHITECTURE.md) - Detalles técnicos

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
