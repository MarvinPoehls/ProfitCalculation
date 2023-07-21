<?php

/**
 * Metadata version
 */
$sMetadataVersion = '2.1';

/**
 * Module information
 */
$aModule = [
    'id'           => 'profitcalculation',
    'title'  => [
        'de' => 'Gewinnbrechnung',
        'en' => 'Profit calculation',
    ],
    'description'  => [
        'de' => 'Modul welches den Gewinn für jeden Artikel berechnet und im Admin ausgibt.',
        'en' => 'Module which calculates the profit for each article and displays it in the admin.',
    ],
    'thumbnail'    => '',
    'version'      => '1.0',
    'author'       => 'Marvin Poehls',
    'url'          => 'https://www.fatchip.de/',
    'email'        => 'marvin.poehls@fatchip.de',
    'controllers' => [],
    'extend'       => [
        OxidEsales\Eshop\Application\Model\Article::class => MarvinPoehls\ProfitCalculation\Model\Article::class,
    ],
    'blocks' => [
        [
            'template' => 'article_main.tpl',
            'block' => 'admin_article_main_form',
            'file' => 'admin_article_main_form.tpl'
        ],
    ],
    'settings' => [],
    'events' => []
];