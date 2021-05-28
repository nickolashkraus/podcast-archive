# Podcast Archive

An archive of my favorite podcasts.

## Podcasts

### [Endurance Planet](https://www.enduranceplanet.com)

* [Official RSS Feed](https://www.enduranceplanet.com/feed)
* [Archive RSS Feed](https://archive.endurance-planet.s3.amazonaws.com/rss/endurance-planet.rss)

### [The Peter Attia Drive](https://peterattiamd.com/podcast)

* [Official RSS Feed](https://peterattiadrive.libsyn.com/rss)
* [Archive RSS Feed](https://archive.the-drive.s3.amazonaws.com/rss/the-drive.rss)

### [Security Now](https://twit.tv/shows/security-now)

* [Official RSS Feed](https://feeds.twit.tv/sn.xml)
* [Archive RSS Feed](https://archive.security-now.s3.amazonaws.com/rss/security-now.rss)

## Deployment

### Terraform

Set Terraform version via `tfenv`:

```bash
tfenv install $(cat .terraform-version) && tfenv use $(cat .terraform-version)
```

Deploy Terraform:

```bash
cd tf
terraform init
terraform apply
```
