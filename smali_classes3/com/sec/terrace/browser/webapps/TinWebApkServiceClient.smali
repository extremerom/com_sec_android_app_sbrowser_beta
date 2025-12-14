.class public Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;


# instance fields
.field private mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    const-string v1, "android.intent.category.WEBAPK_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/Callback;Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->lambda$requestNotificationPermission$2(Lorg/chromium/base/Callback;Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;ILorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->lambda$cancelNotification$4(Ljava/lang/String;ILorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;Landroid/app/Notification$Builder;Ljava/lang/String;ZLjava/lang/String;ILorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->lambda$notifyNotification$3(Landroid/app/Notification$Builder;Ljava/lang/String;ZLjava/lang/String;ILorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V

    return-void
.end method

.method private connect(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->connect(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;)V

    return-void
.end method

.method private static createPermissionHandler(Lorg/chromium/base/Callback;)Landroid/os/Handler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/sec/terrace/browser/webapps/g;

    invoke-direct {v2, p0}, Lcom/sec/terrace/browser/webapps/g;-><init>(Lorg/chromium/base/Callback;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static synthetic d(Lorg/chromium/base/Callback;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->lambda$createPermissionHandler$1(Lorg/chromium/base/Callback;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private static decodeImageResourceFromPackage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Webapk package not found. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TinWebApkServiceClient"

    invoke-static {p1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static disconnectAll()V
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->sInstance:Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->disconnectAll(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic e(Lorg/chromium/base/Callback;Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->lambda$checkNotificationPermission$0(Lorg/chromium/base/Callback;Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V

    return-void
.end method

.method private fallbackToWebApkIconIfNecessary(Landroid/app/Notification$Builder;Ljava/lang/String;ZI)V
    .locals 0

    if-nez p3, :cond_0

    invoke-static {p2, p4}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->decodeImageResourceFromPackage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->sInstance:Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->sInstance:Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->sInstance:Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    return-object v0
.end method

.method private isNotificationChannelSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$cancelNotification$4(Ljava/lang/String;ILorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->cancelNotification(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$checkNotificationPermission$0(Lorg/chromium/base/Callback;Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 0

    invoke-interface {p1}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->checkNotificationPermission()I

    move-result p1

    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->toContentSettingValue(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$createPermissionHandler$1(Lorg/chromium/base/Callback;Landroid/os/Message;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "permissionStatus"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->toContentSettingValue(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return v1
.end method

.method private synthetic lambda$notifyNotification$3(Landroid/app/Notification$Builder;Ljava/lang/String;ZLjava/lang/String;ILorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 1

    invoke-interface {p6}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->getSmallIconId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->fallbackToWebApkIconIfNecessary(Landroid/app/Notification$Builder;Ljava/lang/String;ZI)V

    invoke-interface {p6}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->checkNotificationPermission()I

    move-result p3

    invoke-static {p3}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->toContentSettingValue(I)I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->webApkTargetsAtLeastO(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->isNotificationChannelSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "default_channel_id"

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/sec/terrace/R$string;->webapk_notification_channel_name:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-interface {p6, p4, p5, p1, p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->notifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$requestNotificationPermission$2(Lorg/chromium/base/Callback;Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 10

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$string;->webapk_notification_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_channel_id"

    invoke-interface {p1, v0, v1}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->requestNotificationPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->createPermissionHandler(Lorg/chromium/base/Callback;)Landroid/os/Handler;

    move-result-object p0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string p0, "messenger"

    invoke-virtual {v5, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setActivityOptionsBackgroundActivityStartAllowAlways(Landroid/app/ActivityOptions;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TinWebApkServiceClient"

    const-string v0, "The PendingIntent was canceled."

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static toContentSettingValue(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    return v0
.end method

.method private webApkTargetsAtLeastO(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webapk package not found. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TinWebApkServiceClient"

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/webapps/e;

    invoke-direct {v0, p2, p3}, Lcom/sec/terrace/browser/webapps/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->connect(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;)V

    return-void
.end method

.method public checkNotificationPermission(Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/webapps/f;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/sec/terrace/browser/webapps/f;-><init>(Lorg/chromium/base/Callback;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->connect(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;)V

    return-void
.end method

.method public getWebApkServiceConnectionManagerForTesting()Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    return-object p0
.end method

.method public notifyNotification(Ljava/lang/String;Landroid/app/Notification$Builder;Ljava/lang/String;IZ)V
    .locals 8

    new-instance v7, Lcom/sec/terrace/browser/webapps/d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/webapps/d;-><init>(Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;Landroid/app/Notification$Builder;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-direct {p0, p1, v7}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->connect(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;)V

    return-void
.end method

.method public requestNotificationPermission(Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const-string p0, "TinWebApkServiceClient"

    const-string p1, "Requesting notification permission is not supported before T."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/webapps/f;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/sec/terrace/browser/webapps/f;-><init>(Lorg/chromium/base/Callback;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->connect(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;)V

    return-void
.end method
