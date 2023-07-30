/**
* This mapping won't be shared through your library, but you can use it to try out your module and create integration tests.
*/
%dw 2.0
output application/json
import source from MyModule
---
{
    Destination: {
        order: sizeOf(source().data.order.lineItems.custom.customFieldsRaw filter (($.name[0] == "isMainLineItem" or $.name[1] == "isMainLineItem") and ($.value[0] == true or $.value[1] == true)) map {name: $.name, value: $.value}),
        lineItems: source().data.order.lineItems filter (($.custom.customFieldsRaw.name[0] == "isMainLineItem" or $.custom.customFieldsRaw.name[1] == "isMainLineItem") and ($.custom.customFieldsRaw.value[0] == true or $.custom.customFieldsRaw.value[1] == true)) map (if($.custom.customFieldsRaw.value[0] != "82d37ef30865") {id: $.id, childs: []}  else
            {
                id: $.id,
                childs: source().data.order.lineItems filter (($.custom.customFieldsRaw.value[0] == "82d37ef30865" or $.custom.customFieldsRaw.value[1] == "82d37ef30865") and ($.custom.customFieldsRaw.value[0] == false or $.custom.customFieldsRaw.value[1] == false)) map {id: $.id}
                
            }
        )
    }
}