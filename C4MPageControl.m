/*******************************************************************************
 * This file is part of the C4MiOS_PageControl project.
 * 
 * Copyright (c) 2012 C4M PROD.
 * 
 * C4MiOS_PageControl is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * C4MiOS_PageControl is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with C4MiOS_PageControl. If not, see <http://www.gnu.org/licenses/lgpl.html>.
 * 
 * Contributors:
 * C4M PROD - initial API and implementation
 ******************************************************************************/

#import "C4MPageControl.h"


@implementation C4MPageControl

-(void)setPageControl:(int)_nbPage withPaddingX:(int)_padding withImage:(UIImage*)_image andSelectedImage:(UIImage*)_selectedImage
{
	if(mPageControl==nil)
		mPageControl = [[NSMutableArray alloc] init];
	else
		[mPageControl removeAllObjects];
	
	int widthOfPoint = _image.size.width+_padding;
	int coordYOfPoint = (self.frame.size.height-_image.size.height)/2;
	
	if(_nbPage>0)
	{
		int currentX = (self.frame.size.width-_nbPage*widthOfPoint)/2;
		
		for(int i =0; i<_nbPage; ++i)
		{
			UIImageView* tmpImageView = [[UIImageView alloc] initWithImage:_image highlightedImage:_selectedImage];
			CGRect tmpFrame = tmpImageView.frame;
			tmpFrame.origin = CGPointMake(currentX, coordYOfPoint);
			tmpImageView.frame = tmpFrame;
			
			[mPageControl addObject:tmpImageView];
			[self addSubview:tmpImageView];
			
			currentX+=widthOfPoint;
			[tmpImageView release];
		}
		UIImageView* mImageView = [mPageControl objectAtIndex:0];
		[mImageView setHighlighted:YES];
	}
}

-(void)selectPageControl:(int)_currentIndex
{
	for(int i =0; i<[mPageControl count]; ++i)
	{
		UIImageView* imageView = [mPageControl objectAtIndex:i];
		if(i==_currentIndex)
		{
			[imageView setHighlighted:YES];
		}
		else
		{
			[imageView setHighlighted:NO];
		}
		
	}
}

-(void)dealloc
{
	[mPageControl release];
	[super dealloc];
}

@end
