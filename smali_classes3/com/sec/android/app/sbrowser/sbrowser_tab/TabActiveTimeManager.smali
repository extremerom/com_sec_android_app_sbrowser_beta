.class public final Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u0008J\r\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;",
        "",
        "<init>",
        "()V",
        "",
        "startTime",
        "Ldb/r;",
        "recordTabActive",
        "(J)V",
        "endTime",
        "recordTabInactive",
        "getActiveTime",
        "()J",
        "mTotalActiveTime",
        "J",
        "mActiveStartTime",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mActiveStartTime:J

.field private mTotalActiveTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;->mTotalActiveTime:J

    return-wide v0
.end method

.method public final recordTabActive(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;->mActiveStartTime:J

    return-void
.end method

.method public final recordTabInactive(J)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;->mActiveStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;->mTotalActiveTime:J

    sub-long/2addr p1, v0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;->mTotalActiveTime:J

    return-void
.end method
