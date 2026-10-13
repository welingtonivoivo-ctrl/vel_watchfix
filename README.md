# vel_watchfix

Script mínimo, só no cliente: quando o personagem estiver com um acessório listado em `config.lua`, ele é retirado na hora (fica como "sem acessório").

Caso atual: relógio nº 2 do modelo masculino (`mp_m_freemode_01`, prop 6), que parece vazio mas deixa uma marca solta nas costas. Na loja de roupas, escolher o nº 2 passa a deixar o pulso limpo.

Não altera o mri_Qappearance nem outros recursos. Para incluir outro acessório com defeito, acrescente em `Config.CleanProps`.
