.class public Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sOldChannelList:[Ljava/lang/String;


# instance fields
.field private final mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "browser"

    const-string v1, "SBROWSER_PROMOTION_NOTIFICATION_CHANNEL"

    const-string v2, "SBROWSER_CC_NOTIFICATION_CHANNEL"

    const-string v3, "MEDIA_NOTIFICATION"

    const-string v4, "SBROWSER_SOFT_HINT_NOTIFICATION_CHANNEL"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->sOldChannelList:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->sChannelGroupList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const v2, 0x7f14082b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SBROWSER_NOTIFICATION_GROUP_SITES"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->mId:Ljava/lang/String;

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    new-instance p1, Landroid/app/NotificationChannel;

    invoke-direct {p1, p2, p3, p5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p4}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {p1, p7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 p2, 0x2

    if-le p5, p2, :cond_1

    if-nez p8, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static createAllNotificationChannelGroup(Landroid/content/Context;)V
    .locals 6

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->sChannelGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    new-instance v3, Landroid/app/NotificationChannelGroup;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static deletePromotionsNotificationChannel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "SBROWSER_PROMOTIONS_NOTIFICATION_CHANNEL"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->deleteNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteSamsungAccountNotificationChannel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "SBROWSER_SAMSUNG_ACCOUNT_NOTIFICATION_CHANNEL"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->deleteNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteWebsiteNotificationChannel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "SBROWSER_WEBSITES_NOTIFICATION_CHANNEL"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->deleteNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
