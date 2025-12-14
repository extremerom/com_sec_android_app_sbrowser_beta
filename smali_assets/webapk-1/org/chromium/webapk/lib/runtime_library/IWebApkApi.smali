.class public interface abstract Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;
.super Ljava/lang/Object;
.source "chromium-webapk-1.dex-default--1"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.webapk.lib.runtime_library.IWebApkApi"


# virtual methods
.method public abstract cancelNotification(Ljava/lang/String;I)V
.end method

.method public abstract checkNotificationPermission()I
.end method

.method public abstract getSmallIconId()I
.end method

.method public abstract notificationPermissionEnabled()Z
.end method

.method public abstract notifyNotification(Ljava/lang/String;ILandroid/app/Notification;)V
.end method

.method public abstract notifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V
.end method

.method public abstract requestNotificationPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
.end method
