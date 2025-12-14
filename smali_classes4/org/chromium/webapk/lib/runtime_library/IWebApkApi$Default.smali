.class public Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public checkNotificationPermission()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSmallIconId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestNotificationPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
