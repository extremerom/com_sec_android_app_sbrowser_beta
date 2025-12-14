.class public Lcom/sec/terrace/TerraceTraceEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static begin(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    return-void
.end method

.method public static end(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public static maybeEnableEarlyTracing()V
    .locals 0

    return-void
.end method
