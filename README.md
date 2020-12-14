# SurveyR

main.R - organizes the scripts and show the right order to run.

survey * prepares the file that comes from qualtrics and eliminates useless columns and rows without agreement (Don't run again!!!)

oddsRatio * compares hot maps and relevant and non relevant see question 1) (one file per dataset)

numLabelsInvestigation.R see question 3) (one file for all) (we still need to analyze the Blog. I'll start now)

demogMain.R Entry point to the demog* scripts. Dont need to run everything! Better go there, check the right order and run only what you need.

demogReadFiles.R -  must run before the others

demogInvestigation.R - plot treatment and control issues -> changed name to issuesInvestigation.R

demogContributor.R - plot only contributor (now who has more than 2 contributions)

demogExpCoder.R - plot only expert coders (now who has more than 3 years of programming experience)

demogAfinity.R - plot only who has more than 3 years in Java or postgresql or gradle or javaFX)

hotMapInvestigation.R - plot hotMap

labelsInvestigation.R - plot labels

oddsRatioComparison.R - compares each source ex: INFNET x BLOG, NAU x PUC etc
