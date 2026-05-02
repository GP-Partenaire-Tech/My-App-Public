# ⚙️ My Body Count App - Core Engine

[Français](#-français) | [English](#-english) | [Español](#-español)

---

## 🇫🇷 Français

### À propos
Bienvenue dans le repository **Core Engine** de "My Body Count App". Ce dépôt contient le moteur de données open-source (Open Core) développé en pur Dart. Il est responsable de la gestion de la base de données locale chiffrée, des opérations CRUD, de la cryptographie "Zero Knowledge" et de la logique analytique (calcul des statistiques). 

Ce module est conçu pour être totalement indépendant de l'interface utilisateur (UI) et ne contient aucune dépendance à Flutter.

### Stack Technique
*   **Langage :** Dart
*   **Base de données :** Isar Database
*   **Chiffrement :** AES-256 (via master key fournie par le client)
*   **Génération de code :** Freezed, Json_serializable

### Sécurité & Philosophie
L'application fonctionne sur un principe "Local First". Le moteur ne stocke jamais la clé de chiffrement. L'application cliente doit fournir la clé sécurisée à chaque instanciation pour déverrouiller la base de données.

### Licence
Ce code est publié sous la licence **Mozilla Public License 2.0 (MPL-2.0)**. 
Cela permet son utilisation au sein d'applications propriétaires (comme notre client mobile) tout en garantissant que les modifications apportées à ce moteur spécifique restent ouvertes et partagées avec la communauté.

---

## 🇬🇧 English

### About
Welcome to the **Core Engine** repository for "My Body Count App". This repository contains the open-source data engine (Open Core) developed in pure Dart. It handles the encrypted local database, CRUD operations, "Zero Knowledge" cryptography, and the analytics logic (calculating statistics).

This module is completely decoupled from the User Interface (UI) and contains no Flutter dependencies.

### Tech Stack
*   **Language:** Dart
*   **Database:** Isar Database
*   **Encryption:** AES-256 (via client-provided master key)
*   **Code Generation:** Freezed, Json_serializable

### Security & Philosophy
The app operates on a "Local First" principle. The engine never stores the encryption key. The client application must provide the secure key upon instantiation to unlock the database.

### License
This code is released under the **Mozilla Public License 2.0 (MPL-2.0)**.
This allows it to be used within proprietary applications (like our mobile client) while ensuring that modifications to this specific engine remain open and shared with the community.

---

## 🇪🇸 Español

### Acerca de
Bienvenido al repositorio **Core Engine** de "My Body Count App". Este repositorio contiene el motor de datos de código abierto (Open Core) desarrollado en Dart puro. Gestiona la base de datos local encriptada, las operaciones CRUD, la criptografía de "Conocimiento Cero" (Zero Knowledge) y la lógica analítica (cálculo de estadísticas).

Este módulo está diseñado para ser totalmente independiente de la interfaz de usuario (UI) y no contiene dependencias de Flutter.

### Stack Tecnológico
*   **Lenguaje:** Dart
*   **Base de datos:** Isar Database
*   **Cifrado:** AES-256 (vía clave maestra proporcionada por el cliente)
*   **Generación de código:** Freezed, Json_serializable

### Seguridad y Filosofía
La aplicación funciona bajo el principio "Local First". El motor nunca almacena la clave de cifrado. La aplicación cliente debe proporcionar la clave segura en cada instanciación para desbloquear la base de datos.

### Licencia
Este código se publica bajo la **Mozilla Public License 2.0 (MPL-2.0)**.
Esto permite su uso dentro de aplicaciones propietarias (como nuestro cliente móvil) asegurando al mismo tiempo que las modificaciones a este motor específico permanezcan abiertas y compartidas con la comunidad.