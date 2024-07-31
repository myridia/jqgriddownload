# jqgrid_download
jqgrid_download is a convenient simple csv download plugin for the free-jqgrid.

# Add an import tag to your html website 

```html
 <script type="text/javascript" src="https://foo.com/node_modules/jqgriddownload/dist/jqgriddownload.js"></script>
```



# Declare a CSV OR Excel button in your Grid init 
```js
.jqGrid("navButtonAdd", "#grid_toppager", {
        caption: "Download CSV",
        id:"download",
        buttonicon: "fa-file-excel-o",
        onClickButton: function(err,res){
         jQuery(this).jqGrid("jqgrid_download",'csv');
        }
  }).jqGrid("navButtonAdd", "#grid_toppager",
  {
    caption: "Excel",
    id: "Excel",
    buttonicon: "fa-file-excel-o",
    onClickButton: function(err, res)
    {
      jQuery(this).jqGrid("jqgrid_download", 'xlsx');
    }
  });


```


# Nother example:
```js
  jQuery("#grid").jqGrid(
  {
    colModel: col_model,
    data: data,
    loadonce: true,
    beforeRequest: function(id)
    {
      setTimeout(function()
      {
        waitingDialog.hide();
      }, 1000);
    },
    rownumbers: true,
    iconSet: 'fontAwesome',
    searching:
    {
      defaultSearch: "bw"
    },
    pagger: true,
    rowNum: 50,
    sortname: "invdate",
    sortorder: "desc",
    toppager: true,
    caption: 'Pictures',
    logger: 'jqgriddownload',
    autowith: true,
    shrinkToFit: false,
    cmTemplate:
    {
      autoResizable: true,
      editable: true
    }
  }).jqGrid("filterToolbar",
  {
    searchOnEnter: true,
    enableClear: false
  }).jqGrid("gridResize").jqGrid("inlineNav",
  {
    edit: false,
    add: false,
    save: true,
    cancel: true
  }).jqGrid("navButtonAdd", "#grid_toppager",
  {
    caption: "Excel",
    id: "Excel",
    buttonicon: "fa-file-excel-o",
    onClickButton: function(err, res)
    {
      jQuery(this).jqGrid("jqgrid_download", 'xlsx');
    }
  });
``` 


# Sponsors:
* https://www.merc.biz
* https://bueroloewenherz.com
* https://www.body-piercing.com
<a name="module_Jqgriddownload"></a>

## Jqgriddownload
GPL licensesModule to Download CSV or Excel files from Jqgrid


* [Jqgriddownload](#module_Jqgriddownload)
    * [~is_int(--)](#module_Jqgriddownload..is_int)
    * [~eachColumnInRange(ws)](#module_Jqgriddownload..eachColumnInRange)
    * [~date_formatter(cell_value, format)](#module_Jqgriddownload..date_formatter) ⇒ <code>string</code>
    * [~date_to_string(date, y)](#module_Jqgriddownload..date_to_string) ⇒ <code>string</code>

<a name="module_Jqgriddownload..is_int"></a>

### Jqgriddownload~is\_int(--)
**Kind**: inner method of [<code>Jqgriddownload</code>](#module_Jqgriddownload)  

| Param | Type | Description |
| --- | --- | --- |
| -- | <code>string</code> | check if integer |

<a name="module_Jqgriddownload..eachColumnInRange"></a>

### Jqgriddownload~eachColumnInRange(ws)
**Kind**: inner method of [<code>Jqgriddownload</code>](#module_Jqgriddownload)  

| Param | Type | Description |
| --- | --- | --- |
| ws | <code>string</code> | format: csv or xlsx |

<a name="module_Jqgriddownload..date_formatter"></a>

### Jqgriddownload~date\_formatter(cell_value, format) ⇒ <code>string</code>
**Kind**: inner method of [<code>Jqgriddownload</code>](#module_Jqgriddownload)  
**Returns**: <code>string</code> - = string like  '02/06/2023'  
**Example:**: your col_model :
   ....
   {'name': 'order_date', 'download_formatter': 'date_formatter--dd/mm/yyyy'},
   ....  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| cell_value | <code>string</code> |  | cel_value as a string, for the moment only iso 112 20230602 is supported |
| format | <code>string</code> | <code>&quot;dd/mm/yyyy&quot;</code> | format, style like 'dd/mm/yyy' |

<a name="module_Jqgriddownload..date_to_string"></a>

### Jqgriddownload~date\_to\_string(date, y) ⇒ <code>string</code>
**Kind**: inner method of [<code>Jqgriddownload</code>](#module_Jqgriddownload)  
**Returns**: <code>string</code> - = string like  '02/06/2023'  
**Example:**: let d = new Date();
   let x = date_to_string(d,'dd/mm/yyyy');
   console.log(x);  

| Param | Type | Description |
| --- | --- | --- |
| date | <code>object</code> | date object |
| y | <code>string</code> | format, style like 'dd/mm/yyy' |

