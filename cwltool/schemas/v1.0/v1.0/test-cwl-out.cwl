class: CommandLineTool
cwlVersion: v1.0
requirements:
  - class: ShellCommandRequirement
hints:
  DockerRequirement:
    dockerPull: "debian:wheezy"

inputs: []

outputs:
  - id: foo
    type: File

baseCommand: []
arguments:
   - valueFrom: >
       echo foo > foo && echo '{"foo": {"path": "$(runtime.outdir)/foo", "class": "File"} }' > cwl.output.json
     shellQuote: false
