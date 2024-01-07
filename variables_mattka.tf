########################### Les variables sont créées dans l'ordre des fichiers providers puis ressources
# Création de la variable de la région de l'instance EC2. Par défaut la région sera eu-west-3
variable "regionchoice" {
	type = string
	description  = "Sélectionner la région AWS, idéalement, la plus proche géographiquement"
	default = "eu-west-3"
}

# Création de la variable de la clé d'accès des informations d'identification de sécurité
variable "myaccesskey" {
        type = string
        description = "Clé d'accès des informations d'identification  de sécurité"
}

# Création de la variable du secret d'accès des informations d'identification  de sécurité
variable "mysecretkey" {
        type = string
        description = "Secret d'accès des informations d'identification  de sécurité"
}

# Création de la variable du type d'Amazon Machine Images (AMI). Par défaut l'ID sera ami-02ea01341a2884771
variable "id_ami" {
        type = string
        description = "Sélection de l'ID Amazon Machine Images"
        default = "ami-02ea01341a2884771"
}

# Création de la variable du type d'instance. Par défaut le type sera t2.micro
variable "typeinstance" {
        type = string
	description = "Sélectionner le gabarit de l'instance EC2"
        default = "t2.micro"
}

# Création de la variable du nom de l'instance. Par défaut le nom sera "instancemattka"
variable "nominstance" {
        type = string
        description = "Saisir le nom de l'instance EC2 a créer"
        default = "instancemattka"
}

# Création de la variable de l'ID du Virtual Private Cloud de l'instance EC2. Par défaut l"ID du VPC sera vpc-072180b43f1dc233d
variable "id_vpc" {
    type = string
    default = "vpc-072180b43f1dc233d"
}

# Création de la variable du bloc réseau ipV4 du VPC. Par défaut le CIDR sera 172.31.0.0/16
variable "block_reseau_ipv4" {
    type = string
    default = "172.31.0.0/16"
}
