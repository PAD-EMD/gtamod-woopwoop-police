# GTA MOD : Da Police Woop Woop

Deux commandes pour jouer tranquille sur un serveur FiveM : couper la recherche de la police, et empêcher les PNJ de lâcher leurs armes à leur mort.

## Fonctionnalités

- `/disablewanted` : active ou désactive la recherche par les forces de l'ordre.
  - Le niveau de recherche du joueur est remis à 0 en continu.
  - Les services de dispatch numérotés de 1 à 15 sont désactivés, **ambulances et pompiers compris**.
  - Quand la commande est désactivée, tous les services de dispatch sont réactivés.
- `/disableguns` : active ou désactive le fait que les PNJ lâchent leur arme quand ils meurent.
  - Les PNJ restent armés de leur vivant : ils ne sont pas désarmés, seul le butin à leur mort disparaît.
  - Le réglage n'est pas annulé sur les PNJ déjà traités quand la commande est désactivée.

Les deux commandes fonctionnent en bascule : la première fois elles s'activent, la deuxième fois elles se désactivent. Le retour (activé ou désactivé) s'affiche dans la console F8, pas à l'écran.

## Prérequis

- Serveur FiveM à jour avec accès admin

## Installation

1. Télécharger le dossier `woopwoop_police`
2. Copier le dossier `woopwoop_police` dans `resources/`
3. Ajouter `ensure woopwoop_police` dans ton `server.cfg`
4. Redémarrer le serveur

## Utilisation

Pour lancer la ressource sans redémarrer le serveur, dans la console du serveur :

```
start woopwoop_police
```

Ensuite, en jeu, dans le chat (touche T) ou dans la console F8 :

```
/disablewanted
/disableguns
```

## Structure du dossier

```
gtamod-woopwoop-police/
├── woopwoop_police/               # dossier du mod
│   ├── woopwoop_police.lua        # script principal
│   └── fxmanifest.lua
└── README.md
```

## Crédits

Tuto et Mod réalisés par :
Alice MASSART, PAD EMD 2026.

Code repris et conservé avec les copyrights de leurs auteurs d'origine (voir les en-têtes de `woopwoop_police.lua`) :

- Désactiver la recherche par les forces de l'ordre : KennethDev
- Désactiver les armes lâchées par les PNJ : Hjuiihu
