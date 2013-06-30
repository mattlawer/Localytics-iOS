//
//  LocalyticsUtilities.h
//  Localytics
//
//  Created by Sam Soffes on 3/27/12.
//  Forked by Justin Williams on 6/30/13
//  Copyright (c) 2012 Sam Soffes. All rights reserved.
//

#ifndef ANALYTICS_ENABLED
#define ANALYTICS_ENABLED (!DEBUG && !TARGET_IPHONE_SIMULATOR)
#endif

#if ANALYTICS_ENABLED
#import "LocalyticsSession.h"
#endif

void LLStartSession(NSString *key);
void LLStopSession();
void LLResumeSession();
void LLUploadData();
void LLTagEvent(NSString *name);
void LLTagEventWithAttributes(NSString *name, NSDictionary *attributes);
void LLTagScreen(NSString *name);
