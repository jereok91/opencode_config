#!/bin/bash

# Instalación automática de OpenCode Config con enlaces simbólicos
# Compatible con Linux y macOS

echo "🚀 Iniciando instalación de OpenCode Config..."

# 1. Ir al directorio de configuración
cd ~/.config || {
	echo "❌ No se pudo acceder a ~/.config"
	exit 1
}

# 2. Clonar el repositorio
echo "📥 Clonando repositorio..."
git clone https://github.com/jereok91/opencode_config.git || {
	echo "❌ Error al clonar el repositorio"
	exit 1
}

# 3. Crear el enlace simbólico del archivo principal de configuración
echo "🔗 Creando enlace simbólico de configuración principal..."
ln -s ~/.config/opencode_config/opencode.json ~/.config/opencode/opencode.json || {
	echo "❌ Error al crear enlace simbólico principal"
	exit 1
}

# 4. Crear el directorio de temas
echo "📁 Creando directorio de temas..."
mkdir -p $HOME/.config/opencode/themes || {
	echo "❌ Error al crear directorio de temas"
	exit 1
}

# 5. Crear el enlace simbólico del tema
echo "🎨 Creando enlace simbólico del tema..."
ln -s ~/.config/opencode_config/themes/jeremy.json ~/.config/opencode/themes/jeremy.json || {
	echo "❌ Error al crear enlace simbólico del tema"
	exit 1
}

echo "✅ ¡Instalación completada!"
echo ""
echo "🎯 Para actualizar la configuración en el futuro:"
echo "cd $HOME/.config/opencode_config && git pull"
echo ""
echo "🗑️ Para desinstalar:"
echo "rm $HOME/.config/opencode/opencode.json"
echo "rm $HOME/.config/opencode/themes/jeremy.json"
echo "rm -r $HOME/.config/opencode/themes"
echo "rm -r $HOME/.config/opencode_config"
