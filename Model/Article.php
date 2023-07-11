<?php

namespace MarvinPoehls\ProfitCalculation\Model;

class Article extends Article_parent
{
    function fcGetProfit()
    {
        if (empty($this->oxarticles__oxbprice->value) || empty($this->oxarticles__oxprice->value)) {
            return false;
        }

        $purchasePrice = $this->oxarticles__oxbprice->value;
        $sellPrice = $this->oxarticles__oxprice->value;
        $vat = $this->getArticleVat()/100;

        $turnover = $sellPrice/1+$vat;
        return $turnover - $purchasePrice;
    }
}