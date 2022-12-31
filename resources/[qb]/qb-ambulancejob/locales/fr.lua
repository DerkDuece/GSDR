local Translations = {
    error = {
        canceled = 'Annulé',
        bled_out = 'Vous vous êtes vidé de votre sang...',
        impossible = 'Action Impossible...',
        no_player = 'Aucun joueur proche',
        no_firstaid = 'Vous avez besoin d\'un kit de premier secours',
        no_bandage = 'Vous avez besoin d\'un bandage',
        beds_taken = 'Les lits sont tous occupés...',
        possessions_taken = 'Tout vos objets ont été saisis...',
        not_enough_money = 'Vous n\'avez pas assez d\'argent sur vous...',
        cant_help = 'Vous ne pouvez pas aider cette personne...',
        not_ems = 'Vous n\'êtes pas EMS',
        not_online = 'Le joueur n\'est pas connecté'
    },
    success = {
        revived = 'Vous avez réanimé quelqu\'un',
        healthy_player = 'La personne est en bonne santé',
        helped_player = 'Vous avez aidé la personne',
        wounds_healed = 'Vos blessures ont été soignées !',
        being_helped = 'Quelqu\'un vous aide...'
    },
    info = {
        civ_died = 'Civil décédé',
        civ_down = 'Civil blessé',
        civ_call = 'Appel Civil',
        self_death = 'Eux-Même ou un PNJ',
        wep_unknown = 'Inconnu',
        respawn_txt = 'RÉAPPARAITRE DANS: ~r~%{deathtime}~s~ SECONDES',
        respawn_revive = 'MAINTENEZ [~r~E~s~] POUR %{holdtime} SECONDES POUR RÉAPPARAITRE PO $~r~%{cost}~s~',
        bleed_out = 'VOUS ALLEZ VOUS VIDER DE VOTRE SANG DANS: ~r~%{time}~s~ SECONDES',
        bleed_out_help = 'VOUS ALLEZ VOUS VIDER DE VOTRE SANG DANS: ~r~%{time}~s~ SECONDES, VOUS POUVEZ ÊTRE AIDÉ',
        request_help = 'APPUYEZ SUR [~r~G~s~] POUR DEMANDER DE L\'AIDE',
        help_requested = 'LES EMS ONT ÉTÉ NOTIFIÉ',
        amb_plate = 'AMBU', -- Should only be 4 characters long due to the last 4 being a random 4 digits
        heli_plate = 'LIFE', -- Should only be 4 characters long due to the last 4 being a random 4 digits
        status = 'Check Status',
        is_staus = 'Est %{status}',
        healthy = 'Vous êtes maintenant en parfaite santé !',
        safe = 'Coffre de l\'hopital',
        pb_hospital = 'Hopital de Pillbox',
        pain_message = 'Votre %{limb} est %{severity}',
        many_places = 'Vous avez mal à plusieurs endroits ...',
        bleed_alert = 'Vous êtes %{bleedstate}',
        ems_alert = 'Alerte EMS - %{text}',
        mr = 'M.',
        mrs = 'Mme.',
        dr_needed = 'Un docteur est demandé a l\'hopital de Pillbox',
        ems_report = 'Rapport EMS',
        message_sent = 'Message à envoyer',
        check_health = 'Verifier la santé de quelqu\'un',
        heal_player = 'Soigner quelqu\'un',
        revive_player = 'Réanimer une personne',
        revive_player_a = 'Réanimer quelqu\'un ou vous même (Admin Only)',
        player_id = 'ID joueur (Peut être vide)',
        pain_level = 'Definir le niveau de douleur d\'un joueur ou de vous même (Admin Only)',
        kill = 'Tuer un joueur ou vous même (Admin Only)',
        heal_player_a = 'Soigner un joueur ou vous même (Admin Only)',
    },
    mail = {
        sender = 'Hopital de Pillbox',
        subject = 'Coût Hopital',
        message = 'Cher(e) %{gender} %{lastname}, <br /><br />Par la présente, vous avez reçu un e-mail avec les coûts de la dernière visite à l\'hôpital.<br />Le coût final est: <strong>$%{costs}</strong><br /><br />Nous-vous souhaitons un bon rétablissement !'
    },
    states = {
        irritated = 'irrité',
        quite_painful = 'assez douloureux',
        painful = 'douloureux',
        really_painful = 'Vraiment douloureux',
        little_bleed = 'Saigne un peu...',
        bleed = 'Saigne...',
        lot_bleed = 'Saigne beaucoup...',
        big_bleed = 'Saigne enormément...',
    },
    menu = {
        amb_vehicles = 'Véhicules ambulanciers',
        status = 'Etat de santé',
        close = '⬅ Fermer le Menu',
    },
    text = {
        pstash_button = '[E] - Coffre Personnel',
        pstash = 'Coffre personnel',
        onduty_button = '[E] - Prendre son service',
        offduty_button = '[E] - Quitter son service',
        duty = 'En/Hors Service',
        armory_button = '[E] - Armurerie',
        armory = 'Armurerie',
        veh_button = '[E] - Prendre / Ranger un vehicule',
        heli_button = '[E] - Prendre / Ranger un helicoptère',
        elevator_roof = '[E] - Prendre l\'ascenseur jusqu\'au toit',
        elevator_main = '[E] - Prendre l\'ascenseur',
        bed_out = '[E] - Pour sortir du lit..',
        call_doc = '[E] - Appeler un docteur',
        call = 'Appeler',
        check_in = '[E] - S\'hospitaliser',
        check = 'Enregistrement',
        lie_bed = '[E] - Pour s\'allonger dans un lit'
    },
    body = {
        head = 'Tête',
        neck = 'Nuque',
        spine = 'Colonne vertebrale',
        upper_body = 'Haut du corp',
        lower_body = 'Bas du corp',
        left_arm = 'Bras gauche',
        left_hand = 'Main gauche',
        left_fingers = 'Doigts gauches',
        left_leg = 'Jambe gauche',
        left_foot = 'Pied gauche',
        right_arm = 'Bras droit',
        right_hand = 'Main droite',
        right_fingers = 'Doigts Droite',
        right_leg = 'Jambe droite',
        right_foot = 'Pied Droit',
    },
    progress = {
        ifaks = 'Prend un Kit de Soin Individuel...',
        bandage = 'Utilise un Bandage...',
        painkillers = 'Prend des anti-douleurs...',
        revive = 'Réanime la personne...',
        healing = 'Soigne les blessures...',
        checking_in = 'S\'enregistre...',
    },
    logs = {
        death_log_title = "%{playername} (%{playerid}) est mort",
        death_log_message = "%{killername} a tué %{playername} avec **%{weaponlabel}** (%{weaponname})",
    }
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
