# OpenCode Config – Instalación en Linux y macOS

Este repositorio contiene mi configuración personal de **OpenCode**, organizada para usarse mediante **enlaces simbólicos**. De esta forma, cualquier cambio que se haga en el repositorio (por ejemplo con un `git pull`) se refleja automáticamente en la configuración activa, sin necesidad de copiar y pegar archivos.

---

## 📌 Prerrequisitos

Antes de comenzar, asegúrate de tener instalado:

- **OpenCode**
- **Git**
- Un sistema operativo **Linux** o **macOS**

---

## 📂 Instalación

### 1. Ubicarse en el directorio de configuración del usuario

```bash
cd ~/.config
```

### 2. Clonar el repositorio

```bash
git clone https://github.com/jereok91/opencode_config.git
```

### 3. Crear el enlace simbólico del archivo principal de configuración

```bash
ln -s ~/.config/opencode_config/opencode.json ~/.config/opencode/opencode.json
```

### 4. Crear el directorio de temas (si no existe)

```bash
mkdir -p $HOME/.config/opencode/themes
```

### 5. Crear el enlace simbólico del tema

```bash
ln -s ~/.config/opencode_config/themes/jeremy.json ~/.config/opencode/themes/jeremy.json
```

✅ **Listo**. Ya tienes tu configuración de OpenCode funcionando mediante enlaces simbólicos.

A partir de ahora, si realizas:

```bash
cd $HOME/.config/opencode_config
git pull
```

los cambios se aplicarán automáticamente a OpenCode.

---

## 🗑️ Desinstalación / Eliminación de la configuración

Si deseas eliminar la configuración instalada siguiendo este método, ejecuta los siguientes comandos:

```bash
rm $HOME/.config/opencode.json
rm $HOME/.config/opencode/themes/jeremy.json
rm -r $HOME/.config/opencode/themes
rm -r $HOME/.config/opencode_config
```

> ⚠️ Nota: Estos comandos eliminan los enlaces simbólicos y el repositorio clonado, **no afectan OpenCode como aplicación**.

---

## ℹ️ Notas finales

- Este enfoque es ideal para mantener configuraciones versionadas.
- Puedes adaptar los nombres de los archivos o temas según tus necesidades.
- Funciona igual en **Linux** y **macOS**.
