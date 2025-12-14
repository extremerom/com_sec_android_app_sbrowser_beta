.class public Lcom/sec/terrace/browser/TinSALogging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDelegate:Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;


# direct methods
.method private static createDimensionMap()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private static insertDimensionIntoMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinSALogging;->sDelegate:Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/TinSALogging;->sDelegate:Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static sendEventLogDimension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/TinSALogging;->sDelegate:Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendStatusLog(Ljava/lang/String;I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/TinSALogging;->sDelegate:Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinSALogging;->sDelegate:Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDelegate(Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/TinSALogging;->sDelegate:Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;

    return-void
.end method
