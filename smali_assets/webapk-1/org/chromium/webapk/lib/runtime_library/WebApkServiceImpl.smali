.class public Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;
.super Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;
.source "chromium-webapk-1.dex-default--1"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final KEY_HOST_BROWSER_UID:Ljava/lang/String; = "host_browser_uid"

.field public static final KEY_SMALL_ICON_ID:Ljava/lang/String; = "small_icon_id"

.field private static final TAG:Ljava/lang/String; = "WebApkServiceImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHostUid:I

.field private final mSmallIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;-><init>()V

    iput-object p1, p0, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->mContext:Landroid/content/Context;

    const-string p1, "small_icon_id"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->mSmallIconId:I

    const-string p1, "host_browser_uid"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->mHostUid:I

    return-void
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    iget-object v0, p0, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public checkNotificationPermission()I
    .locals 2

    const-string v0, "WebApkServiceImpl"

    const-string v1, "Should NOT reach WebApkServiceImpl#checkNotificationPermission()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getSmallIconId()I
    .locals 1

    iget v0, p0, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->mSmallIconId:I

    return v0
.end method

.method public notificationPermissionEnabled()Z
    .locals 2

    const-string v0, "WebApkServiceImpl"

    const-string v1, "Should NOT reach WebApkServiceImpl#notificationPermissionEnabled() because it is deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lf;

    invoke-direct {v1, v0}, Lf;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lf;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyNotification(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0

    const-string p1, "WebApkServiceImpl"

    const-string p2, "Should NOT reach WebApkServiceImpl#notifyNotification(String, int, Notification)."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    invoke-virtual {p3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, p4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->mHostUid:I

    if-ne v1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    iget p2, p0, Lorg/chromium/webapk/lib/runtime_library/WebApkServiceImpl;->mHostUid:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unauthorized caller "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " does not match expected host="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestNotificationPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    const-string p1, "WebApkServiceImpl"

    const-string p2, "Should NOT reach WebApkServiceImpl#requestNotificationPermission(String, String)."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
