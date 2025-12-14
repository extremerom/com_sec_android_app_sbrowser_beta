.class public Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;
    }
.end annotation


# static fields
.field private static final CHANNEL_NAME_RES:I

.field private static final NOTIFICATION_ICON_BG_COLOR:I

.field private static final TAG:Ljava/lang/String; = "TinNotificationPlatformBridge"

.field private static sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

.field private static sMinDaysToWaitBeforeEmbargo:I

.field private static sMinUnreadNotificationsBeforeEmbargo:I


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mDensity:F

.field private final mHandler:Landroid/os/Handler;

.field private mIconGenerator:Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;

.field private final mLargeIconHeightPx:I

.field private final mLargeIconWidthPx:I

.field private final mNativeNotificationManager:J

.field private final mNotificationManager:Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->NOTIFICATION_ICON_BG_COLOR:I

    sget v0, Lcom/sec/terrace/R$string;->notification_category_websites:I

    sput v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->CHANNEL_NAME_RES:I

    const/16 v0, 0xa

    sput v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sMinUnreadNotificationsBeforeEmbargo:I

    const/4 v0, 0x7

    sput v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sMinDaysToWaitBeforeEmbargo:I

    return-void
.end method

.method private constructor <init>(JLandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mHandler:Landroid/os/Handler;

    iput-wide p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNativeNotificationManager:J

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;

    const-string v0, "notification"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    invoke-direct {p2, p3}, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxyImpl;-><init>(Landroid/app/NotificationManager;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNotificationManager:Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;

    const p2, 0x1050005

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconWidthPx:I

    const p2, 0x1050006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconHeightPx:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mDensity:F

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->lambda$displayNotification$2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/Boolean;)V

    return-void
.end method

.method private addNotificationDataToDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const-string v4, "Error "

    const-string v5, "read"

    const-string v6, "time"

    const-string v7, "descreption"

    const-string v8, "url"

    invoke-direct/range {p0 .. p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->checkForMaxNotificationItems()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->clearAllOldNotificationsFromDB()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".webPushNotification"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "content://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/notifications"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-string v0, "persid = ?"

    filled-new-array/range {p6 .. p6}, [Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    :try_start_0
    iget-object v9, v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v11, Lcom/sec/terrace/browser/notifications/TinNotificationProviderConstants;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v21, 0x0

    move-object v10, v15

    move-object v12, v0

    move-object v13, v14

    move-object/from16 v22, v4

    move-object v4, v14

    move-object/from16 v14, v21

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_1

    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v9, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "seen"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v15, v9, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object/from16 v10, v22

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v22, v4

    :goto_1
    :try_start_2
    sget-object v4, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    :try_start_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "title"

    move-object/from16 v11, p1

    invoke-virtual {v4, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tag"

    move-object/from16 v3, p3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "persid"

    move-object/from16 v3, p6

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "domain"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clicked"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p4, :cond_4

    invoke-static/range {p4 .. p4}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->getBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const-string v2, "icon"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v0, v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v15, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void

    :goto_6
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private addNotificationDataToDBOnWorkerThread(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->getInstance()Lcom/sec/terrace/browser/notifications/TinNotificationThread;

    move-result-object p1

    new-instance v7, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;-><init>(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->lambda$deleteNotificationFromNativeDB$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blockPermissionSettingForOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "blockPermissionSettingForOrigin notificationId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    const-string p2, "*"

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->setContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/sec/terrace/R$string;->notification_permission_blocked_toast:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private buildSummaryNotification(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->hasAnyActiveWebPushNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    const-string v3, "SBROWSER_WEBSITES_NOTIFICATION_CHANNEL"

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/sec/terrace/R$drawable;->stat_notify_internet_new:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    sget v4, Lcom/sec/terrace/R$color;->webnoti_notification_color:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v4, "SBROWSER_WEBPUSH_NOTIFICATION_GROUP"

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$InboxStyle;

    invoke-direct {v1}, Landroid/app/Notification$InboxStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNotificationManager:Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lorg/chromium/base/Callback;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->lambda$startNoisyNotificationCheck$5(Lorg/chromium/base/Callback;Z)V

    return-void
.end method

.method private checkForMaxNotificationItems()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".webPushNotification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/notifications"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "notification_max_items"

    const/16 v5, 0x1f4

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "notification_evict_count"

    const/16 v5, 0x64

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v11, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/sec/terrace/browser/notifications/TinNotificationProviderConstants;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lt v4, v10, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v4, "persid"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v5}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->deleteNotificationFromNativeDB(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_1
    sget-object v2, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_3

    :try_start_2
    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persid IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [C

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    const-string v4, "\u0000"

    const-string v5, "?,"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method private clearAllOldNotificationsFromDB()V
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-string v5, "notification_clear_last_timestamp"

    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v3, v1, v3

    cmp-long v3, v3, v6

    if-ltz v3, :cond_0

    const-string v3, "notification_clear_by_days"

    const/16 v4, 0xe

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->clearNotificationFromNativeDB(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".webPushNotification"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "content://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/notifications"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "time <= strftime(\'%s\', \'now\', \'-"

    const-string v7, " days\') * 1000"

    invoke-static {v3, v6, v7}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v3, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Error: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private clearNotificationFromNativeDB(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".webPushNotification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/notifications"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "time <= strftime(\'%s\', \'now\', \'-"

    const-string v1, " days\') * 1000"

    invoke-static {p1, v0, v1}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/terrace/browser/notifications/TinNotificationProviderConstants;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v0, "persid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->deleteNotificationFromNativeDB(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_1
    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method private closeNotification(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    const-string v1, "closeNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, LM4/a;

    const/16 v0, 0x13

    invoke-direct {p3, p0, v0, p1, p2}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p4, p3}, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->checkSBrowserBacksWebApkAsync(Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->closeNotificationInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private closeNotificationInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNotificationManager:Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;

    invoke-interface {p0, p1, v1}, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->getInstance()Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static create(J)Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;-><init>(JLandroid/content/Context;)V

    sput-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There must only be a single NotificationPlatformBridge."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createNotificationChannel()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNotificationManager:Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;

    const-string v1, "SBROWSER_WEBSITES_NOTIFICATION_CHANNEL"

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    sget v3, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->CHANNEL_NAME_RES:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNotificationManager:Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;

    invoke-interface {p0, v0}, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private createTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->lambda$displayNotification$0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;Z)V

    return-void
.end method

.method public static deleteNotificationFromNativeDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    const-string p1, "deleteNotificationFromNativeDB sInstance null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroy()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    return-void
.end method

.method public static dispatchNotificationEvent(Landroid/content/Intent;)Z
    .locals 9

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridgeJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;->initializeNotificationPlatformBridge()V

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    const-string v0, "Unable to initialize the native NotificationPlatformBridge."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "notification_type"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "notification_persistent_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "notification_info_origin"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "notification_info_scope"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_1

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    const-string v0, "com.sec.terrace.browser.notifications.CLICK_NOTIFICATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    const-string v0, "notification_info_action_index"

    const/4 v8, -0x1

    invoke-virtual {p0, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "notification_block_setting"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    invoke-direct {p0, v5, v3}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->blockPermissionSettingForOrigin(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_2
    const-string v0, "notification_info_webapk_package"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    move-object v7, v2

    goto :goto_1

    :cond_3
    move-object v7, p0

    :goto_1
    sget-object v2, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    invoke-direct/range {v2 .. v8}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->onNotificationClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "com.sec.terrace.browser.notifications.CLOSE_NOTIFICATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    const-string v0, "dispatchNotificationEvent ACTION_CLOSE_NOTIFICATION Type: "

    invoke-static {v4, v0, p0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    if-ne v4, p0, :cond_5

    sget-object p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->onNotificationClosed(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    return v7

    :cond_6
    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized Notification action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private displayNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 22
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isPushNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "displayNotification Type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , Title:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v15, Lcom/sec/terrace/browser/notifications/a;

    move-object v3, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object v1, v15

    move-wide/from16 v15, p11

    move/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move/from16 v20, p16

    move-object/from16 v21, v0

    invoke-direct/range {v3 .. v21}, Lcom/sec/terrace/browser/notifications/a;-><init>(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->checkSBrowserBacksWebApkAsync(Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isBlockNoisyNotificaitonsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/terrace/browser/notifications/b;

    move-object v3, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-wide/from16 v15, p11

    move/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move/from16 v20, p16

    invoke-direct/range {v3 .. v20}, Lcom/sec/terrace/browser/notifications/b;-><init>(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v15, p0

    move-object/from16 v13, p3

    invoke-direct {v15, v13, v0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->startNoisyNotificationCheck(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_2
    move-object/from16 v15, p0

    move-object/from16 v13, p3

    const-string v20, ""

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move/from16 v19, p16

    invoke-direct/range {v3 .. v20}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->displayNotificationInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    move-object/from16 p9, p0

    move/from16 p10, p2

    move-object/from16 p11, p5

    move-object/from16 p12, p3

    move-object/from16 p13, p8

    move-object/from16 p14, p6

    move-object/from16 p15, p1

    invoke-direct/range {p9 .. p15}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->addNotificationDataToDBOnWorkerThread(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private displayNotificationInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .locals 22

    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p10

    move-object/from16 v15, p14

    move-object/from16 v8, p15

    move/from16 v7, p16

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridgeJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;

    move-result-object v0

    iget-wide v1, v9, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNativeNotificationManager:J

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p17

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;->storeCachedWebApkPackageForNotificationId(JLcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    xor-int/lit8 v0, v16, 0x1

    invoke-direct {v9, v0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->shouldSetChannelId(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->createNotificationChannel()V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, v9, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    const-string v2, "SBROWSER_WEBSITES_NOTIFICATION_CHANNEL"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, v9, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-object/from16 v0, p8

    invoke-direct {v9, v0, v11}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->ensureNormalizedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    if-nez v16, :cond_1

    if-eqz p9, :cond_1

    invoke-static/range {p9 .. p9}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move/from16 v17, v4

    goto :goto_2

    :cond_1
    sget v0, Lcom/sec/terrace/R$drawable;->stat_notify_internet_new:I

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move/from16 v17, v3

    :goto_2
    const/16 v18, -0x1

    const/16 v19, 0x0

    const-string v1, "com.sec.terrace.browser.notifications.CLICK_NOTIFICATION"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    move-object/from16 v5, p4

    move-object/from16 v21, v6

    move-object/from16 v6, p17

    move/from16 v7, v18

    move-object v14, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->makePendingIntent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/from16 v8, v20

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v7, -0x1

    const/16 v18, 0x0

    const-string v1, "com.sec.terrace.browser.notifications.CLOSE_NOTIFICATION"

    move-object/from16 v0, p0

    move-object v15, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->makePendingIntent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-direct {v9, v12, v13}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->createTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v8, 0x2

    if-ne v10, v8, :cond_2

    move-object/from16 v0, p7

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_3

    :cond_2
    invoke-static {v11, v12}, Lorg/chromium/components/url_formatter/UrlFormatter;->formatUrlForSecurityDisplay(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_3
    iget-object v0, v9, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/sec/terrace/R$color;->webnoti_notification_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    if-eqz v14, :cond_3

    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v0, v14}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_4

    :cond_3
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_4
    move-object/from16 v14, p14

    const/4 v13, 0x0

    :goto_5
    array-length v0, v14

    if-ge v13, v0, :cond_4

    aget-object v7, v14, v13

    const-string v1, "com.sec.terrace.browser.notifications.CLICK_NOTIFICATION"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p17

    move-object v12, v7

    move v7, v13

    move v11, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->makePendingIntent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v15, v1, v12, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    add-int/lit8 v13, v13, 0x1

    move v8, v11

    const/4 v12, 0x1

    move-object/from16 v11, p3

    goto :goto_5

    :cond_4
    move-object/from16 v0, p10

    move v11, v8

    const/4 v1, 0x0

    array-length v2, v0

    move/from16 v3, p13

    invoke-direct {v9, v2, v3}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->makeDefaults(IZ)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    array-length v2, v0

    if-lez v2, :cond_5

    invoke-direct {v9, v0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->makeVibrationPattern([I)[J

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move/from16 v0, p16

    if-lez v0, :cond_6

    const/16 v2, 0x64

    invoke-virtual {v15, v2, v0, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :cond_6
    if-eqz v16, :cond_8

    const/4 v0, 0x3

    const/4 v2, 0x1

    const-string v3, "com.sec.terrace.browser.notifications.CLICK_NOTIFICATION"

    move-object/from16 p5, p0

    move-object/from16 p6, v3

    move-object/from16 p7, p1

    move/from16 p8, p2

    move-object/from16 p9, p3

    move-object/from16 p10, p4

    move-object/from16 p11, p17

    move/from16 p12, v0

    move/from16 p13, v2

    invoke-direct/range {p5 .. p13}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->makePendingIntent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/PendingIntent;

    move-result-object v0

    if-eq v10, v11, :cond_7

    sget v2, Lcom/sec/terrace/R$string;->permission_dialog_block_button_text:I

    move-object/from16 v3, v21

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_7
    const-string v0, "SBROWSER_WEBPUSH_NOTIFICATION_GROUP"

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-direct/range {p0 .. p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->buildSummaryNotification(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNotificationManager:Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;

    const/4 v1, -0x1

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v1, v2}, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_6

    :cond_8
    move-object/from16 v3, p1

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->getInstance()Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    move-result-object v0

    const/4 v1, -0x1

    move-object/from16 p2, v0

    move-object/from16 p3, p17

    move-object/from16 p4, v15

    move-object/from16 p5, p1

    move/from16 p6, v1

    move/from16 p7, v17

    invoke-virtual/range {p2 .. p7}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->notifyNotification(Ljava/lang/String;Landroid/app/Notification$Builder;Ljava/lang/String;IZ)V

    :goto_6
    iget-object v0, v9, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    const-string v1, "0164"

    const-string v2, ""

    const-wide/16 v3, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/terrace/browser/TinAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "211"

    const-string v1, "9106"

    invoke-static {v0, v1, v3, v4}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->lambda$displayNotification$1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private ensureNormalizedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconWidthPx:I

    if-gt p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconHeightPx:I

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    iget p2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconWidthPx:I

    iget p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconHeightPx:I

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mIconGenerator:Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;

    if-nez p1, :cond_4

    iget p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconWidthPx:I

    iget v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconHeightPx:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 v3, p1, 0x2

    new-instance p1, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;

    iget v1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconWidthPx:I

    iget v2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mLargeIconHeightPx:I

    sget v4, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->NOTIFICATION_ICON_BG_COLOR:I

    const/high16 v0, 0x41e00000    # 28.0f

    iget v5, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mDensity:F

    mul-float/2addr v5, v0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;-><init>(IIIIF)V

    iput-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mIconGenerator:Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;

    :cond_4
    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mIconGenerator:Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->lambda$startNoisyNotificationCheck$6(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->lambda$closeNotification$3(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static getBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private getUpdatedEmbargoStatus(Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "time"

    const-string v3, "Error "

    const-string v4, "URI syntax error "

    const-string v5, "/notifications"

    const-string v6, "content://"

    const/4 v7, 0x5

    invoke-static {v7, v1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->isEmbargoed(ILjava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    return v9

    :cond_0
    sget v8, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sMinDaysToWaitBeforeEmbargo:I

    int-to-long v10, v8

    const-wide/32 v12, 0x5265c00

    mul-long/2addr v10, v12

    const/4 v8, 0x0

    const/4 v12, 0x0

    :try_start_0
    const-string v13, "domain"

    const-string v14, "read"

    filled-new-array {v13, v14, v2}, [Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".webPushNotification"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v18, "domain = ? AND read = ?"

    const-string v6, "0"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v19

    iget-object v6, v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v20, "time DESC"

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const-wide/16 v14, 0x0

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v18, v16, v14

    cmp-long v2, v18, v10

    if-gez v2, :cond_4

    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    return v8

    :cond_4
    sub-long v16, v16, v10

    :try_start_3
    const-string v18, "domain = ? AND read = ? AND time > ? AND time < ?"

    const-string v2, "1"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v4, v2, v6, v10}, [Ljava/lang/String;

    move-result-object v19

    iget-object v0, v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v20, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v8

    :goto_1
    sget v2, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sMinUnreadNotificationsBeforeEmbargo:I

    if-lt v0, v2, :cond_7

    invoke-static {v7, v1, v9}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->setEmbargo(ILjava/lang/String;Z)V

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    const-string v1, "Noisy notification detected. Embargoed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "201"

    const-string v1, "5247"

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    return v9

    :cond_7
    if-eqz v12, :cond_8

    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v8

    :goto_3
    :try_start_5
    sget-object v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_8

    goto :goto_2

    :cond_8
    :goto_4
    return v8

    :goto_5
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->addNotificationDataToDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hasAnyActiveWebPushNotifications()Z
    .locals 5

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNotificationManager:Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;

    invoke-interface {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationManagerProxy;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SBROWSER_WEBPUSH_NOTIFICATION_GROUP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static bridge synthetic i(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->updateDB(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$closeNotification$3(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->closeNotificationInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$deleteNotificationFromNativeDB$4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->onNotificationClosed(Ljava/lang/String;ILjava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$displayNotification$0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;Z)V
    .locals 19

    if-eqz p18, :cond_0

    move-object/from16 v18, p17

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object/from16 v18, v0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    invoke-direct/range {v1 .. v18}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->displayNotificationInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$displayNotification$1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    const-string v17, ""

    invoke-direct/range {v0 .. v17}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->displayNotificationInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$displayNotification$2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/Boolean;)V
    .locals 20

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/sec/terrace/browser/notifications/c;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object v0, v13

    move-wide/from16 v13, p11

    move-object/from16 v19, v15

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    invoke-direct/range {v1 .. v18}, Lcom/sec/terrace/browser/notifications/c;-><init>(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    const-string v1, "Notification from embargoed origin is not shown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "201"

    const-string v1, "5237"

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object/from16 p9, p0

    move/from16 p10, p2

    move-object/from16 p11, p5

    move-object/from16 p12, p3

    move-object/from16 p13, p8

    move-object/from16 p14, p6

    move-object/from16 p15, p1

    invoke-direct/range {p9 .. p15}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->addNotificationDataToDBOnWorkerThread(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startNoisyNotificationCheck$5(Lorg/chromium/base/Callback;Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startNoisyNotificationCheck$6(Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->getUpdatedEmbargoStatus(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadNotificationItem(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "error "

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "persid = ?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/terrace/browser/notifications/TinNotificationProviderConstants;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id DESC"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p2, "url"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p2, "read"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto/16 :goto_3

    :catch_0
    move-exception p0

    move-object v1, p1

    goto :goto_1

    :cond_0
    move p2, v2

    :goto_0
    if-nez p2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2, v1, v2}, Lorg/chromium/webapk/lib/client/WebApkNavigationClient;->createLaunchWebApkIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v2

    :cond_1
    :try_start_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/terrace/browser/TinMetaInfoHelper;->getMainActivityClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "create_new_tab"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    sget-object p1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method private makeDefaults(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lez p1, :cond_1

    const/4 p0, -0x3

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private makeIntentData(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private makePendingIntent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/PendingIntent;
    .locals 2

    invoke-direct {p0, p2, p4, p7}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->makeIntentData(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    const-class v0, Lcom/sec/terrace/browser/notifications/TinNotificationService$Receiver;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1, p6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz p8, :cond_1

    const-string p1, "notification_block_setting"

    const/4 p8, 0x1

    invoke-virtual {v1, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string p1, "notification_persistent_id"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "notification_type"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "notification_info_origin"

    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "notification_info_scope"

    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "notification_info_webapk_package"

    invoke-virtual {v1, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "notification_info_action_index"

    invoke-virtual {v1, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    const/4 p1, 0x0

    const/high16 p2, 0xc000000

    invoke-static {p0, p1, v1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private makeVibrationPattern([I)[J
    .locals 4

    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v0, p1, v0

    int-to-long v2, v0

    aput-wide v2, p0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private onNotificationClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10

    move-object v3, p0

    iget-object v0, v3, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    const-string v1, "0165"

    const-string v2, ""

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sec/terrace/browser/TinAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "211"

    const-string v1, "9107"

    invoke-static {v0, v1, v4, v5}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->getInstance()Lcom/sec/terrace/browser/notifications/TinNotificationThread;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$2;

    move-object v4, p1

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$2;-><init>(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    const-string v1, "onNotificationClicked ACTION_CLICK_NOTIFICATION Type: "

    const-string v2, ", Action Index: "

    move v5, p2

    move/from16 v9, p6

    invoke-static {p2, v9, v1, v2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridgeJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;

    move-result-object v0

    iget-wide v1, v3, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNativeNotificationManager:J

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v0 .. v9}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;->onNotificationClicked(JLcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private onNotificationClosed(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridgeJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNativeNotificationManager:J

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;->onNotificationClosed(JLcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setEmbargoPeriodDays(I)V
    .locals 4

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNativeNotificationManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridgeJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;->setEmbargoPeriodDays(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setMinDaysToWaitBeforeEmbargo(I)V
    .locals 0

    sput p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sMinDaysToWaitBeforeEmbargo:I

    return-void
.end method

.method public static setMinUnreadNotificationsBeforeEmbargo(I)V
    .locals 0

    sput p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sMinUnreadNotificationsBeforeEmbargo:I

    return-void
.end method

.method public static setNotificationPermissionIgnoreCount(I)V
    .locals 4

    sget-object v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->sInstance:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mNativeNotificationManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridgeJni;->get()Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$Natives;->setNotificationPermissionIgnoreCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldSetChannelId(Z)Z
    .locals 0

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method private startNoisyNotificationCheck(Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->getInstance()Lcom/sec/terrace/browser/notifications/TinNotificationThread;

    move-result-object v0

    new-instance v1, LJ8/d;

    const/16 v2, 0x1b

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/notifications/TinNotificationThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDB(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".webPushNotification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/notifications"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->loadNotificationItem(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "read"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "clicked"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string v2, "persid = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
