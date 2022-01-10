#  Digamos que você queira encontrar todos os pedidos feitos 
# por clientes com o primeiro nome 'Joyce'

orders %>%
  filter(first_name == 'Joyce')

# E se você tiver várias condições que deseja que sejam atendidas?
# Não é um problema! Para encontrar todos os pedidos feitos de couro
# sintético E que custem mais de 25:

orders %>%
  filter(shoe_material == 'faux-leather',price > 25)

# com operadores logicos
orders %>%
  filter(shoe_material == 'faux-leather'|price > 25)

# negação posso buscar todos os sapatos não vermelhos
orders %>%
  filter(!(shoe_color == "red"))