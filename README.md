# 42api-cli

Voici deux scripts shell permettants d'interagir avec l'api de 42 (si vous avez l'utilitaire jq les resultats seront plus jolis)

Rien de transcendant a priori sauf que le repo integre aussi de l'autocompletion pour zsh permettant de naviguer beaucoup plus rapidement dans l'api!

![gif](https://i.postimg.cc/Xvnj7Twf/ezgif-com-gif-maker.gif)

## installation:

pour installer il suffit de lancer le script install.sh puis de configurer l'uid et le secret de votre application 42 dans zsh_conf.sh

## utilisation:

pour une page:
`apiget [endpoint] '[params]'`

pour plusieurs pages:
`apigetn [endpoint] [nombre de page] '[params]'`

(les parametres sont optionnels)
