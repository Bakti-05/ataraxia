{{- /*
Helper functions for ataraxia MySQL chart
*/ -}}

{{- define "ataraxia.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ataraxia.labels" -}}
app: {{ include "ataraxia.fullname" . }}
{{- end -}}

{{- define "ataraxia.selectorLabels" -}}
{{- include "ataraxia.labels" . | nindent 4 -}}
{{- end -}}

{{- define "ataraxia.serviceName" -}}
{{- printf "%s-service" (include "ataraxia.fullname" .) -}}
{{- end -}}

{{- define "ataraxia.deploymentName" -}}
{{- printf "%s-deployment" (include "ataraxia.fullname" .) -}}
{{- end -}}
