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
