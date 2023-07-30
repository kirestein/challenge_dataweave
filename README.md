<h1>Using DataWeave to transform data</h1>
<p>
    This exercise is part of my studies on DataWeave.
    This is what the exercise proposed:
    <ul>
        <li>Considering you have this payload ('Source' example in link below) and need to convert to another format which destination system needs to receive data ('Destination' example in link below). Basically you need to bring only lineItems which customFieldsRaw isMainLineItem 'value==true' as root level lineItems in the destination json and all which are not should be linked to appropriate parent which the link is done via configuratorId custom property (don't need to care about 'unparented' childs). The count should only consider root level elements. How would you make the conversion using only DWL?</li>
        <li><a href="https://www.dropbox.com/s/aax9eyowhux5k28/convertLineItems-payload.json?dl=1">Here's the link with the payload</a></li>
    </ul>
</p>