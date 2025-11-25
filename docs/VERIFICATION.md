# 🧪 Verificación de Instalación N4N

Sigue estos pasos para verificar que tu entorno N4N está correctamente configurado y aislado.

## 1. Instalación (Simulada)

Para probar la configuración sin modificar tu sistema global, puedes enlazar simbólicamente la carpeta de configuración:

```bash
# Asegúrate de que no exista una config previa
rm -rf ~/.config/nvim-n4n

# Crea el enlace simbólico
ln -s ~/Developer/n4n.dots-main/n4n-main/config/nvim ~/.config/nvim-n4n
```

## 2. Prueba de Aislamiento

Ejecuta el siguiente comando en tu terminal:

```bash
NVIM_APPNAME=nvim-n4n nvim
```

**Verificación**:
- [ ] Debería abrirse Neovim.
- [ ] Debería verse igual que GentlemanNvim (LazyVim).
- [ ] Lazy.nvim debería empezar a instalar plugins (esto es normal en la primera ejecución).

## 3. Prueba de Snippets

1. Dentro de Neovim (n4n), crea un archivo markdown de prueba:
   `:e test.md`
2. Entra en modo Insert (`i`).
3. Escribe `evo` y presiona `Tab` (o `Ctrl+e` dependiendo de tu config de LuaSnip, pero Tab es el estándar en Gentleman).
   - [ ] ¿Se expande la plantilla de evolución completa?
4. Escribe `hcp` y presiona `Tab`.
   - [ ] ¿Se expande el snippet de hemodinamia?

## 4. Prueba con Fish

1. Carga la función de prueba:
   ```fish
   source ~/Developer/n4n.dots-main/n4n-main/scripts/n4n.fish
   ```
2. Ejecuta `n4n`.
   - [ ] ¿Se abre Neovim correctamente?

## 5. Prueba con Zellij

1. Ejecuta el layout:
   ```bash
   zellij --layout ~/Developer/n4n.dots-main/n4n-main/templates/zellij-n4n.kdl
   ```
   - [ ] ¿Se abre Zellij con Neovim a la izquierda y terminales a la derecha?

---

## 🛠️ Solución de Problemas Common

- **Los snippets no cargan**: Verifica que `lua/plugins/n4n-snippets.lua` esté cargando correctamente y que la ruta en `paths` sea correcta. Puedes probar poniendo la ruta absoluta temporalmente para descartar problemas de `stdpath`.
- **Lazy.nvim da errores**: Si copiaste `lazy-lock.json`, podría haber discrepancias si tu versión de Neovim es diferente. Intenta borrar `lazy-lock.json` en `n4n-main/config/nvim/` y deja que se regenere.
