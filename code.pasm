0:      set_episode 00000000
        call 502
        BB_Map_Designate 00, 0000, 00, 00
        initial_floor 00000000
        set_floor_handler 00000000, 1000
        get_slotnumber R255
        ret 
1000:   jmpi_= R254, 00000001, 1002
        set R254
        leti R250, 000000E6
        leti R251, 00000000
        leti R252, 0000015D
        leti R253, 00006D5E
        p_setpos 00000000, R250
        leti R250, 0000010F
        leti R251, 00000000
        leti R252, 0000013B
        leti R253, 00009C3D
        p_setpos 00000001, R250
        leti R250, 000000A5
        leti R251, 00000000
        leti R252, 00000123
        leti R253, 0000557D
        p_setpos 00000002, R250
        leti R250, 0000009E
        leti R251, 00000000
        leti R252, 000000F0
        leti R253, 00004122
        p_setpos 00000003, R250
        ret 
1001:   message 00000064, 'Хочешь вернуться в лобби?'
        mesend 
        list R249, 'Нет<cr>Да'
        jmpi_= R249, 00000001, 1003
1002:   ret 
1003:   disable_movement2 R255
        p_action_disable 
        disable_mainmen 
        message 00000064, 'Ок'
        mesend 
        QEXIT 
        ret 
500:    STR: SF Refresh Point. 
501:    ret 
502:    read_global_flag 00000000, R110
        let R100, R110
        call 507
        call 527
        let R102, R100
        let R100, R110
        call 519
        let R110, R100
        call 508
        call 528
        let R102, R100
        let R100, R110
        call 520
        let R110, R100
        write_global_flag 00000000, R110
        get_slotnumber R100
        get_player_level R100, R102
        clear R100
        call 515
        leti R102, FFFFFFFF
        call 517
        let R111, R100
        thread 545
        thread 546
        thread 547
        ret 
503:    andi R100, 000000FF
        ret 
504:    leti R101, 00000008
        shift_right R100, R101
        andi R100, 000000FF
        ret 
505:    leti R101, 00000010
        shift_right R100, R101
        andi R100, 000000FF
        ret 
506:    leti R101, 00000018
        shift_right R100, R101
        ret 
507:    andi R100, 0000FFFF
        ret 
508:    leti R101, 00000010
        shift_right R100, R101
        ret 
509:    andi R115, 000000FF
        ret 
510:    leti R116, 00000008
        shift_right R115, R116
        andi R115, 000000FF
        ret 
511:    leti R116, 00000010
        shift_right R115, R116
        andi R115, 000000FF
        ret 
512:    leti R116, 00000018
        shift_right R115, R116
        ret 
513:    andi R115, 0000FFFF
        ret 
514:    leti R116, 00000010
        shift_right R115, R116
        ret 
515:    andi R100, FFFFFF00
        or R100, R102
        ret 
516:    andi R100, FFFF00FF
        leti R101, 00000008
        shift_left R102, R101
        or R100, R102
        ret 
517:    andi R100, FF00FFFF
        leti R101, 00000010
        shift_left R102, R101
        or R100, R102
        ret 
518:    andi R100, 00FFFFFF
        leti R101, 00000018
        shift_left R102, R101
        or R100, R102
        ret 
519:    andi R100, FFFF0001
        or R100, R102
        ret 
520:    andi R100, 0000FFFF
        leti R101, 00000010
        shift_left R102, R101
        or R100, R102
        ret 
521:    andi R115, FFFFFF00
        or R115, R117
        ret 
522:    andi R115, FFFF00FF
        leti R116, 00000008
        shift_left R117, R116
        or R115, R117
        ret 
523:    andi R115, FF00FFFF
        leti R116, 00000010
        shift_left R117, R116
        or R115, R117
        ret 
524:    andi R115, 00FFFFFF
        leti R116, 00000018
        shift_left R117, R116
        or R115, R117
        ret 
525:    andi R115, FFFF0001
        or R115, R117
        ret 
526:    andi R115, 0000FFFF
        leti R116, 00000010
        shift_left R117, R116
        or R115, R116
        ret 
527:    jmpi_< R100, 00000000, 539
        jmpi_> R100, 0000FFFF, 539
        ret 
528:    jmpi_< R100, 00000000, 539
        jmpi_> R100, 00002710, 539
        ret 
529:    jmpi_< R100, 00000001, 540
        jmpi_> R100, 000000C8, 540
        ret 
530:    jmpi_< R100, 00000000, 539
        jmpi_> R100, 000000FF, 539
        ret 
531:    jmpi_< R100, 00000000, 539
        jmpi_> R100, 000001F4, 539
        ret 
532:    jmpi_< R115, 00000000, 541
        jmpi_> R115, 0000FFFF, 541
        ret 
533:    jmpi_< R115, 00000000, 541
        jmpi_> R115, 00002710, 541
        ret 
534:    jmpi_< R115, 00000001, 542
        jmpi_> R115, 000000C8, 542
        ret 
535:    jmpi_< R115, 00000000, 541
        jmpi_> R115, 000000FF, 541
        ret 
536:    jmpi_< R115, 00000000, 541
        jmpi_> R115, 000001F4, 541
        ret 
537:    jmpi_> R100, 0000FFFF, 543
        ret 
538:    jmpi_> R100, 000001F4, 544
        ret 
539:    clear R100
        ret 
540:    let R100, R107
        ret 
541:    clear R115
        ret 
542:    get_slotnumber R115
        get_player_level R115, R116
        let R115, R116
        ret 
543:    leti R100, 0000FFFF
        ret 
544:    leti R100, 000001F4
        ret 
545:    sync 
        sync 
        sync 
        chk_ene_num R106
        jmpi_<= R106, 00000000, 545
        get_slotnumber R100
        get_player_level R100, R107
        let R100, R111
        call 503
        call 529
        jmp_> R107, R100, 548
        jmpi_>= R106, 000000FF, 545
        let R100, R111
        call 504
        call 530
        jmp_> R106, R100, 549
        jmp 545
546:    sync 
        sync 
        sync 
        keyword_detect 
        Keyword R105, 00000000, '='
        jmpi_= R105, 00000001, 550
        jmp 546
547:    sync 
        sync 
        sync 
        switch_jmp R104, 7:547:547:547:547:547:547:547
548:    let R103, R107
        let R102, R107
        let R100, R111
        call 515
        let R111, R100
        muli R103, 00000002
        let R100, R112
        call 507
        call 531
        add R100, R103
        call 538
        let R102, R100
        let R100, R112
        call 519
        let R112, R100
        scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Получено <r103> DP'
        jmp 545
549:    let R103, R106
        sub R103, R100
        let R102, R106
        let R100, R111
        call 516
        let R111, R100
        let R100, R110
        call 508
        divi R100, 000007D0
        addi R100, 00000001
        mul R103, R100
        let R100, R110
        call 507
        add R100, R103
        call 537
        let R102, R100
        let R100, R110
        call 519
        let R110, R100
        let R100, R112
        call 507
        call 531
        add R100, R103
        call 538
        let R102, R100
        let R100, R112
        call 519
        let R112, R100
        jmp 545
550:    p_action_disable 
        get_slotnumber R115
        disable_movement2 R115
        let R115, R110
        call 513
        call 532
        let R117, R115
        let R115, R110
        call 525
        let R110, R115
        call 514
        call 533
        let R117, R115
        let R115, R110
        call 526
        let R110, R115
        let R115, R111
        call 509
        call 534
        let R117, R115
        let R115, R111
        call 521
        let R111, R115
        call 510
        call 535
        let R117, R115
        let R115, R111
        call 522
        let R111, R115
        let R115, R112
        call 513
        call 531
        let R117, R115
        let R115, R112
        call 525
        let R112, R115
        write_global_flag 00000000, R110
551:    let R115, R110
        call 513
        let R120, R115
        let R115, R110
        call 514
        let R118, R115
        let R115, R112
        call 513
        let R119, R115
        list R121, 'Закрыть (<color 6>Убито: <r106><color 7>)<cr>Обновить (<color 6>EXp Points: <r118><color 7>)<cr><color 6>Delta Points: <r119><cr><color 6>Alpha Points: <r120><cr>Вернуться в лобби<cr>Купить/продать предмет<cr>Фотонный Билет (100 DP)<cr>Создать телепорт (0 DP)<cr>Установить координаты (0 DP)<cr>Возврат в координаты (0 DP)<cr>Переместить команду (0 DP)'
        switch_jmp R121, 11:554:551:556:557:551:551:551:551:551:551:551
552:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Данная супер функция не доступна в этом задании!'
        jmp 551
553:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Нет DP для обмена!'
        jmp 551
554:    p_action_enable 
        get_slotnumber R115
        enable_movement2 R115
        leti R105, 00000079
555:    sync 
        subi R105, 00000001
        jmpi_> R105, 00000000, 555
        jmp 546
556:    list R121, 'Назад<cr>Обменять на месеты'
        jmpi_= R121, 00000000, 551
        let R115, R112
        call 513
        call 536
        let R117, R115
        jmpi_<= R117, 00000000, 553
        muli R117, 0000000A
        pl_add_meseta2 R117
        scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Получено <r117> месет'
        leti R117, 00000000
        let R115, R112
        call 525
        let R112, R115
        jmp 551
557:    list R121, 'Назад<cr>Сохранить AP и XP'
        jmpi_= R121, 00000000, 551
        let R115, R110
        call 513
        call 532
        let R117, R115
        let R115, R110
        call 525
        let R110, R115
        call 514
        call 533
        let R117, R115
        let R115, R110
        call 526
        let R110, R115
        write_global_flag 00000000, R110
        scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Сохранение прошло успешно'
        jmp 551
