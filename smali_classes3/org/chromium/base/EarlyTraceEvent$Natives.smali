.class interface abstract Lorg/chromium/base/EarlyTraceEvent$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract recordEarlyAsyncBeginEvent(Ljava/lang/String;JJ)V
.end method

.method public abstract recordEarlyAsyncEndEvent(JJ)V
.end method

.method public abstract recordEarlyBeginEvent(Ljava/lang/String;JIJ)V
.end method

.method public abstract recordEarlyEndEvent(Ljava/lang/String;JIJ)V
.end method

.method public abstract recordEarlyToplevelBeginEvent(Ljava/lang/String;JIJ)V
.end method

.method public abstract recordEarlyToplevelEndEvent(Ljava/lang/String;JIJ)V
.end method
