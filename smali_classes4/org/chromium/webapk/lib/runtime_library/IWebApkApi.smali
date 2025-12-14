.class public interface abstract Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$_Parcel;,
        Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;,
        Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Default;
    }
.end annotation


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
