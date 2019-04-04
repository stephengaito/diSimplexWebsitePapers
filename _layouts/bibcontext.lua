---
layout: null
---
return {%raw%}{{%endraw%}
  category = [=[{{page.biblatex['entrytype']}}]=],
  tag      = [=[{{page.biblatex['citekey']}}]=],  
  {%- for aField in site.data['biblatexFieldOrder']['order'] -%}
    {%- if page.biblatex[aField] -%}
      {%- if site.data['biblatexFieldOrder']['outputMap'][aField]['include'] -%}
        {%- assign templateName = site.data['biblatexFieldOrder']['outputMap'][aField]['include'] -%}
        {%- assign varName = page.biblatex[aField]}} -%}
        {%- capture varValue -%}
          {%- varInclude templateName varName -%}
        {%- endcapture -%}
      {%- else -%}
        {%- assign varValue = page.biblatex[aField]} -%}
      {%- endif -%}
      {% if 0 < varValue.size %}
  {{aField}} = [=[{{varValue}}]=],
      {%- endif -%}
    {%- endif -%}
  {% endfor %}
}
