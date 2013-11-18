//
//  LocalyticsUtilities.m
//  Localytics
//
//  Created by Sam Soffes on 3/27/12.
//  Forked by Justin Williams on 6/30/13
//  Copyright (c) 2012 Sam Soffes. All rights reserved.
//

#import "SGLocalyticsUtilities.h"

void LLStartSession(NSString *key)
{
#if ANALYTICS_ENABLED
	[[LocalyticsSession sharedLocalyticsSession] startSession:(key)];
#endif
}

void LLStopSession(void)
{
#if ANALYTICS_ENABLED
    [[LocalyticsSession sharedLocalyticsSession] close];
#endif
}

void LLResumeSession(void)
{
#if ANALYTICS_ENABLED
    [[LocalyticsSession sharedLocalyticsSession] resume];
#endif
}

void LLUploadData(void)
{
#if ANALYTICS_ENABLED
    [[LocalyticsSession sharedLocalyticsSession] upload];
#endif
}


void LLTagEvent(NSString *name)
{
#if ANALYTICS_ENABLED
	[[LocalyticsSession sharedLocalyticsSession] tagEvent:name];
#endif
}


void LLTagEventWithAttributes(NSString *name, NSDictionary *attributes)
{
#if ANALYTICS_ENABLED
	[[LocalyticsSession sharedLocalyticsSession] tagEvent:name attributes:attributes];
#endif
}


void LLTagScreen(NSString *screen)
{
#if ANALYTICS_ENABLED
	[[LocalyticsSession sharedLocalyticsSession] tagScreen:screen];
#endif
}
