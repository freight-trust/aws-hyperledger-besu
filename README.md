# AWS Supported Resource Types for Hyperledger Besu

## List of Config Automated Rules

[https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html)


## Amazon API Gateway

| **AWS Service**          | **Resource Type Value** | **Relationship**   | **Related Resource** |
|--------------------------|-------------------------|--------------------|----------------------|
| API Gateway              | AWS::ApiGateway::Stage  | is contained in    | ApiGateway Rest Api  |
| is associated with       | WAFRegional WebACL      |
| AWS::ApiGatewayV2::Stage | is contained in         | ApiGatewayV2 Api   |
| AWS::ApiGateway::RestApi | contains                | ApiGateway Stage   |
| AWS::ApiGatewayV2::Api   | contains                | ApiGatewayV2 Stage |



## Amazon Elastic Compute Cloud

| **AWS Service**                     | **Resource Type Value** | **Relationship**                    | **Related Resource** |
|-------------------------------------|-------------------------|-------------------------------------|----------------------|
| Amazon Elastic Compute Cloud        | AWS::EC2::Host\*        | contains                            | EC2 instance         |
| AWS::EC2::EIP                       | is attached to          | EC2 instance                        |
| Network interface                   |
| AWS::EC2::Instance                  | contains                | EC2 network interface               |
| is associated with                  | EC2 security group      |
| is attached to                      | Amazon EBS volume       |
| EC2 Elastic IP \(EIP\)              |
| is contained in                     | EC2 Dedicated host      |
| Route table                         |
| Subnet                              |
| Virtual private cloud \(VPC\)       |
| AWS::EC2::NetworkInterface          | is associated with      | EC2 security group                  |
| is attached to                      | EC2 Elastic IP \(EIP\)  |
| EC2 instance                        |
| is contained in                     | Route table             |
| Subnet                              |
| Virtual private cloud \(VPC\)       |
| AWS::EC2::SecurityGroup             | is associated with      | EC2 instance                        |
| EC2 network interface               |
| Virtual private cloud \(VPC\)       |
| AWS::EC2::NatGateway                | is contained in         | Virtual private cloud \(VPC\)       |
| is contained in                     | Subnet                  |
| AWS::EC2::EgressOnlyInternetGateway | is attached to          | Virtual private cloud \(VPC\)       |
| AWS::EC2::FlowLog                   | NA                      | NA                                  |
| AWS::EC2::VPCEndpoint               | is contained in         | Virtual private cloud \(VPC\)       |
| is attached to                      | Network interface       |
| is contained in                     | Subnet                  |
| is contained in                     | Route table             |
| AWS::EC2::VPCEndpointService        | is associated with      | ElasticLoadBalancingV2 LoadBalancer |
| AWS::EC2::VPCPeeringConnection      | is associated with      | Virtual private cloud \(VPC\)       |


## EC2 Pricing Chart 

| **EC2 Instance type**       | **Software/hr** | **EC2/hr** | **Total/hr** |
|-----------------------------|-----------------|------------|--------------|
| t2\.nano                    | $0              | $0\.01     | $0\.01       |
| t2\.micro                   | $0              | $0\.01     | $0\.01       |
| t2\.small                   | $0              | $0\.02     | $0\.02       |
| t2\.medium                  | $0              | $0\.05     | $0\.05       |
| t2\.large                   | $0              | $0\.09     | $0\.09       |
| t2\.xlarge                  | $0              | $0\.19     | $0\.19       |
| t2\.2xlarge                 | $0              | $0\.37     | $0\.37       |
| t3\.nano                    | $0              | $0\.01     | $0\.01       |
| t3\.micro                   | $0              | $0\.01     | $0\.01       |
| t3\.small                   | $0              | $0\.02     | $0\.02       |
| t3\.medium                  | $0              | $0\.04     | $0\.04       |
| t3\.large                   | $0              | $0\.08     | $0\.08       |
| t3\.xlarge                  | $0              | $0\.17     | $0\.17       |
| t3\.2xlarge                 | $0              | $0\.33     | $0\.33       |
| t3a\.nano                   | $0              | $0\.01     | $0\.01       |
| t3a\.micro                  | $0              | $0\.01     | $0\.01       |
| t3a\.small                  | $0              | $0\.02     | $0\.02       |
| t3a\.medium                 | $0              | $0\.04     | $0\.04       |
| t3a\.large                  | $0              | $0\.08     | $0\.08       |
| t3a\.xlarge                 | $0              | $0\.15     | $0\.15       |
| t3a\.2xlarge                | $0              | $0\.30     | $0\.30       |
| m4\.large                   | $0              | $0\.10     | $0\.10       |
| m4\.xlarge                  | $0              | $0\.20     | $0\.20       |
| m4\.2xlarge                 | $0              | $0\.40     | $0\.40       |
| m4\.4xlarge                 | $0              | $0\.80     | $0\.80       |
| m4\.10xlarge                | $0              | $2\.00     | $2\.00       |
| m4\.16xlarge                | $0              | $3\.20     | $3\.20       |
| m5\.largeVendor Recommended | $0              | $0\.10     | $0\.10       |
| m5\.xlarge                  | $0              | $0\.19     | $0\.19       |
| m5\.2xlarge                 | $0              | $0\.38     | $0\.38       |
| m5\.4xlarge                 | $0              | $0\.77     | $0\.77       |
| m5\.8xlarge                 | $0              | $1\.54     | $1\.54       |
| m5\.12xlarge                | $0              | $2\.30     | $2\.30       |
| m5\.16xlarge                | $0              | $3\.07     | $3\.07       |
| m5\.24xlarge                | $0              | $4\.61     | $4\.61       |
| m5\.metal                   | $0              | $4\.61     | $4\.61       |
| m5a\.large                  | $0              | $0\.09     | $0\.09       |
| m5a\.xlarge                 | $0              | $0\.17     | $0\.17       |
| m5a\.2xlarge                | $0              | $0\.34     | $0\.34       |
| m5a\.4xlarge                | $0              | $0\.69     | $0\.69       |
| m5a\.8xlarge                | $0              | $1\.38     | $1\.38       |
| m5a\.12xlarge               | $0              | $2\.06     | $2\.06       |
| m5a\.16xlarge               | $0              | $2\.75     | $2\.75       |
| m5a\.24xlarge               | $0              | $4\.13     | $4\.13       |
| m5ad\.large                 | $0              | $0\.10     | $0\.10       |
| m5ad\.xlarge                | $0              | $0\.21     | $0\.21       |
| m5ad\.2xlarge               | $0              | $0\.41     | $0\.41       |
| m5ad\.4xlarge               | $0              | $0\.82     | $0\.82       |
| m5ad\.12xlarge              | $0              | $2\.47     | $2\.47       |
| m5ad\.24xlarge              | $0              | $4\.94     | $4\.94       |
| m5d\.large                  | $0              | $0\.11     | $0\.11       |
| m5d\.xlarge                 | $0              | $0\.23     | $0\.23       |
| m5d\.2xlarge                | $0              | $0\.45     | $0\.45       |
| m5d\.4xlarge                | $0              | $0\.90     | $0\.90       |
| m5d\.8xlarge                | $0              | $1\.81     | $1\.81       |
| m5d\.12xlarge               | $0              | $2\.71     | $2\.71       |
| m5d\.16xlarge               | $0              | $3\.62     | $3\.62       |
| m5d\.24xlarge               | $0              | $5\.42     | $5\.42       |
| m5d\.metal                  | $0              | $5\.42     | $5\.42       |
| m5n\.large                  | $0              | $0\.12     | $0\.12       |
| m5n\.xlarge                 | $0              | $0\.24     | $0\.24       |
| m5n\.2xlarge                | $0              | $0\.48     | $0\.48       |
| m5n\.4xlarge                | $0              | $0\.95     | $0\.95       |
| m5n\.8xlarge                | $0              | $1\.90     | $1\.90       |
| m5n\.12xlarge               | $0              | $2\.86     | $2\.86       |
| m5n\.16xlarge               | $0              | $3\.81     | $3\.81       |
| m5n\.24xlarge               | $0              | $5\.71     | $5\.71       |
| m5dn\.large                 | $0              | $0\.14     | $0\.14       |
| m5dn\.xlarge                | $0              | $0\.27     | $0\.27       |
| m5dn\.2xlarge               | $0              | $0\.54     | $0\.54       |
| m5dn\.4xlarge               | $0              | $1\.09     | $1\.09       |
| m5dn\.8xlarge               | $0              | $2\.18     | $2\.18       |
| m5dn\.12xlarge              | $0              | $3\.26     | $3\.26       |
| m5dn\.16xlarge              | $0              | $4\.35     | $4\.35       |
| m5dn\.24xlarge              | $0              | $6\.53     | $6\.53       |
| c4\.large                   | $0              | $0\.10     | $0\.10       |
| c4\.xlarge                  | $0              | $0\.20     | $0\.20       |
| c4\.2xlarge                 | $0              | $0\.40     | $0\.40       |
| c4\.4xlarge                 | $0              | $0\.80     | $0\.80       |
| c4\.8xlarge                 | $0              | $1\.59     | $1\.59       |
| c5\.large                   | $0              | $0\.09     | $0\.09       |
| c5\.xlarge                  | $0              | $0\.17     | $0\.17       |
| c5\.2xlarge                 | $0              | $0\.34     | $0\.34       |
| c5\.4xlarge                 | $0              | $0\.68     | $0\.68       |
| c5\.9xlarge                 | $0              | $1\.53     | $1\.53       |
| c5\.12xlarge                | $0              | $2\.04     | $2\.04       |
| c5\.18xlarge                | $0              | $3\.06     | $3\.06       |
| c5\.24xlarge                | $0              | $4\.08     | $4\.08       |
| c5\.metal                   | $0              | $4\.08     | $4\.08       |
| c5d\.large                  | $0              | $0\.10     | $0\.10       |
| c5d\.xlarge                 | $0              | $0\.19     | $0\.19       |
| c5d\.2xlarge                | $0              | $0\.38     | $0\.38       |
| c5d\.4xlarge                | $0              | $0\.77     | $0\.77       |
| c5d\.9xlarge                | $0              | $1\.73     | $1\.73       |
| c5d\.12xlarge               | $0              | $2\.30     | $2\.30       |
| c5d\.18xlarge               | $0              | $3\.46     | $3\.46       |
| c5d\.24xlarge               | $0              | $4\.61     | $4\.61       |
| c5d\.metal                  | $0              | $4\.61     | $4\.61       |
| c5n\.large                  | $0              | $0\.11     | $0\.11       |
| c5n\.xlarge                 | $0              | $0\.22     | $0\.22       |
| c5n\.2xlarge                | $0              | $0\.43     | $0\.43       |
| c5n\.4xlarge                | $0              | $0\.86     | $0\.86       |
| c5n\.9xlarge                | $0              | $1\.94     | $1\.94       |
| c5n\.18xlarge               | $0              | $3\.89     | $3\.89       |
| c5n\.metal                  | $0              | $3\.89     | $3\.89       |
| x1\.16xlarge                | $0              | $6\.67     | $6\.67       |
| x1\.32xlarge                | $0              | $13\.34    | $13\.34      |
| x1e\.xlarge                 | $0              | $0\.83     | $0\.83       |
| x1e\.2xlarge                | $0              | $1\.67     | $1\.67       |
| x1e\.4xlarge                | $0              | $3\.34     | $3\.34       |
| x1e\.8xlarge                | $0              | $6\.67     | $6\.67       |
| x1e\.16xlarge               | $0              | $13\.34    | $13\.34      |
| x1e\.32xlarge               | $0              | $26\.69    | $26\.69      |
| r3\.large                   | $0              | $0\.17     | $0\.17       |
| r3\.xlarge                  | $0              | $0\.33     | $0\.33       |
| r3\.2xlarge                 | $0              | $0\.66     | $0\.66       |
| r3\.4xlarge                 | $0              | $1\.33     | $1\.33       |
| r3\.8xlarge                 | $0              | $2\.66     | $2\.66       |
| r4\.large                   | $0              | $0\.13     | $0\.13       |
| r4\.xlarge                  | $0              | $0\.27     | $0\.27       |
| r4\.2xlarge                 | $0              | $0\.53     | $0\.53       |
| r4\.4xlarge                 | $0              | $1\.06     | $1\.06       |
| r4\.8xlarge                 | $0              | $2\.13     | $2\.13       |
| r4\.16xlarge                | $0              | $4\.26     | $4\.26       |
| r5\.large                   | $0              | $0\.13     | $0\.13       |
| r5\.xlarge                  | $0              | $0\.25     | $0\.25       |
| r5\.2xlarge                 | $0              | $0\.50     | $0\.50       |
| r5\.4xlarge                 | $0              | $1\.01     | $1\.01       |
| r5\.8xlarge                 | $0              | $2\.02     | $2\.02       |
| r5\.12xlarge                | $0              | $3\.02     | $3\.02       |
| r5\.16xlarge                | $0              | $4\.03     | $4\.03       |
| r5\.24xlarge                | $0              | $6\.05     | $6\.05       |
| r5\.metal                   | $0              | $6\.05     | $6\.05       |
| r5a\.large                  | $0              | $0\.11     | $0\.11       |
| r5a\.xlarge                 | $0              | $0\.23     | $0\.23       |
| r5a\.2xlarge                | $0              | $0\.45     | $0\.45       |
| r5a\.4xlarge                | $0              | $0\.90     | $0\.90       |
| r5a\.8xlarge                | $0              | $1\.81     | $1\.81       |
| r5a\.12xlarge               | $0              | $2\.71     | $2\.71       |
| r5a\.16xlarge               | $0              | $3\.62     | $3\.62       |
| r5a\.24xlarge               | $0              | $5\.42     | $5\.42       |
| r5ad\.large                 | $0              | $0\.13     | $0\.13       |
| r5ad\.xlarge                | $0              | $0\.26     | $0\.26       |
| r5ad\.2xlarge               | $0              | $0\.52     | $0\.52       |
| r5ad\.4xlarge               | $0              | $1\.05     | $1\.05       |
| r5ad\.12xlarge              | $0              | $3\.14     | $3\.14       |
| r5ad\.24xlarge              | $0              | $6\.29     | $6\.29       |
| r5d\.large                  | $0              | $0\.14     | $0\.14       |
| r5d\.xlarge                 | $0              | $0\.29     | $0\.29       |
| r5d\.2xlarge                | $0              | $0\.58     | $0\.58       |
| r5d\.4xlarge                | $0              | $1\.15     | $1\.15       |
| r5d\.8xlarge                | $0              | $2\.30     | $2\.30       |
| r5d\.12xlarge               | $0              | $3\.46     | $3\.46       |
| r5d\.16xlarge               | $0              | $4\.61     | $4\.61       |
| r5d\.24xlarge               | $0              | $6\.91     | $6\.91       |
| r5d\.metal                  | $0              | $6\.91     | $6\.91       |
| r5n\.large                  | $0              | $0\.15     | $0\.15       |
| r5n\.xlarge                 | $0              | $0\.30     | $0\.30       |
| r5n\.2xlarge                | $0              | $0\.60     | $0\.60       |
| r5n\.4xlarge                | $0              | $1\.19     | $1\.19       |
| r5n\.8xlarge                | $0              | $2\.38     | $2\.38       |
| r5n\.12xlarge               | $0              | $3\.58     | $3\.58       |
| r5n\.16xlarge               | $0              | $4\.77     | $4\.77       |
| r5n\.24xlarge               | $0              | $7\.15     | $7\.15       |
| r5dn\.large                 | $0              | $0\.17     | $0\.17       |
| r5dn\.xlarge                | $0              | $0\.33     | $0\.33       |
| r5dn\.2xlarge               | $0              | $0\.67     | $0\.67       |
| r5dn\.4xlarge               | $0              | $1\.34     | $1\.34       |
| r5dn\.8xlarge               | $0              | $2\.67     | $2\.67       |
| r5dn\.12xlarge              | $0              | $4\.01     | $4\.01       |
| r5dn\.16xlarge              | $0              | $5\.34     | $5\.34       |
| r5dn\.24xlarge              | $0              | $8\.02     | $8\.02       |
| p2\.xlarge                  | $0              | $0\.90     | $0\.90       |
| p2\.8xlarge                 | $0              | $7\.20     | $7\.20       |
| p2\.16xlarge                | $0              | $14\.40    | $14\.40      |
| p3\.2xlarge                 | $0              | $3\.06     | $3\.06       |
| p3\.8xlarge                 | $0              | $12\.24    | $12\.24      |
| p3\.16xlarge                | $0              | $24\.48    | $24\.48      |
| g3\.4xlarge                 | $0              | $1\.14     | $1\.14       |
| g3\.8xlarge                 | $0              | $2\.28     | $2\.28       |
| g3\.16xlarge                | $0              | $4\.56     | $4\.56       |
| g3s\.xlarge                 | $0              | $0\.75     | $0\.75       |
| g4dn\.xlarge                | $0              | $0\.53     | $0\.53       |
| g4dn\.2xlarge               | $0              | $0\.75     | $0\.75       |
| g4dn\.4xlarge               | $0              | $1\.20     | $1\.20       |
| g4dn\.8xlarge               | $0              | $2\.18     | $2\.18       |
| g4dn\.12xlarge              | $0              | $3\.91     | $3\.91       |
| g4dn\.16xlarge              | $0              | $4\.35     | $4\.35       |
| h1\.2xlarge                 | $0              | $0\.47     | $0\.47       |
| h1\.4xlarge                 | $0              | $0\.94     | $0\.94       |
| h1\.8xlarge                 | $0              | $1\.87     | $1\.87       |
| h1\.16xlarge                | $0              | $3\.74     | $3\.74       |
| i2\.xlarge                  | $0              | $0\.85     | $0\.85       |
| i2\.2xlarge                 | $0              | $1\.71     | $1\.71       |
| i2\.4xlarge                 | $0              | $3\.41     | $3\.41       |
| i2\.8xlarge                 | $0              | $6\.82     | $6\.82       |
| i3\.large                   | $0              | $0\.16     | $0\.16       |
| i3\.xlarge                  | $0              | $0\.31     | $0\.31       |
| i3\.2xlarge                 | $0              | $0\.62     | $0\.62       |
| i3\.4xlarge                 | $0              | $1\.25     | $1\.25       |
| i3\.8xlarge                 | $0              | $2\.50     | $2\.50       |
| i3\.16xlarge                | $0              | $4\.99     | $4\.99       |
| i3\.metal                   | $0              | $4\.99     | $4\.99       |
| i3en\.large                 | $0              | $0\.23     | $0\.23       |
| i3en\.xlarge                | $0              | $0\.45     | $0\.45       |
| i3en\.2xlarge               | $0              | $0\.90     | $0\.90       |
| i3en\.3xlarge               | $0              | $1\.36     | $1\.36       |
| i3en\.6xlarge               | $0              | $2\.71     | $2\.71       |
| i3en\.12xlarge              | $0              | $5\.42     | $5\.42       |
| i3en\.24xlarge              | $0              | $10\.85    | $10\.85      |
| i3en\.metal                 | $0              | $10\.85    | $10\.85      |
| d2\.xlarge                  | $0              | $0\.69     | $0\.69       |
| d2\.2xlarge                 | $0              | $1\.38     | $1\.38       |
| d2\.4xlarge                 | $0              | $2\.76     | $2\.76       |
| d2\.8xlarge                 | $0              | $5\.52     | $5\.52       |
| z1d\.large                  | $0              | $0\.19     | $0\.19       |
| z1d\.xlarge                 | $0              | $0\.37     | $0\.37       |
| z1d\.2xlarge                | $0              | $0\.74     | $0\.74       |
| z1d\.3xlarge                | $0              | $1\.12     | $1\.12       |
| z1d\.6xlarge                | $0              | $2\.23     | $2\.23       |
| z1d\.12xlarge               | $0              | $4\.46     | $4\.46       |
| z1d\.metal                  | $0              | $4\.46     | $4\.46       |
