.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;,
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;
    }
.end annotation


# static fields
.field public static final OLD_DEVICE_LIMIT_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants;->OLD_DEVICE_LIMIT_MS:J

    return-void
.end method
