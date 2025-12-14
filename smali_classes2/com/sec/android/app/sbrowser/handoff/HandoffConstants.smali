.class public Lcom/sec/android/app/sbrowser/handoff/HandoffConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/handoff/HandoffConstants$SENDER;,
        Lcom/sec/android/app/sbrowser/handoff/HandoffConstants$TYPE;
    }
.end annotation


# static fields
.field public static final HANDOFF_EXPIRE_DURATION:J

.field public static final REVIVAL_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/android/app/sbrowser/handoff/HandoffConstants;->HANDOFF_EXPIRE_DURATION:J

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/sbrowser/handoff/HandoffConstants;->REVIVAL_TIME:J

    return-void
.end method
