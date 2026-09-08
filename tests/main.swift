import Foundation

precondition(TableInput.parse("12") == 12)
precondition(TableInput.parse(" -12 ") == -12)
precondition(TableInput.parse("0") == 0)
for invalid in ["", " ", "abc", "1.5", String(Int.max), String(Int.min), "99999999999999999999999999"] {
    precondition(TableInput.parse(invalid) == nil)
}
let maximum = Int.max / 30
let minimum = Int.min / 30
precondition(TableInput.parse(String(maximum)) == maximum)
precondition(TableInput.parse(String(minimum)) == minimum)
precondition(TableInput.parse(String(maximum + 1)) == nil)
precondition(TableInput.parse(String(minimum - 1)) == nil)
precondition(maximum.multipliedReportingOverflow(by: 30).overflow == false)
precondition(minimum.multipliedReportingOverflow(by: 30).overflow == false)
print("Timetables input regression checks passed")
