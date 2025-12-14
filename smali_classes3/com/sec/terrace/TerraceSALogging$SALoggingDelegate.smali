.class public interface abstract Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/TerraceSALogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SALoggingDelegate"
.end annotation


# virtual methods
.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract sendStatusLog(Ljava/lang/String;I)V
.end method

.method public abstract sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V
.end method
