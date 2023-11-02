<?php

namespace MarvinPoehls\ProfitCalculation\Model;

class Article extends Article_parent
{
    private int $profit = 0;

    public function fcGetProfit()
    {
        if (empty($this->oxarticles__oxbprice->value) || empty($this->oxarticles__oxprice->value)) {
            return false;
        }

        $purchasePrice = $this->oxarticles__oxbprice->value;
        $sellPrice = $this->oxarticles__oxprice->value;
        $vat = $this->getArticleVat()/100;

        $turnover = $sellPrice/1+$vat;
        $this->profit = $turnover - $purchasePrice;
        return $this->profit.'%';
    }

    public function fcGetProfitColor(): string
    {
        if ($this->profit >= 0) {
            return '#00AA22';
        }
        return '#970b0e';
    }
}