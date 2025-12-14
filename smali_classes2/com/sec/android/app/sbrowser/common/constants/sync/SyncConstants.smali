.class public Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;,
        Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$DeviceType;,
        Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$Intents;,
        Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$Operations;,
        Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$Messages;
    }
.end annotation


# static fields
.field public static SAMSUNG_CLOUD_MARKET_URI:Landroid/net/Uri;

.field public static SYNC_STATE_URI:Landroid/net/Uri;

.field public static final TAB_URI:Landroid/net/Uri;

.field public static iDownSyncCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sbrowser.beta/tabs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants;->TAB_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta/syncstate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants;->SYNC_STATE_URI:Landroid/net/Uri;

    const-string v0, "samsungapps://ProductDetail/com.samsung.android.scloud"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants;->SAMSUNG_CLOUD_MARKET_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants;->iDownSyncCount:I

    return-void
.end method
