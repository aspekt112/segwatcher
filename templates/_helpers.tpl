{{- define "fullname" -}}
{{- printf "%s-%s" .Chart.Name .Values.environment  }}
{{- end -}}
