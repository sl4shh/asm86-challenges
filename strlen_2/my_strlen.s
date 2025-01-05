.section .text
.globl my_strlen

my_strlen:
    xor %rax, %rax        # Mettre %rax à zéro (caractère nul à rechercher)
    mov $-1, %rcx         # Initialiser %rcx à -1 (0xFFFFFFFFFFFFFFFF)
    repnz scasb           # Répéter scasb jusqu'à ce que %al (0) soit trouvé
    not %rcx              # Inverser les bits de %rcx
    dec %rcx              # Décrémenter %rcx pour obtenir la longueur de la chaîne
	mov %rcx,%rax
    ret                   # Retourner la longueur de la chaîne
