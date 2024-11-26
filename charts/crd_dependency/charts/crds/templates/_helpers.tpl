{{- define "validateVars" -}}
{{- if and (not (empty .Values.conversion.webhook.url)) (not (empty .Values.conversion.webhook.service.name)) -}}
{{ fail "Error: Both webhook url and service are defined. Only one must be set." -}}
{{- end -}}
{{- end -}}