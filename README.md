# 🇪🇨 Turismo Ecuador - Flutter

Aplicación móvil desarrollada en Flutter que muestra información de los principales sitios turísticos del Ecuador. El proyecto permite visualizar imágenes, descripciones, marcar lugares como favoritos y acceder directamente a su ubicación mediante Google Maps.

## 📱 Características

✅ Visualización de 10 sitios turísticos del Ecuador

✅ Imágenes representativas de cada lugar

✅ Descripción de cada atractivo turístico

✅ Sistema de favoritos interactivo

✅ Enlace directo a Google Maps

✅ Diseño responsivo y amigable

✅ Implementación de StatefulWidget y StatelessWidget

---

## 🏞️ Sitios Turísticos Incluidos

1. Mitad del Mundo - Quito
2. Parque Nacional Cotopaxi - Latacunga
3. Laguna Quilotoa - Cotopaxi
4. Baños de Agua Santa - Tungurahua
5. Parque Nacional Cajas - Cuenca
6. Malecón 2000 - Guayaquil
7. Montañita - Santa Elena
8. Parque Nacional Yasuní - Orellana
9. Isla San Cristóbal - Galápagos
10. Barrio Las Peñas - Guayaquil

---

## 🚀 Tecnologías Utilizadas

- Flutter
- Dart
- Material Design
- url_launcher
- Google Maps

---

## 📚 Conceptos Investigados

### StatelessWidget

Un StatelessWidget es un widget estático que no cambia su estado durante la ejecución de la aplicación. Se utiliza para mostrar información que permanece constante.

Ejemplos en el proyecto:

- ImageSection
- TextSection
- ButtonWithText

### StatefulWidget

Un StatefulWidget es un widget dinámico cuyo contenido puede cambiar durante la ejecución de la aplicación mediante el uso de setState().

Ejemplo en el proyecto:

- TitleSection

Se utiliza para gestionar el botón de favoritos y actualizar el contador en tiempo real.

---

## ⭐ Funcionalidad de Favoritos

Cada sitio turístico posee un ícono de favorito que permite:

- Agregar un favorito
- Quitar un favorito
- Actualizar el contador automáticamente

Esta funcionalidad fue implementada utilizando StatefulWidget y setState().

---

## 🗺️ Integración con Google Maps

La aplicación permite abrir Google Maps directamente desde el botón ROUTE para visualizar la ubicación del sitio turístico seleccionado.

Paquete utilizado:

```yaml
url_launcher
```

---

## 📸 Capturas de Pantalla

### Pantalla Principal



### Sitios Turísticos



### Favoritos



### Google Maps



---

## ⚙️ Compilación

### Ejecutar Proyecto

```bash
flutter run
```

### Generar APK Debug

```bash
flutter build apk --debug
```

### Generar APK Release

```bash
flutter build apk --release
```

---

## 👩‍💻 Autora

**Odaliz Balseca**

Desarrollo de Aplicaciones Móviles

Flutter - Primer Bimestre
