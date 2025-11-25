diff --git a/README.md b/README.md
index f34b4ce8fa8e5824f68635f53580bf23ecedbabd..758fb453a633b260f38705613664d52d5a8a8e5b 100644
--- a/README.md
+++ b/README.md
@@ -1,90 +1,70 @@
 # N4N - Nursing Neovim
 
-**Asistente de texto para escribir evoluciones de enfermería más rápido**
+**Asistente de texto en Neovim para escribir evoluciones de enfermería más rápido**
 
 ---
 
 ## 🎯 ¿Qué es N4N?
 
-**N4N es un editor de texto especializado (Neovim) con snippets clínicos**
-
-### Lo que N4N ES ✅
-- **Editor de texto** configurado para enfermería
-- **Snippets** que se expanden con Tab (evo, hcp, sno)
-- **Archivos markdown** simples (.md)
-- **Herramienta personal** para escribir evoluciones rápido
+- **Editor de texto** (Neovim) aislado con `NVIM_APPNAME=nvim-n4n` para no tocar tu config personal.
+- **Snippets clínicos** (LuaSnip + VSCode-style) que se expanden con Tab.
+- **Archivos markdown** simples (.md) listos para copiar/pegar al EHR.
+- **Sin backend, sin base de datos, sin IA**: solo texto + productividad.
 
 ### Lo que N4N NO ES ❌
-- ❌ NO es una ficha clínica electrónica
-- ❌ NO integra HL7/FHIR ni sistemas del hospital
-- ❌ NO usa IA/LLM
-- ❌ NO maneja temas legales (eso es del EHR)
-
-**N4N = Neovim + Snippets + Markdown. Nada más.**
+- ❌ NO es una ficha clínica electrónica ni reemplaza al EHR.
+- ❌ NO integra HL7/FHIR ni sistemas hospitalarios.
+- ❌ NO maneja temas legales; es solo un editor especializado.
 
 ---
 
-## 🚀 Flujo de Trabajo
+## 🚀 Flujo de Trabajo Express
 
-1. Abrir Neovim: `n4n`
-2. Crear evolución: `:e turno-2025-11-25.md`
-3. Usar snippet: `evo` + Tab → plantilla completa
-4. Rellenar campos (Tab para navegar)
-5. Guardar: `:w`
-6. **Copiar/pegar al EHR del hospital**
+1. Abrir Neovim clínico: `NVIM_APPNAME=nvim-n4n nvim` (o alias `n4n`).
+2. Crear evolución: `:e turno-2025-11-25.md`.
+3. Usar snippet: `evo` + Tab → cabecera automática.
+4. Completar bloques por sistema (p.ej. `evon` para neuro) navegando con Tab.
+5. Guardar: `:w` y **copiar/pegar al EHR oficial**.
 
-**Tiempo**: 3-5 min por evolución (vs 10-15 min manual)
+Tiempo estimado: 3-5 min por evolución (vs 10-15 min manual).
 
 ---
 
-## 📁 Estructura del Proyecto
+## 📁 Estado del Repositorio
 
-```
-n4n-main/
-├── config/nvim/         # Configuración de Neovim (se copia a ~/.config/nvim-n4n/)
-├── registros/           # Archivos markdown de evoluciones
-├── scripts/             # Launcher y utilidades
-├── templates/           # Plantillas markdown
-└── docs/                # Documentación
-    ├── SCOPE.md         # ⭐ Qué ES y NO ES N4N
-    └── ARCHITECTURE.md  # Arquitectura técnica
-```
+- `config/nvim/`: Config completa basada en GentlemanNvim (LazyVim, LSP, Telescope) lista para copiar a `~/.config/nvim-n4n/`. Incluye loader de snippets VSCode y keymaps para choice nodes (`Ctrl+l` / `Ctrl+h`).
+- `config/nvim/snippets/`: Primeros snippets clínicos (`evo` cabecera de evolución y `evon` bloque neurológico) en `nursing.json` + `package.json` para VSCode-style.
+- `docs/`: Biblioteca de referencia (SCOPE, ARCHITECTURE, IMPLEMENTATION_PLAN, PDF-ANALYSIS, PHASE-1-SUMMARY, VERIFICATION). Resume el análisis de 9 PDFs clínicos y el plan de implementación.
+- `registros/`: Carpeta de trabajo para casos de prueba y UPC.
+- `scripts/` y `templates/`: Estructura creada; contenido pendiente.
 
 ---
 
-## 📖 Documentación
-
-**Empieza aquí**:
-- [`docs/SCOPE.md`](./docs/SCOPE.md) - ⭐ **Lee esto primero** (qué es y no es N4N)
-- [`docs/ARCHITECTURE.md`](./docs/ARCHITECTURE.md) - Detalles técnicos
+## ⚙️ Arranque Rápido Local
 
----
-
-## 🚧 Estado Actual
+1) Copia la configuración: `cp -r config/nvim ~/.config/nvim-n4n`.
+2) Crea alias temporal: `alias n4n="NVIM_APPNAME=nvim-n4n nvim"`.
+3) Lanza N4N: `n4n` y prueba los snippets `evo` / `evon` en un `.md`.
 
-**Fase 1: Análisis y Planificación** (en progreso)
-- [x] Estructura de carpetas creada
-- [x] Documentación de arquitectura
-- [ ] Análisis de documentos en `dev-docs/documents/`
-- [ ] Configuración de Neovim
-- [ ] Snippets clínicos
+> Tip: puedes añadir el alias a tu `~/.zshrc` o `~/.config/fish/config.fish`.
 
 ---
 
-## 🔜 Próximos Pasos
+## 🛣️ Roadmap
+
+- **Fase 1 (Análisis y planificación)**: 90% completo → estructura, docs y análisis de 9 PDFs listos; falta cerrar definición final de snippets.
+- **Fase 2 (Implementación)**: Configuración refinada de Neovim, creación de más snippets clínicos y scripts de instalación/launcher.
+- **Fase 3 (Validación)**: Copia en `~/.config/nvim-n4n/`, pruebas con casos reales y ajustes finales.
 
-1. Analizar documentos de referencia en `../dev-docs/documents/`
-2. Crear configuración mínima de Neovim (`config/nvim/init.lua`)
-3. Implementar snippets clínicos (evo3000, hcp, sno)
-4. Validar con casos de prueba
+Detalles paso a paso en `docs/PHASE-1-SUMMARY.md` y `docs/IMPLEMENTATION_PLAN.md`.
 
 ---
 
 ## 🤝 Contribuir
 
-Este es un proyecto personal basado en el fork de [Gentleman.Dots](https://github.com/Gentleman-Programming/Gentleman.Dots).
+Proyecto personal basado en el fork de [Gentleman.Dots](https://github.com/Gentleman-Programming/Gentleman.Dots). Pull requests y sugerencias de snippets clínicos son bienvenidos.
 
 ---
 
-**Última actualización**: 2025-11-25  
+**Última actualización**: 2025-11-25
 **Autor**: @fegome90-cmd
