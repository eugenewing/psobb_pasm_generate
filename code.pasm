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
        let R115, R110
        call 514
        call 532
        let R117, R115
        let R115, R110
        call 526
        let R110, R115
        call 513
        call 533
        let R117, R115
        let R115, R110
        call 525
        let R110, R115
        write_global_flag 00000000, R110
        get_slotnumber R115
        get_player_level R115, R117
        clear R115
        call 521
        leti R117, FFFFFFFF
        call 524
        let R111, R115
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
507:    andi R100, 0000FFFF
        ret 
508:    leti R101, 00000010
        shift_right R100, R101
        andi R100, 0000FFFF
        ret 
515:    andi R100, FFFFFF00
        or R100, R102
        ret 
516:    andi R100, FFFF00FF
        leti R101, 00000008
        shift_left R102, R101
        or R100, R102
        ret 
520:    andi R100, 0000FFFF
        leti R101, 00000010
        shift_left R102, R101
        or R100, R102
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
        andi R115, 0000FFFF
        ret 
623:    leti R116, 00000010
        shift_left R115, R116
        shift_right R115, R116
        ret 
624:    leti R116, 00000010
        shift_right R115, R116
        ret 
521:    andi R115, FFFFFF00
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
525:    andi R115, FFFF0000
        or R115, R117
        ret 
526:    andi R115, 0000FFFF
        leti R116, 00000010
        shift_left R117, R116
        or R115, R117
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
536:    jmpi_< R115, 00000000, 541
        jmpi_> R115, 000001F4, 541
        ret 
561:    jmpi_< R115, 00000000, 541
        jmpi_> R115, 00000009, 541
        ret 
537:    jmpi_> R100, 0000FFFF, 543
        ret 
538:    jmpi_> R100, 000001F4, 544
        ret 
574:    jmpi_> R115, 00002710, 575
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
575:    leti R115, 00002710
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
        switch_jmp R104, 7:547:547:634:636:637:638:638
548:    let R103, R107
        let R102, R107
        let R100, R111
        call 515
        let R111, R100
        muli R103, 00000002
        let R100, R112
        call 508
        call 531
        add R100, R103
        call 538
        let R102, R100
        let R100, R112
        call 520
        let R112, R100
        scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R101, '<color 6>Получено <r103> DP'
        jmp 545
549:    let R103, R106
        sub R103, R100
        let R102, R106
        let R100, R111
        call 516
        let R111, R100
        let R100, R110
        call 507
        call 528
        divi R100, 000007D0
        addi R100, 00000001
        mul R103, R100
        let R100, R110
        call 508
        call 527
        add R100, R103
        call 537
        let R102, R100
        let R100, R110
        call 520
        let R110, R100
        let R100, R112
        call 508
        call 531
        add R100, R103
        call 538
        let R102, R100
        let R100, R112
        call 520
        let R112, R100
        jmp 545
578:    let R115, R110
        call 513
        call 533
        add R115, R118
        call 574
        let R117, R115
        let R115, R110
        call 525
        let R110, R115
        ret 
550:    p_action_disable 
        get_slotnumber R115
        disable_movement2 R115
        let R115, R110
        call 514
        call 532
        let R117, R115
        let R115, R110
        call 526
        let R110, R115
        call 513
        call 533
        let R117, R115
        let R115, R110
        call 525
        let R110, R115
        let R115, R112
        call 514
        call 536
        let R117, R115
        let R115, R112
        call 526
        let R112, R115
        write_global_flag 00000000, R110
551:    let R115, R110
        call 514
        let R120, R115
        let R115, R110
        call 513
        let R118, R115
        let R115, R112
        call 514
        let R119, R115
        list R121, 'Ver.1.0.0 (<color 6>Убито: <r106><color 7>)<cr>Обновить (<color 6>EXp Points: <r118><color 7>)<cr><color 6>Delta Points: <r119><cr><color 6>Alpha Points: <r120><cr>Вернуться в лобби<cr>Купить/продать<cr>Фотонный Билет (100 DP)<cr>Создать телепорт (0 DP)<cr>Установить координаты (0 DP)<cr>Возврат в координаты (0 DP)<cr>Переместить команду (0 DP)'
        switch_jmp R121, 11:554:551:556:557:558:559:612:612:612:612:628
554:    p_action_enable 
        get_slotnumber R115
        enable_movement2 R115
        leti R105, 00000079
555:    sync 
        subi R105, 00000001
        jmpi_> R105, 00000000, 555
        jmp 546
552:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Данная супер функция не доступна в этом задании!'
        jmp 551
553:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Нет DP для обмена!'
        jmp 551
560:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Дождитесь окончания использования<cr>системы другим охотником!'
        jmp 551
563:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Не выбран предмет из списка!'
        sync_register R104, 00000000
        jmp 559
568:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>У вас слишком много предметов<cr>данного типа!'
        sync_register R104, 00000000
        ret 
570:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Ваш инвентарь полон!'
        sync_register R104, 00000000
        ret 
572:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Не достаточно месет для покупки!'
        sync_register R104, 00000000
        ret 
573:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Куплено. Количество: <r105>'
        sync_register R104, 00000000
        clear R121
        leti R118, 00000001
        call 578
        ret 
576:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>У вас нет предметов данного типа!'
        sync_register R104, 00000000
        ret 
577:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Предмет продан'
        sync_register R104, 00000000
        clear R121
        ret 
608:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Остальные предметы проданы'
        sync_register R104, 00000000
        jmp 559
609:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Выбран предмет <r117>'
        sync_register R104, 00000000
        jmp 559
613:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Вы сейчас не можете использовать<cr>супер функции!'
        sync_register R104, 00000000
        jmp 551
617:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Не достаточно DP!'
        sync_register R104, 00000000
        jmp 551
618:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>У вас слишком много<cr>фотонных билетов!'
        sync_register R104, 00000000
        jmp 551
621:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Эта супер функция не может быть<cr>использована здесь!'
        sync_register R104, 00000000
        jmp 551
626:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Координаты не установлены!'
        sync_register R104, 00000000
        jmp 551
627:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Координаты установлены<cr>в другой локации!'
        sync_register R104, 00000000
        jmp 551
630:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Выбранный слот используется вами!'
        sync_register R104, 00000000
        jmp 551
631:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Нет охотника в выбранном слоте!'
        sync_register R104, 00000000
        jmp 551
632:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Охотник в выбранном слоте<cr>не может быть перемещен сейчас!'
        sync_register R104, 00000000
        jmp 551
633:    scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 4>Охотник в выбранном слоте<cr>находится в другой локации!'
        sync_register R104, 00000000
        jmp 551
556:    list R121, 'Назад<cr>Обменять на месеты'
        jmpi_= R121, 00000000, 551
        let R115, R112
        call 514
        call 536
        let R117, R115
        jmpi_<= R117, 00000000, 553
        muli R117, 0000000A
        pl_add_meseta2 R117
        scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Получено <r117> месет'
        leti R117, 00000000
        let R115, R112
        call 526
        let R112, R115
        jmp 551
557:    list R121, 'Назад<cr>Сохранить AP и XP'
        jmpi_= R121, 00000000, 551
        let R115, R110
        call 514
        call 532
        let R117, R115
        let R115, R110
        call 526
        let R110, R115
        call 513
        call 533
        let R117, R115
        let R115, R110
        call 525
        let R110, R115
        write_global_flag 00000000, R110
        scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Сохранение прошло успешно'
        jmp 551
558:    list R121, 'Назад<cr>Подтвердить возврат'
        jmpi_= R121, 00000000, 551
        get_slotnumber R115
        disable_movement2 R115
        p_action_disable 
        disable_mainmen 
        let R115, R110
        call 514
        call 532
        let R117, R115
        let R115, R110
        call 526
        let R110, R115
        call 513
        call 533
        let R117, R115
        let R115, R110
        call 525
        let R110, R115
        write_global_flag 00000000, R110
        let R115, R112
        call 514
        call 536
        QEXIT 
        jmpi_<= R115, 00000000, 501
        muli R115, 0000000A
        pl_add_meseta2 R115
        ret 
559:    call 610
        list R121, 'Назад (<color 6>Предмет: <r117><color 7>)<cr>Купить<cr>Продать<cr>Продать остальное<cr>1. Мономат-50/25<cr>2. Димат-300/150<cr>3. Монофлюид-100/50<cr>4. Дифлюид-500/250<cr>5. Противоядие-60/30<cr>6. Антипаралич-60/30<cr>7. Солнечный спрей-300/150<cr>8. Лунный спрей-500/250<cr>9. Детектор ловушек-100/50'
        jmpi_= R121, 00000000, 551
        jmpi_> R104, 00000000, 560
        sync_register R104, 00000001
        subi R121, 00000001
        switch_jmp R121, 12:562:562:579:564:564:564:564:564:564:564:564:564
610:    let R115, R111
        call 511
        call 561
        let R117, R115
        ret 
562:    jmpi_= R117, 00000000, 563
        get_slotnumber R115
        switch_jmp R117, 10:501:583:584:585:586:587:588:589:590:591
579:    jmpi_= R117, 00000000, 563
        get_slotnumber R115
        jmpi_!= R117, 00000001, 583
596:    call 610
        get_slotnumber R115
        jmpi_!= R117, 00000002, 584
597:    call 610
        get_slotnumber R115
        jmpi_!= R117, 00000003, 585
598:    call 610
        get_slotnumber R115
        jmpi_!= R117, 00000004, 586
599:    call 610
        get_slotnumber R115
        jmpi_!= R117, 00000005, 587
600:    call 610
        get_slotnumber R115
        jmpi_!= R117, 00000006, 588
601:    call 610
        get_slotnumber R115
        jmpi_!= R117, 00000007, 589
602:    call 610
        get_slotnumber R115
        jmpi_!= R117, 00000008, 590
603:    call 610
        get_slotnumber R115
        jmpi_!= R117, 00000009, 591
        jmp 592
569:    BB_get_number_in_pack R120
        jmpi_>= R120, 0000001E, 570
        jmp 571
565:    jmpi_= R121, 00000001, 566
        jmpi_= R121, 00000002, 580
        get_stackable_item_count R115, R105
        jmpi_>= R105, 0000000A, 568
        jmpi_= R105, 00000000, 569
571:    get_slot_meseta R122
        jmp_< R122, R108, 572
        item_create R116, R116
        let R116, R108
        take_slot_meseta R115, R122
        addi R105, 00000001
        jmp 573
566:    get_stackable_item_count R115, R105
        jmpi_= R105, 00000000, 576
        divi R108, 00000002
567:    sync 
        sync 
        sync 
        jmpi_= R105, 00000000, 577
        item_delete2 R116, R116
        subi R105, 00000001
        pl_add_meseta2 R108
        jmp 567
580:    get_stackable_item_count R115, R105
        jmpi_= R105, 00000000, 582
        divi R108, 00000002
581:    sync 
        sync 
        sync 
        jmpi_= R105, 00000000, 582
        item_delete2 R116, R116
        subi R105, 00000001
        pl_add_meseta2 R108
        jmp 581
582:    leti R121, 00000002
        ret 
564:    subi R121, 00000002
        let R117, R121
        let R115, R111
        call 523
        let R111, R115
        call 511
        let R117, R115
        jmp 609
583:    leti R116, 00000003
        leti R117, 00000000
        leti R118, 00000000
        leti R108, 00000032
        call 565
        jmpi_= R121, 00000002, 596
        jmp 559
584:    leti R116, 00000003
        leti R117, 00000000
        leti R118, 00000001
        leti R108, 0000012C
        call 565
        jmpi_= R121, 00000002, 597
        jmp 559
585:    leti R116, 00000003
        leti R117, 00000001
        leti R118, 00000000
        leti R108, 00000064
        call 565
        jmpi_= R121, 00000002, 598
        jmp 559
586:    leti R116, 00000003
        leti R117, 00000001
        leti R118, 00000001
        leti R108, 000001F4
        call 565
        jmpi_= R121, 00000002, 599
        jmp 559
587:    leti R116, 00000003
        leti R117, 00000006
        leti R118, 00000000
        leti R108, 0000003C
        call 565
        jmpi_= R121, 00000002, 600
        jmp 559
588:    leti R116, 00000003
        leti R117, 00000006
        leti R118, 00000001
        leti R108, 0000003C
        call 565
        jmpi_= R121, 00000002, 601
        jmp 559
589:    leti R116, 00000003
        leti R117, 00000003
        leti R118, 00000000
        leti R108, 0000012C
        call 565
        jmpi_= R121, 00000002, 602
        jmp 559
590:    leti R116, 00000003
        leti R117, 00000004
        leti R118, 00000000
        leti R108, 000001F4
        call 565
        jmpi_= R121, 00000002, 603
        jmp 559
591:    leti R116, 00000003
        leti R117, 00000008
        leti R118, 00000000
        leti R108, 00000064
        call 565
        jmpi_= R121, 00000002, 592
        jmp 559
592:    leti R116, 00000003
        leti R117, 00000000
        leti R118, 00000002
        leti R108, 000007D0
        call 565
        leti R116, 00000003
        leti R117, 00000001
        leti R118, 00000002
        leti R108, 00000E10
        call 565
        leti R116, 00000003
        leti R117, 00000005
        leti R118, 00000000
        leti R108, 00001388
        call 565
        leti R116, 00000003
        leti R117, 00000007
        leti R118, 00000000
        leti R108, 0000015E
        call 565
        jmp 608
612:    jmpi_> R104, 00000000, 560
        sync_register R104, 00000001
        get_slotnumber R115
        get_player_hp R115, R123
        jmpi_<= R124, 00000000, 613
        subi R121, 00000004
        switch_jmp R121, 7:501:501:614:620:622:625:629
619:    sync 
        jmpi_> R104, 00000000, 619
        jmp 554
635:    sync 
        particle_id_V3 R124
        set_slot_invincible R126, R122
        subi R123, 00000001
        jmpi_> R123, 00000000, 635
        ret 
615:    BB_get_number_in_pack R120
        jmpi_>= R120, 0000001E, 570
        jmp 616
614:    let R115, R112
        call 514
        call 536
        let R117, R115
        let R115, R112
        call 526
        let R112, R115
        jmpi_< R117, 00000064, 617
        get_slotnumber R115
        leti R116, 00000003
        leti R117, 00000010
        leti R118, 00000004
        get_stackable_item_count R115, R105
        jmpi_>= R105, 00000063, 618
        jmpi_= R105, 00000000, 615
616:    let R108, R121
        item_create R116, R116
        let R115, R112
        call 514
        subi R115, 00000064
        let R117, R115
        let R115, R112
        call 526
        let R112, R115
        leti R118, 00000014
        call 578
        get_slotnumber R123
        sync_register R123, R123
        sync_register R104, R108
        jmp 619
620:    get_floor_number R115, R119
        jmpi_= R119, 00000000, 621
        leti R118, 00000001
        call 578
        get_slotnumber R123
        sync_register R123, R123
        sync_register R104, R121
        jmp 619
622:    get_floor_number R115, R117
        let R115, R111
        call 524
        let R111, R115
        get_slotnumber R115
        get_coord_of_player R125, R115
        let R115, R113
        let R117, R125
        call 525
        let R117, R126
        call 526
        let R113, R115
        let R115, R112
        let R117, R127
        call 525
        let R112, R115
        scroll_text 0000014A, 00000064, 00000019, 00000006, 00000002, 1, R108, '<color 6>Координаты установлены успешно'
        get_slotnumber R123
        sync_register R123, R123
        sync_register R104, R121
        jmp 619
625:    let R115, R111
        call 512
        jmpi_< R115, 00000000, 626
        let R117, R115
        get_slotnumber R115
        get_floor_number R115, R119
        jmp_!= R117, R119, 627
        leti R118, 00000001
        call 578
        let R115, R113
        call 623
        sync_register R125, R115
        let R115, R113
        call 624
        sync_register R126, R115
        let R115, R112
        call 623
        sync_register R127, R115
        get_slotnumber R123
        sync_register R123, R123
        sync_register R104, R121
        jmp 619
628:    list R116, 'Назад<cr>Слот 1<cr>Слот 2<cr>Слот 3<cr>Слот 4'
        jmpi_= R116, 00000000, 551
        jmp 612
629:    subi R116, 00000001
        jmp_= R116, R115, 630
        get_player_status R116, R124
        jmpi_= R124, 00000000, 631
        jmpi_= R124, 00000005, 632
        jmpi_= R124, 00000006, 632
        jmpi_= R124, 00000008, 632
        jmpi_= R124, 00000009, 632
        jmpi_= R124, 0000000A, 632
        jmpi_= R124, 0000000B, 632
        jmpi_= R124, 0000000C, 632
        jmpi_= R124, 0000000D, 632
        get_floor_number R115, R119
        get_floor_number R116, R123
        jmp_!= R119, R123, 633
        get_coord_of_player R125, R115
        leti R118, 00000001
        call 578
        sync_register R125, R125
        sync_register R126, R126
        sync_register R127, R127
        sync_register R123, R116
        sync_register R104, R121
        jmp 619
634:    leti R122, 00000038
        use_animation R123, R122
        leti R124, 00000148
        leti R125, 00000003
        let R126, R123
        leti R127, 00000000
        set R122
        leti R123, 0000005A
        call 635
        leti R124, 0000016D
        leti R125, 0000000A
        particle_id_V3 R124
        stop_animation R126
        leti R104, 00000000
        jmp 547
636:    leti R122, 0000003E
        use_animation R123, R122
        leti R124, 00000011
        leti R125, 00000001
        let R126, R123
        leti R127, 0000000A
        set R122
        leti R123, 00000087
        call 635
        leti R124, 00000038
        leti R125, 0000000A
        leti R127, 00000000
        particle_id_V3 R124
        stop_animation R126
        create_pipe R126
        leti R104, 00000000
        jmp 547
637:    leti R124, 00000038
        leti R125, 0000000A
        let R126, R123
        leti R127, 0000000A
        particle_id_V3 R124
        leti R104, 00000000
        jmp 547
638:    stack_push R125
        stack_push R126
        stack_push R127
        leti R124, 0000008D
        leti R125, 00000005
        let R126, R123
        leti R127, 0000000A
        particle_id_V3 R124
        stack_pop R127
        stack_pop R126
        stack_pop R125
        p_setpos R123, R125
        leti R124, 00000089
        leti R125, 00000005
        let R126, R123
        leti R127, 0000000A
        set R122
        leti R123, 0000001E
        call 635
        leti R104, 00000000
        jmp 547
