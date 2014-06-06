//
//  HttpUtil.swift
//  swiftlab
//
//  Created by Computer Engineering on 6/6/2557 BE.
//  Copyright (c) 2557 nsc. All rights reserved.
//

import Foundation


class HttpUtil {
    
    func readSyn(urlString:String) -> String {
        var url:NSURL = NSURL(string:urlString)
        var request:NSURLRequest = NSURLRequest(URL:url)
//        var queue:NSOperationQueue = NSOperationQueue()
        var str:String = NSString.stringWithContentsOfURL(url, encoding: NSUTF8StringEncoding , error: nil);
//        NSURLConnection.sendAsynchronousRequest(request, queue: queue, completionHandler:{ (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
//            print(data);
//            })
//        NSURLConnection.sendAsynchronousRequest(request,queue:queue,completionHandler:{response,data,error in print(data) })
        
//        NSURLConnection.sendAsynchronousRequest(request, queue: queue, completionHandler:{ (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
//            str = NSString.stringWith
//            println(data)
//            })
        return str
    }
    
    func readAsync(urlString:String) -> String {
        var url:NSURL = NSURL(string:urlString)
        var request:NSURLRequest = NSURLRequest(URL: url)
        var queue:NSOperationQueue = NSOperationQueue()
        return ""
    }
}
