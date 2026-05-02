# AWS EKS 3-Tier GitOps

Terraform 기반으로 AWS VPC부터 구성하는 실습용 프로젝트입니다.

## VPC 생성

```bash
cd terraform
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
terraform apply
```

기본값은 서울 리전(`ap-northeast-2`)에 VPC 1개, public subnet 2개, private subnet 2개, Internet Gateway 1개를 생성합니다.

NAT Gateway는 비용이 발생하므로 기본값은 꺼져 있습니다. private subnet에서 외부 인터넷 접근이 필요하면 `terraform.tfvars`에서 다음 값을 켜세요.

```hcl
enable_nat_gateway = true
```
