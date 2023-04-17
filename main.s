section .data
    message db 'Entrez le mot de passe :',0
    pass db 'azerty',0
    correct_msg db 'Mot de passe correct',0
    incorrect_msg db 'Mot de passe incorrect',0

section .bss
    buffer resb 10

section .text
    global _start

_start:
    ; Affichage du message
    mov eax, 4
    mov ebx, 1
    mov ecx, message
    mov edx, 23
    int 0x80

    ; Lecture de l'entrée utilisateur
    mov eax, 3
    mov ebx, 2
    mov ecx, buffer
    mov edx, 10
    int 0x80

    ; Comparaison avec le mot de passe
    mov edi, buffer
    mov esi, pass
    mov ecx, 6
    repe cmpsb
    jne wrong_pass

    ; Mot de passe correct
    mov eax, 4
    mov ebx, 1
    mov ecx, correct_msg
    mov edx, 20
    int 0x80

    ; Sortie du programme
    mov eax, 1
    xor ebx, ebx
    int 0x80

wrong_pass:
    ; Mot de passe incorrect
    mov eax, 4
    mov ebx, 1
    mov ecx, incorrect_msg
    mov edx, 22
    int 0x80

    ; Sortie du programme
    mov eax, 1
    xor ebx, ebx
    int 0x80

