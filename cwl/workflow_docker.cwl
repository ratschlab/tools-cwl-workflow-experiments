cwlVersion: v1.0
class: Workflow

inputs:
  input_file: File
  compute_exponent: int

outputs:
  cnt:
    type: File
    outputSource: count/counts

  res:
    type: File
    outputSource: compute/counts

steps:
  count:
    run: line_counts_docker.cwl
    in:
      input_file: input_file
    out: [counts]

  compute:
    run: complex_computation_docker.cwl
    in:
      input_file: count/counts
      exponent: compute_exponent
    out: [counts]

