# 🎮 FPS de Supervivencia Post-apocalíptico

[![Unity Version](https://img.shields.io/badge/Unity-2023.3.0f1-black?logo=unity)](https://unity.com)
[![Build Status](https://img.shields.io/github/workflow/status/username/fps-survival-postapocaliptico/CI-CD)](https://github.com/username/fps-survival-postapocaliptico/actions)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey)](https://github.com/username/fps-survival-postapocaliptico)


##  Descripción del Proyecto

Videojuego de supervivencia FPS ambientado en un mundo post-apocalíptico donde el jugador debe sobrevivir a una infección que ha convertido a la mayoría de la población en criaturas hostiles. El proyecto incluye mecánicas de combate, sigilo, gestión de recursos y una narrativa estructurada en 3 actos.

###  Características Principales

- **Combate Táctico**: Sistema de combate realista con diferentes tipos de armas
- **Supervivencia**: Gestión de recursos, hambre, sed y salud
- **Narrativa Inmersiva**: Historia estructurada en 3 actos con múltiples finales
- **Entornos Diversos**: 4 biomas principales (urbano, forestal, industrial, hospital)
- **Sistema de Sigilo**: Mecánicas de infiltración y evitación de enemigos

##  Inicio Rápido

### Prerrequisitos

- Unity 2023.3.0f1 o superior
- Visual Studio 2022 (recomendado) o Visual Studio Code
- Git LFS (para gestionar assets grandes)
- Windows 10/11 (64-bit)

### Instalación

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/username/fps-survival-postapocaliptico.git
   cd fps-survival-postapocaliptico
   ```

2. **Configurar Git LFS** (primera vez)
   ```bash
   git lfs install
   git lfs pull
   ```

3. **Abrir el proyecto en Unity**
   - Abrir Unity Hub
   - Click en "Open" y seleccionar la carpeta del proyecto
   - Unity descargará automáticamente los packages requeridos

4. **Configurar el proyecto**
   - Ir a Edit > Project Settings > Player
   - Configurar Company Name y Product Name
   - Verificar que la plataforma target sea Windows

##  Estructura del Proyecto

```
 Assets/
├──  Scripts/           # Código fuente del juego
│   ├── Gameplay/         # Mecánicas principales
│   ├── UI/              # Interfaces de usuario
│   └── Narrative/       # Sistema narrativo
├──  Art/              # Assets artísticos
│   ├── Models/          # Modelos 3D
│   ├── Textures/        # Texturas PBR
│   └── Animations/      # Animaciones
├──  Audio/            # Recursos de audio
├──  Scenes/           # Escenas del juego
│   ├── Barrios/         # Zona urbana
│   ├── Bosque/          # Cinturón forestal
│   ├── Industrial/      # Complejo industrial
│   └── Hospital/        # Hospital abandonado
└──  Documentation/    # GDD y documentación técnica
```

##  Ejecución de Pruebas

Este proyecto incluye un conjunto completo de pruebas unitarias y de integración.

```bash
# Ejecutar todas las pruebas
Unity -batchmode -projectPath . -testPlatform editmode -testResults results_editmode.xml

# Ejecutar pruebas en modo Play
Unity -batchmode -projectPath . -testPlatform playmode -testResults results_playmode.xml
```

##  Configuración de Desarrollo

### Unity Test Framework
- Versión: 1.1.33
- Cobertura de código habilitada
- Reportes HTML automáticos

### Control de Versiones
- **Git Flow**: Flujo de trabajo estructurado
- **Ramas principales**: `main` (producción), `develop` (desarrollo)
- **Ramas de soporte**: `feature/*`, `release/*`, `hotfix/*`, `qa/*`

##  Despliegue

El proyecto utiliza un pipeline CI/CD automatizado con GitHub Actions:

1. **Pruebas Automáticas**: Se ejecutan en cada pull request
2. **Build Multiplataforma**: Compilación automática para Windows
3. **Rolling Update**: Despliegue gradual sin downtime
4. **Monitoreo**: Métricas con Prometheus y Grafana

### Variables de Entorno Requeridas

Configurar en GitHub Secrets:
```
UNITY_LICENSE    # Licencia de Unity (base64)
UNITY_EMAIL      # Email de cuenta Unity
UNITY_PASSWORD   # Password de cuenta Unity
```

##  Estado del Proyecto

-  Mecánicas básicas de combate
-  Sistema de inventario
-  Nivel tutorial
-  Sistema de progresión (En desarrollo)
-  Niveles principales (En desarrollo)
-  Sistema multijugador (Planificado)

##  Contribución

1. Fork el repositorio
2. Crear una rama feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit los cambios (`git commit -am 'Add: nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Crear un Pull Request

### Convenciones de Código

- **Naming**: PascalCase para clases, camelCase para variables
- **Comments**: Documentar métodos públicos con XML comments
- **Testing**: Cada nueva funcionalidad debe incluir pruebas unitarias

##  Roadmap

### Q4 2025
- [ ] Completar niveles principales
- [ ] Implementar sistema de guardado
- [ ] Optimización de rendimiento

### Q1 2026
- [ ] Beta testing
- [ ] Pulido de UX/UI
- [ ] Preparación para lanzamiento

##  Equipo de Desarrollo

- **Axel Uriel Guzman Sanchez** 
- **Gustavo Cruz Zarraga** 


