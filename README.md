# GTA MOD : Da Police Woop Woop

Coupe la recherche de la police pour jouer tranquille sur un serveur FiveM.

## Fonctionnalités

- `disablewanted` (touche **F6**) : active ou désactive la recherche par les forces de l'ordre.
  - Le niveau de recherche du joueur est remis à 0 en continu.
  - Les services de dispatch numérotés de 1 à 15 sont désactivés, **ambulances et pompiers compris**.
  - Quand la commande est désactivée, tous ces services de dispatch sont réactivés.

La commande fonctionne en bascule : la première fois elle s'active, la deuxième fois elle se désactive. L'état est affiché en notification au-dessus de la minimap (« Recherche désactivée » / « Recherche réactivée ») et écrit dans la console F8.

## Prérequis

- Serveur FiveM à jour avec accès admin

## Installation

1. Télécharge ce dépôt et renomme le dossier `gtamod-woopwoop-police` en `woopwoop_police`
2. Copie le dossier `woopwoop_police` dans `resources/`
3. Ajoute `ensure woopwoop_police` dans ton `server.cfg`
4. Redémarre le serveur

## Utilisation

Pour lancer la ressource sans redémarrer le serveur, dans la console du serveur :

```
start woopwoop_police
```

Ensuite, en jeu, appuie sur **F6**, ou tape la commande dans le chat (touche T) ou dans la console F8 :

```
/disablewanted
```

## Structure du dossier

```
woopwoop_police/
├─ client.lua           -- script principal
├─ fxmanifest.lua
└─ README.md
```

## Crédits

Tuto et mod réalisés par :
Alice MASSART, PAD EMD 2026.

Code repris et conservé avec le copyright de son auteur d'origine (voir l'en-tête de `client.lua`) :

- Désactiver la recherche par les forces de l'ordre : KennethDev
