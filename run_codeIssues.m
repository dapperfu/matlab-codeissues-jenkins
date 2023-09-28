function run_codeIssues

issues = codeIssues(matlabroot, IncludeSubfolders=true);

export(issues, "codeIssues.sarif", FileFormat="sarif"))