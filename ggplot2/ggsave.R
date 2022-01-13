# podemos salvar os dados que estamos gerando em arquivos com
# nome a nossa escolha usando a funcao ggsave("filename.png")
bar <- ggplot(books, aes(x=Language)) + geom_bar()
bar
ggsave("bar-example.png")
