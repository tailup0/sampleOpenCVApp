//
//  ObjCOpenCV.mm
//  sampleOpenCVApp
//
//  Created by Muneharu Onoue on 2017/03/28.
//  Copyright © 2017年 Muneharu Onoue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sampleOpenCVApp-Bridging-Header.h"
#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>

@implementation ObjCOpenCV : NSObject
+(UIImage *)DetectEdgeWithImage:(UIImage *)image {
    cv::Mat mat;
    UIImageToMat(image, mat);
    
    cv::Mat gray;
    cv::cvtColor(mat, gray, CV_BGR2GRAY);
    
    cv::Mat edge;
    cv::Canny(gray, edge, 200, 180);
    
    UIImage *edgeImg = MatToUIImage(edge);
    return edgeImg;
}
@end
