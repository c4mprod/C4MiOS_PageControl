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

#import <Foundation/Foundation.h>


@interface C4MPageControl : UIView {
	NSMutableArray* mPageControl;
}
-(void)setPageControl:(int)_nbPage withPaddingX:(int)_padding withImage:(UIImage*)_image andSelectedImage:(UIImage*)_selectedImage;
-(void)selectPageControl:(int)_currentIndex;
@end




