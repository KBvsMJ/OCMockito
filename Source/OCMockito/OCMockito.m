//
//  OCMockito - OCMockito.m
//  Copyright 2011 Jonathan M. Reid. See LICENSE.txt
//

#import "OCMockito.h"

#import "MKTExactTimes.h"
#import "MKTMockitoCore.h"
#import "MKTTestLocation.h"


MKTOngoingStubbing *MKGivenWithLocation(id testCase, const char *fileName, int lineNumber, ...)
{
    MKTMockitoCore *mockitoCore = [MKTMockitoCore sharedCore];
    return [mockitoCore stubAtLocation:MKTTestLocationMake(testCase, fileName, lineNumber)];
}

id MKVerifyWithLocation(id mock, id testCase, const char *fileName, int lineNumber)
{
    return MKVerifyCountWithLocation(mock, MKTimes(1), testCase, fileName, lineNumber);
}

id MKVerifyCountWithLocation(id mock, id mode, id testCase, const char *fileName, int lineNumber)
{
    MKTMockitoCore *mockitoCore = [MKTMockitoCore sharedCore];
    return [mockitoCore verifyMock:mock
                          withMode:mode
                        atLocation:MKTTestLocationMake(testCase, fileName, lineNumber)];
}

id MKTimes(NSUInteger wantedNumberOfInvocations)
{
    return [MKTExactTimes timesWithCount:wantedNumberOfInvocations];
}

id MKNever()
{
    return MKTimes(0);
}
