.class final Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadChecker"
.end annotation


# instance fields
.field mTid:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->mTid:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->checkIfSafeThread()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->reset()V

    return-void
.end method

.method private checkIfSafeThread()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->mTid:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->mTid:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->mTid:J

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call not made on desired thread, desired thread id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->mTid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " and current thread id: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reset()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->mTid:J

    return-void
.end method
