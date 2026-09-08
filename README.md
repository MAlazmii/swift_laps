# Swift Examples

Five small UIKit coursework projects exploring user input, table views, navigation, maps, networking and Core Data. Each example is an independent iOS application with its own Xcode project.

| Example | Focus | Open in Xcode |
| --- | --- | --- |
| Dice Roll | Guessing a random value from 2 to 12 | [diceRoll.xcodeproj](examples/diceRoll/diceRoll.xcodeproj) |
| Timetables | Multiplication and division table rows | [timetables.xcodeproj](examples/timetables/timetables.xcodeproj) |
| Table Detail | Table selection and detail navigation | [tableDetail.xcodeproj](examples/tableDetail/tableDetail.xcodeproj) |
| Favourite Places | Map locations and Core Data | [favoritePlaces.xcodeproj](examples/favoritePlaces/favoritePlaces.xcodeproj) |
| Research Papers | Remote research-report listings and detail views | [researchPapers.xcodeproj](examples/researchPapers/researchPapers.xcodeproj) |

## Get started

Open one project, select its matching app scheme, choose an iPhone simulator and run. Use full Xcode with an iOS 16.2 or newer simulator to cover all five projects. For a physical device, select your own signing team and bundle identifier.

The Research Papers example requests a University of Liverpool teaching endpoint at `cgi.csc.liv.ac.uk`; service availability has not been verified. Other examples can be explored using their bundled resources, although map tiles require network access.

## Restoration

The complete app archives were recovered into `examples/`, including storyboards, asset catalogues, data models and original test targets. Nested Git repositories, macOS metadata and personal Xcode state were excluded. All flattened files and additional project/model archives were compared with the recovered apps before removing exact duplicates. Original files remain available in this repository's history.

## Status and learning notes

These are preserved coursework exercises. They have not been modernised into production apps. In particular, Timetables assumes numeric input and can fail for invalid or very large values; Dice Roll samples 2–12 uniformly rather than modelling the sum of two independent dice. Original tests are largely generated scaffolding.

Project references, property lists, asset JSON and XML resources were validated after extraction. iOS builds and simulator tests have not been run successfully: the validation machine has only Command Line Tools, and its Swift compiler reports a duplicate `SwiftBridging` module. Full Xcode is required to verify app behaviour.

## Credits

Original authorship and teaching-source headers are preserved, including Mohammed Abdullah Alotaibi's coursework. No new licence is imposed on the existing material.

## Automated checks

Run `python3 scripts/validate_resources.py` for portable resource checks. GitHub Actions runs this check and attempts unsigned iOS Simulator builds on macOS. These workflows have not yet been run remotely; successful local resource checks do not establish that an iOS build passes.
