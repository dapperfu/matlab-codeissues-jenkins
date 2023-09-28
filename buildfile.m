function plan = buildfile

import matlab.buildtool.tasks.CodeIssuesTask

plan = buildplan;

plan("lint") = CodeIssuesTask(Results=codeIssues.sarif")

plan.DefaultTasks = ["lint"];