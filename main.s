section .data
    msg db 'Hello, world!',0

section .text
    global _start

_start:
    mov eax,4       ; la fonction système 4 correspond à l'affichage sur la console
    mov ebx,1       ; le descripteur de fichier 1 correspond à la sortie standard (STDOUT)
    mov ecx,msg     ; la chaîne de caractères à afficher
    mov edx,13      ; le nombre de caractères à afficher
    int 0x80        ; appeler le noyau pour exécuter la fonction système

    mov eax,1       ; la fonction système 1 correspond à l'arrêt du programme
    xor ebx,ebx     ; retourner 0 (EXIT_SUCCESS)
    int 0x80        ; appeler le noyau pour exécuter la fonction système
