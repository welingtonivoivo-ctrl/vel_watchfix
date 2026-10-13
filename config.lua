-- Acessórios (props) que viram "sem acessório" assim que aparecem no personagem.
-- Formato: [modelo] = { [prop_id] = { drawable, drawable, ... } }
-- prop_id: 0 chapéu, 1 óculos, 2 orelha, 6 relógio, 7 pulseira.
Config = {}

Config.CleanProps = {
    -- Relógio nº 2 masculino do GTA: parece vazio, mas deixa uma marca solta nas costas.
    [`mp_m_freemode_01`] = { [6] = { 2 } },
}

-- Intervalo da conferência, em milissegundos.
Config.Interval = 500
