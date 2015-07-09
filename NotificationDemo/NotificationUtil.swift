//
//  NotificationUtil.swift
//  IosUtil
//
//  Created by 范鸿麟 on 15/7/8.
//  Copyright (c) 2015年 范鸿麟. All rights reserved.
//

import UIKit

class NotificationUtil: NSObject {
    //注册通知
    static func register(application: UIApplication){
        //for ios >7
        if(UIApplication.instancesRespondToSelector(Selector("registerUserNotificationSettings:"))){
            application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: .Sound | .Alert | .Badge, categories: nil))
        }
            //for ios <=7
        else{
            //do iOS 7 stuff, which is pretty much nothing for local notifications.
        }
    }
    
    //弹出通知
    static func notification(alertBody:String = "弹出通知",soundName:String = UILocalNotificationDefaultSoundName){
        var notification:UILocalNotification = UILocalNotification()
        
        //for ios >7
        if(UIApplication.instancesRespondToSelector(Selector("registerUserNotificationSettings:"))){
            notification.category = "警告"
        }
        
        notification.alertBody = alertBody

        notification.timeZone = NSTimeZone.defaultTimeZone()
        notification.fireDate = NSDate()
        
        //        notification.soundName = UILocalNotificationDefaultSoundName // or nil
        notification.soundName = soundName
        
        //clear old notification
        UIApplication.sharedApplication().applicationIconBadgeNumber = 0
        UIApplication.sharedApplication().cancelAllLocalNotifications()
        
        //notify
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
}
