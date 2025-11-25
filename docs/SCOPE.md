# 🎯 N4N - Scope del Proyecto

**N4N = Asistente de texto para escribir evoluciones de enfermería en Neovim**

---

## ✅ Lo que N4N ES

### 1. Editor de Texto Especializado
- **Neovim** configurado para escribir evoluciones de enfermería
- **Snippets clínicos** que se expanden con Tab
- **Archivos markdown** (.md) simples y portables

### 2. Herramienta de Productividad
- Escribir evoluciones **más rápido**
- Plantillas predefinidas para casos comunes
- No más copiar/pegar texto genérico

### 3. Solución Simple
- Config de Neovim aislada (no afecta tu setup personal)
- Solo archivos de texto
- Sin base de datos, sin servidor, sin complejidad

---

## ❌ Lo que N4N NO ES

### 1. NO es una Ficha Clínica Electrónica
- No reemplaza al EHR del hospital
- No almacena datos de pacientes
- No tiene interfaz gráfica

### 2. NO tiene Integraciones Complejas
- ❌ NO integra HL7/FHIR
- ❌ NO se conecta con el HIS
- ❌ NO sincroniza con sistemas externos

### 3. NO usa Tecnologías Avanzadas
- ❌ NO usa LLM/IA
- ❌ NO usa base de datos
- ❌ NO tiene backend/servidor

### 4. NO maneja Temas Legales
- Los temas legales son del EHR oficial
- N4N solo ayuda a **escribir** el texto
- La firma digital, trazabilidad, etc. = responsabilidad del EHR

---

## 🎯 Objetivo Real

**Ayudar a enfermeros a escribir evoluciones de forma más rápida y estructurada usando Neovim**

### Flujo de Trabajo

1. **Abrir Neovim** (con alias `n4n`)
2. **Crear archivo** de evolución: `evolucion-2025-11-25.md`
3. **Usar snippet**: `evo` + Tab → se expande plantilla completa
4. **Rellenar campos** navegando con Tab
5. **Guardar** archivo markdown
6. **Copiar/pegar** el texto al EHR oficial

**Eso es todo.** Simple y efectivo.

---

## 📦 Componentes del Proyecto

### Core (Lo Único Necesario)

1. **Configuración de Neovim**
   - `init.lua` básico
   - `lazy.nvim` (gestor de plugins)
   - `LuaSnip` (engine de snippets)

2. **Snippets Clínicos**
   - `evo` - Evolución completa por sistemas
   - `hcp` - Comando hemodinámico corto
   - `sno` - Estructura Sistema/Núcleo/Objetivo
   - (Otros según necesidad)

3. **Archivos Markdown**
   - Evoluciones guardadas como `.md`
   - Texto plano, portable, versionable con Git (opcional)

### Opcional (Nice to Have)

- **Plantillas** para diferentes turnos/casos
- **Diccionario médico** personalizado (spell check)
- **Snippets adicionales** según práctica real

---

## 🚫 Fuera de Scope (Explícitamente)

| Característica | Estado | Razón |
|----------------|--------|-------|
| Integración HL7/FHIR | ❌ Fuera | Complejidad innecesaria |
| Base de datos | ❌ Fuera | Archivos markdown son suficientes |
| LLM/IA | ❌ Fuera | No necesario para snippets simples |
| Interfaz gráfica | ❌ Fuera | Neovim es suficiente |
| Backend/Servidor | ❌ Fuera | Todo es local |
| Firma digital | ❌ Fuera | Responsabilidad del EHR |
| Cumplimiento legal | ❌ Fuera | Responsabilidad del EHR |
| Multi-usuario | ❌ Fuera | Uso personal |
| Sincronización | ❌ Fuera | Archivos locales |

---

## 🎓 Filosofía del Proyecto

### Principios

1. **Simplicidad primero**: No agregar complejidad innecesaria
2. **Texto plano**: Markdown es suficiente
3. **Velocidad**: Snippets bien diseñados > tecnología compleja
4. **Portabilidad**: Todo en archivos, sin dependencias externas
5. **Pragmatismo**: Resolver el problema real (escribir rápido) sin sobre-ingeniería

### Anti-Patrones a Evitar

- ❌ "Necesitamos IA para generar texto"
- ❌ "Debe integrarse con el HIS"
- ❌ "Requiere una arquitectura de microservicios"
- ❌ "Necesitamos blockchain para inmutabilidad"
- ❌ "Debe ser una app web con React"

**N4N es solo: Neovim + Snippets + Markdown. Nada más.**

---

## 📊 Comparación: N4N vs MedLogger (De los PDFs)

| Aspecto | MedLogger (PDFs) | N4N (Este Proyecto) |
|---------|------------------|---------------------|
| **Complejidad** | Alta (arquitectura completa) | Baja (solo editor) |
| **Integración** | HL7/FHIR, HIS | Ninguna |
| **IA/LLM** | Sí, para sugerencias | No |
| **Base de datos** | PostgreSQL | Ninguna (archivos .md) |
| **Backend** | SPA + API REST | Ninguno |
| **Firma digital** | GPG signing | No (del EHR) |
| **Multi-usuario** | Sí | No |
| **Propósito** | Reemplazar EHR | Asistir escritura |

**N4N toma solo la idea de snippets de MedLogger, nada más**

---

## 🚀 Roadmap Realista

### Fase 1: MVP (Mínimo Viable) - 1 semana
- [x] Estructura de carpetas
- [x] Análisis de documentación
- [ ] Config Neovim básica (init.lua)
- [ ] 3 snippets principales (evo, hcp, sno)
- [ ] Probar con 2-3 evoluciones reales

### Fase 2: Refinamiento - 2 semanas
- [ ] Agregar snippets específicos según uso real
- [ ] Ajustar plantillas basado en feedback
- [ ] Documentar flujo de trabajo completo

### Fase 3: Opcional - Futuro
- [ ] Más snippets según necesidad
- [ ] Plantillas por tipo de paciente
- [ ] Compartir config con otros enfermeros

**No hay Fase 4, 5, 6 con integraciones complejas**

---

## 💡 Casos de Uso Reales

### Caso 1: Turno de Noche en UPC

1. Abro terminal: `n4n`
2. Creo archivo: `:e turno-noche-2025-11-25.md`
3. Escribo: `evo` + Tab
4. Relleno los campos del paciente (navegando con Tab)
5. Guardo: `:w`
6. **Copio el texto al EHR del hospital**

**Tiempo**: 3-5 minutos por evolución (vs 10-15 minutos manual)

### Caso 2: Registro de Cambio Hemodinámico

1. En el archivo de evolución
2. Escribo: `hcp` + Tab
3. Completo: PAM de 75 → 58, contexto, DVA ajustada
4. Guardo
5. **Copio al EHR**

**Tiempo**: 30 segundos (vs 2-3 minutos manual)

---

## 🎯 Métricas de Éxito

### Objetivo Principal
**Reducir tiempo de documentación sin sacrificar calidad**

### Métricas Simples
- ⏱️ Tiempo por evolución: <5 minutos (vs 10-15 actual)
- 📝 Completitud: Todos los sistemas documentados
- 💪 Adopción personal: Uso diario en todos los turnos

### NO Medimos
- ❌ Usuarios simultáneos (es personal)
- ❌ Peticiones por segundo (no hay servidor)
- ❌ Tasa de conversión (no es producto comercial)
- ❌ Cumplimiento HIPAA (responsabilidad del EHR)

---

## 📚 Referencias Relevantes (De los PDFs)

### Lo que SÍ usamos de la investigación:
- ✅ Estructura de evolución por sistemas (Neuro, Hemo, Resp, etc.)
- ✅ Comandos cortos tipo `hcp` (Hemodinamia-Cambio-Presión)
- ✅ Plantillas SOAP/PIE como referencia
- ✅ Campos mínimos por sistema (GCS, PA, SatO2, etc.)

### Lo que NO implementamos:
- ❌ Shadow JSON
- ❌ Work Tree clínico complejo
- ❌ Algoritmos de ensamblaje narrativo
- ❌ Integración FHIR
- ❌ Audit trail cryptográfico
- ❌ Todo lo de "MedLogger CLI" como sistema completo

**Solo tomamos las IDEAS de snippets, no la arquitectura completa**

---

## 🎓 Lecciones de los PDFs

### Lo Valioso
Los PDFs nos enseñaron:
1. Qué campos son importantes por sistema clínico
2. Cómo estructurar una evolución completa
3. Comandos cortos que realmente se usan (hcp, vmp, dve)
4. Errores comunes en documentación (omisiones, ambigüedad)

### Lo Innecesario (Para Nuestro Caso)
Los PDFs proponen:
1. Arquitecturas complejas (microservicios, etc.)
2. Integraciones con HIS
3. Sistemas de IA/LLM
4. Bases de datos y backends

**Esto es innecesario para un asistente de texto simple**

---

## ✅ Resumen Ejecutivo

**N4N es:**
- Neovim + Snippets + Markdown
- Asistente de escritura, no ficha clínica
- Simple, local, sin integraciones

**N4N NO es:**
- Sistema completo de gestión clínica
- Reemplazo del EHR
- Solución enterprise con arquitectura compleja

**Objetivo:**
- Escribir evoluciones de enfermería más rápido
- Usando herramientas simples y efectivas

---

**Última actualización**: 2025-11-25  
**Autor**: @fegome90-cmd  
**Proyecto**: N4N - Nursing Neovim (Asistente de Texto)
