.class final Lorg/chromium/base/EarlyTraceEvent$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# instance fields
.field final mIsStart:Z

.field final mIsToplevel:Z

.field final mName:Ljava/lang/String;

.field final mThreadId:I

.field final mThreadTimeMillis:J

.field final mTimeNanos:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/chromium/base/EarlyTraceEvent$Event;->mIsStart:Z

    iput-boolean p3, p0, Lorg/chromium/base/EarlyTraceEvent$Event;->mIsToplevel:Z

    iput-object p1, p0, Lorg/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    iput p1, p0, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    return-void
.end method
