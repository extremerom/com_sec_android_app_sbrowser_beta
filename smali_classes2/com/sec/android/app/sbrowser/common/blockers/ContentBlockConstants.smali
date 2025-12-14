.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants$AAASupportLevel;
    }
.end annotation


# static fields
.field public static final ADBLOCK_SILOG_UPDATE_PERIOD:I

.field public static final BANNER_SHOW_DELAY:J

.field public static final BIXBY_INIT_DELAY:I

.field public static final CONFIG_INIT_DELAY:I

.field static final CONNECTION_TIMEOUT:I

.field public static final DEFAULT_LIST_UPDATE_INIT_DELAY:I

.field public static final DEFAULT_RESOURCE_UPDATE_PERIOD:J

.field public static final FILTER_UPDATE_DELAY:I

.field static final READ_TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->CONNECTION_TIMEOUT:I

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->READ_TIMEOUT:I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xe

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v4, v4

    sput v4, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->ADBLOCK_SILOG_UPDATE_PERIOD:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->CONFIG_INIT_DELAY:I

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->DEFAULT_LIST_UPDATE_INIT_DELAY:I

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->BIXBY_INIT_DELAY:I

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v0, v4

    sput v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->FILTER_UPDATE_DELAY:I

    const-wide/16 v4, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sput-wide v4, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->BANNER_SHOW_DELAY:J

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->DEFAULT_RESOURCE_UPDATE_PERIOD:J

    return-void
.end method
