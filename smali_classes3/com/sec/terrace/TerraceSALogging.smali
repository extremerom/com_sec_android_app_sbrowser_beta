.class public Lcom/sec/terrace/TerraceSALogging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;
    }
.end annotation


# direct methods
.method public static setSALoggingDelegate(Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSALogging;->setDelegate(Lcom/sec/terrace/TerraceSALogging$SALoggingDelegate;)V

    return-void
.end method
