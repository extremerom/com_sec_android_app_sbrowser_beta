.class interface abstract Lorg/chromium/base/TimeUtils$FakeClock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FakeClock"
.end annotation


# virtual methods
.method public abstract currentThreadTimeMillis()J
.end method

.method public abstract currentTimeMillis()J
.end method

.method public abstract elapsedRealtimeNanos()J
.end method

.method public abstract uptimeMillis()J
.end method
