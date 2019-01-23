'use strict';

ExecuteOrDelayUntilScriptLoaded(initializePage, "sp.js");




function initializePage()
{
    
    var context = SP.ClientContext.get_current();
    var user = context.get_web().get_currentUser();
    
    // Этот код, запускаемый после готовности модели DOM, создает объект контекста, который требуется для использования объектной модели SharePoint
    $(document).ready(function () {
        $(".ms-addnew").remove();
        initFabricUI();
        initEventHandlers();
    });

    function initFabricUI() {
        var buttonHTMLElements = document.querySelectorAll('#newTask');
        for (var i = 0; i < buttonHTMLElements.length; ++i) {
            new fabric['Button'](buttonHTMLElements[i]);
        }
        var TableElements = document.querySelectorAll("[summary = 'TaskList Task list']");
        for (var i = 0; i < TableElements.length; i++) {
            new fabric['Table'](TableElements[i]);
        }
    }

    function initEventHandlers() {
        $("#newTask").on("click", function () {
            showModalPopUp('/SharePointAddIn1/Lists/TaskList/NewForm.aspx?IsDlg=1', 'Create new task'); 
        });
    }

    function callbackFunction(result) {
        switch (result) {
            case SP.UI.DialogResult.OK:
                location.reload();
                break;
            case SP.UI.DialogResult.cancel:
                alert("You clicked cancel or close.");
                break;
        }
    }

    function showModalPopUp(url, title) {
        //Set options for Modal PopUp  
        var options = {
            url: url,  
            title: title, 
            allowMaximize: false,
            showClose: true,
            width: 600,
            height: 400,
            dialogReturnValueCallback: callbackFunction
        };
        //Invoke the modal dialog by passing in the options array variable  
        SP.SOD.execute('sp.ui.dialog.js', 'SP.UI.ModalDialog.showModalDialog', options);
        return false;
    }  

    
}
