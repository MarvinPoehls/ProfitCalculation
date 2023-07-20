<tr>
    <td class="edittext">
        [{oxmultilang ident="ARTICLE_MAIN_VENDORID"}]
    </td>
    <td class="edittext">
        <select class="editinput" name="editval[oxarticles__oxvendorid]" [{$readonly}]>
            <option value="" selected>---</option>
            [{foreach from=$oView->getVendorList() item=oVendor}]
            <option value="[{$oVendor->oxvendor__oxid->value}]"[{if $edit->oxarticles__oxvendorid->value == $oVendor->oxvendor__oxid->value}] selected[{/if}]>[{ $oVendor->oxvendor__oxtitle->value }]</option>
            [{/foreach}]
        </select>
        [{oxinputhelp ident="HELP_ARTICLE_MAIN_VENDORID"}]
    </td>
</tr>

<tr>
    <td class="edittext">
        [{oxmultilang ident="ARTICLE_MAIN_MANUFACTURERID"}]
    </td>
    <td class="edittext">
        <select class="editinput" name="editval[oxarticles__oxmanufacturerid]" [{$readonly}]>
            <option value="" selected>---</option>
            [{foreach from=$oView->getManufacturerList() item=oManufacturer }]
            <option value="[{$oManufacturer->oxmanufacturers__oxid->value}]"[{if $edit->oxarticles__oxmanufacturerid->value == $oManufacturer->oxmanufacturers__oxid->value}] selected[{/if}]>[{ $oManufacturer->oxmanufacturers__oxtitle->value }]</option>
            [{/foreach}]
        </select>
        [{oxinputhelp ident="HELP_ARTICLE_MAIN_MANUFACTURERID"}]
    </td>
</tr>

[{if $edit->isParentNotBuyable()}]
    <tr>
        <td colspan="2">
            <div class="errorbox">[{oxmultilang ident="ARTICLE_MAIN_PARENTNOTBUYABLE"}]</div>
        </td>
    </tr>
    [{/if}]
<tr>
    <td class="edittext">
        [{oxmultilang ident="ARTICLE_MAIN_PRICE"}] ([{$oActCur->sign}])
    </td>
    <td class="edittext">
        <input type="text" class="editinput" size="8" maxlength="[{$edit->oxarticles__oxprice->fldmax_length}]" name="editval[oxarticles__oxprice]" value="[{$edit->oxarticles__oxprice->value}]" [{$readonly}]>
        [{assign var="oPrice" value=$edit->getPrice()}]
        &nbsp;<em>( [{$oPrice->getBruttoPrice()}] )</em>
        [{oxinputhelp ident="HELP_ARTICLE_MAIN_PRICE"}]
    </td>
</tr>

<tr>
    <td class="edittext">
        [{oxmultilang ident="ARTICLE_MAIN_ALDPRICE"}] ([{$oActCur->sign}])
    </td>
    <td class="edittext" nowrap>
        [{oxmultilang ident="ARTICLE_MAIN_PRICEA"}]: <input type="text" class="editinput" size="4" maxlength="[{$edit->oxarticles__oxpricea->fldmax_length}]" name="editval[oxarticles__oxpricea]" value="[{$edit->oxarticles__oxpricea->value}]" [{$readonly}]>
        [{oxmultilang ident="ARTICLE_MAIN_PRICEB"}]: <input type="text" class="editinput" size="4" maxlength="[{$edit->oxarticles__oxpriceb->fldmax_length}]" name="editval[oxarticles__oxpriceb]" value="[{$edit->oxarticles__oxpriceb->value}]" [{$readonly}]>
        [{oxmultilang ident="ARTICLE_MAIN_PRICEC"}]: <input type="text" class="editinput" size="4" maxlength="[{$edit->oxarticles__oxpricec->fldmax_length}]" name="editval[oxarticles__oxpricec]" value="[{$edit->oxarticles__oxpricec->value}]" [{$readonly}]>
        [{oxinputhelp ident="HELP_ARTICLE_MAIN_ALDPRICE"}]
    </td>
</tr>
<tr>
    <td class="edittext">
        [{oxmultilang ident="FC_ARTICLE_PROFIT"}]
    </td>
    <td class="edittext">
        <p>Profit</p>
    </td>
</tr>
<tr>
    <td class="edittext">
        [{oxmultilang ident="ARTICLE_MAIN_VAT"}]
    </td>
    <td class="edittext">
        <input type="text" class="editinput" size="10" maxlength="[{$edit->oxarticles__oxvat->fldmax_length}]" name="editval[oxarticles__oxvat]" value="[{$edit->oxarticles__oxvat->value}]" [{include file="help.tpl" helpid=article_vat}] [{$readonly}]>
        [{oxinputhelp ident="HELP_ARTICLE_MAIN_VAT"}]
    </td>
</tr>