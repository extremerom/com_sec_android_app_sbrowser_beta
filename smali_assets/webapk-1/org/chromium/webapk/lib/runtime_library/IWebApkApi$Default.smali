.class public Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Default;
.super Ljava/lang/Object;
.source "chromium-webapk-1.dex-default--1"

# interfaces
.implements Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public checkNotificationPermission()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSmallIconId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notificationPermissionEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyNotification(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0

    return-void
.end method

.method public notifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestNotificationPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
