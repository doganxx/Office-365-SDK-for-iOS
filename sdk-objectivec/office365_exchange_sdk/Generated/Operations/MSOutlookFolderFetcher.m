/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * Licensed under the Apache License, Version 2.0.
 * See License.txt in the project root for license information.
 *
 * Warning: This code was generated automatically. Edits will be overwritten.
 * To make changes to this code, please make changes to the generation framework itself:
 * https://github.com/MSOpenTech/odata-codegen
 *******************************************************************************/

#import "MSOutlookFolderFetcher.h"
#import "MSOutlookFolderCollectionFetcher.h"
#import "MSOutlookMessageCollectionFetcher.h"


/**
* The implementation file for type MSOutlookFolderFetcher.
*/


@implementation MSOutlookFolderFetcher

-(MSOutlookFolderOperations*) getOperations{
	return [[MSOutlookFolderOperations alloc] initOperationWithUrl:self.UrlComponent parent:self.Parent];
}

-(id)initWithUrl:(NSString*)urlComponent :(id<MSODataReadable>)parent{
    
    self.Parent = parent;
    self.UrlComponent = urlComponent;
    return [super initWithUrl:urlComponent parent:parent andEntityClass : [MSOutlookFolder class]];
}


-(MSOutlookFolderCollectionFetcher*) getChildFolders{
    return [[MSOutlookFolderCollectionFetcher alloc] initWithUrl:@"ChildFolders" parent:self andEntityClass:[MSOutlookFolder class]];
}


-(MSOutlookMessageCollectionFetcher*) getMessages{
    return [[MSOutlookMessageCollectionFetcher alloc] initWithUrl:@"Messages" parent:self andEntityClass:[MSOutlookMessage class]];
}


@end