# CAPGIPI P6 - IAWS010 - ANDRIANALY Jean - Livrables

## Objectif

Ce dépôt Github tend à répondre à la demande formulée de pouvoir créer rapidement par un script une machine virtuelle AWS via Terraform.
Les exigences sont les suivantes :

<ol>
  <li>Une instance Amazon Web Service (AWS) <a href="https://aws.amazon.com/fr/ec2/">EC2</a>.</li>
  <li>Une sécurisation par des <a href="https://docs.aws.amazon.com/fr_fr/AWSEC2/latest/UserGuide/ec2-key-pairs.html">clés</a>.</li>
  <li>Un Virtual Private Cloud <a href="https://docs.aws.amazon.com/fr_fr/vpc/latest/userguide/what-is-amazon-vpc.html">(VPC)</a>.</li>
  <li>Un backend au travers d'un <a href="https://aws.amazon.com/fr/s3/">Bucket S3</a>.</li>
  <li>Un code commenté</li>
  <li>Un fichier de variables</li>
</ol>
<br/>

![TP](https://github.com/BlacKnightHD/IAWS010/blob/main/TP.png?raw=true)

## Prérequis

La liste des éléments indispensables est la suivante :

<ul>
      <li>Un poste informatique sous <a href="https://www.microsoft.com/fr-fr/software-download/windows10">Windows 10</a> minimum</li>
      <li>Une connexion internet</li>
      <li>Un compte Amazon Web Service <a href="https://aws.amazon.com/fr/">(AWS)</a>.</li>
      <li>L'installation de <a href="https://aws.amazon.com/fr/cli/">AWS CLI</a>.</li>
      <li>L'installation de <a href="https://code.visualstudio.com/">VSCode</a> ou d'un éditeur de texte comme le bloc-note.</li>
      <li>L'installation de <a href="https://www.terraform.io/">Terraform.</li>
      <li>Savoir créer une paire de clés de sécurité dans AWS</li>
  </ul></li>

## Paramétrage
<ol>
	<li>Télécharger tous les fichiers suivant dans le même répertoire</li><br/>
	<ul>
      <li>terraform_mattka.tfvars </li> 
      <li>variables_mattka.tf </li> 
      <li>00_providers_mattka.tf </li> 
      <li>01_ressources_mattka.tf </li> 
	</ul>
<br/>
<li>Modifier le fichier terraform_mattka.tfvars pour saisir vos clés précédemment générées </li>
</ol>

```terraform
myaccesskey = "Saisir votre clé d'accès des informations d'identification de sécurité"
mysecretkey = "Saisir votre clé secrète des informations d'identification de sécurité"
```


## Execution

<ol>
<li>Lancer la commande <a href="https://developer.hashicorp.com/terraform/cli/commands/init">terraform init</a> qui initialise la configuration</li>

<br/>

```terraform
terraform init -var-file="terraform_mattka.tfvars"
```
</li>

<li>Lancer la commande <a href="https://developer.hashicorp.com/terraform/cli/commands/plan">terraform plan</a> qui planifie et prévisualise les futures modifications.</li>
<br/>

```terraform
terraform plan -var-file="terraform_mattka.tfvars"
```
</li>

<li>Lancer la commande <a href="https://developer.hashicorp.com/terraform/cli/commands/apply">terraform plan</a> qui applique les modifications précédemment validées.</li>
<br/>

```terraform
terraform apply -var-file="terraform_mattka.tfvars"
```
</li>

<li>Uniquement après avoir constaté le fonctionnement de la machine virtuelle, lancer la commande <a href="https://developer.hashicorp.com/terraform/cli/commands/destroy">terraform destroy</a> qui détruit tous les objets de la configuration.</li>
<br/>

```terraform
terraform destroy -var-file="terraform_mattka.tfvars"
```
</li>

</ol>

## Troubleshooting

Le plus dur a été la rédaction de ce readme.md

## Commentaires

Le plus dur a été la rédaction de ce readme.md
