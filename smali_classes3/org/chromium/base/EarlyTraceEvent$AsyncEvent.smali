.class final Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;
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
    name = "AsyncEvent"
.end annotation


# instance fields
.field final mId:J

.field final mIsStart:Z

.field final mName:Ljava/lang/String;

.field final mTimeNanos:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mId:J

    iput-boolean p4, p0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mIsStart:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mTimeNanos:J

    return-void
.end method
