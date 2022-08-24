***Variables
${guardiansOption}         css:input[value='guardians']
${antmanOption}            css:input[value='ant-man']
${checkboxesList}          css:input[type='checkbox']


***Keywords


Check selected options
    Checkbox Should Be Selected        ${guardiansOption}
    Checkbox Should Be Selected        ${antmanOption}
    
Unselect default options
    Unselect Checkbox        ${guardiansOption}
    Unselect Checkbox        ${antmanOption}
    
Select all options available
    Select All Checkboxes        ${checkboxesList}