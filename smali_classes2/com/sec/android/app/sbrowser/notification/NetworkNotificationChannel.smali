.class public Lcom/sec/android/app/sbrowser/notification/NetworkNotificationChannel;
.super Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140832

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "SBROWSER_NO_NETWORK_NOTIFICATION_CHANNEL"

    const-string v6, "SBROWSER_NOTIFICATION_GROUP_SITES"

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-void
.end method
