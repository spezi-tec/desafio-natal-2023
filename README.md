**Backend (Ruby on Rails):**
- Construir um backend em Ruby on Rails que forneça dados para a aplicação frontend.
- Criar pelo menos dois modelos relacionados ao tema do Natal.
- Implementar as operações básicas de CRUD (Create, Read, Update, Delete) para os modelos.
- Utilizar migrações para a criação e alteração de tabelas no banco de dados.
- Implementar uma API RESTful para comunicação com o frontend.

## Alterações:
 - Este código agora inclui validações no modelo Presente para garantir que o nome e a descricao estejam presentes. Além disso, adicionei um resgate para ActiveRecord::RecordNotFound no método set_presente para lidar com situações em que um presente não pode ser encontrado.

**Observações:**
- Como informado na entrevista inicial, não possuo experiência alguma com Ruby. O código foi todo gerado em Python e a conversão foi feita para o Ruby (espero que da forma correta).
