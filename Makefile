.PHONY: build-for-testing
build-for-testing:
	xcodebuild build-for-testing -project SampleIOSWithGitHubActions.xcodeproj -scheme SampleIOSWithGitHubActions -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 15,OS=17.5'

.PHONY: test-without-building
test-without-building:
	xcodebuild test-without-building -project SampleIOSWithGitHubActions.xcodeproj -scheme SampleIOSWithGitHubActions -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 15,OS=17.5'

.PHONY: test
test:
	$(MAKE) build-for-testing
	$(MAKE) test-without-building
