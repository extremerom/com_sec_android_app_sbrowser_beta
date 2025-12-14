.class public Lcom/sec/terrace/browser/si_log/TerraceSILog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;
    }
.end annotation


# direct methods
.method public static getDelegateForTesting()Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/si_log/TinSILog;->getDelegateForTesting()Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public static setDelegate(Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_log/TinSILog;->setDelegate(Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;)V

    return-void
.end method
