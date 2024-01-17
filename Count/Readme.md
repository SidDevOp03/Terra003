## Step-06: Understand about Splat Expression
- [Terarform Splat Expression](https://www.terraform.io/docs/language/expressions/splat.html)
- [Terraform element Function](https://www.terraform.io/docs/language/functions/element.html)
```t
# Terraform console
terraform console
element(["kalyan", "reddy", "daida"], 0)
element(["kalyan", "reddy", "daida"], 1)
element(["kalyan", "reddy", "daida"], 2)

# To get last element from list
length(["kalyan", "reddy", "daida"])
element(["kalyan", "reddy", "daida"], length(["kalyan", "reddy", "daida"])-1)