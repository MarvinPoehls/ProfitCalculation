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
        'de' => 'Modul welches den Gewinn für jeden Artikel berechnet.',
        'en' => 'Module which calculates the profit for each article.',
    ],
    'thumbnail'    => '',
    'version'      => '1.0',
    'author'       => 'Marvin Poehls',
    'url'          => 'https://www.fatchip.de/',
    'email'        => 'marvin.poehls@fatchip.de',
    'controllers' => [],
    'extend'       => [],
    'blocks' => [],
    'settings' => [],
    'events' => [
        'onActivate' => 'MarvinPoehls\ProfitCalculation\Core\Events\Setup::onActivate',
    ]
];