.class Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/net/TinLoadingFailTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reporter"
.end annotation


# instance fields
.field private mCumulativeCount:I

.field private mCumulativeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedTimestamp:J

.field final synthetic this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mReportedTimestamp:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->report(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->sendLogMap()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->sendLogMapIfNecessary()V

    return-void
.end method

.method private extractErrorCode(I)I
    .locals 0

    and-int/lit16 p0, p1, 0xfff

    not-int p0, p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private extractReason(I)I
    .locals 0

    shr-int/lit8 p0, p1, 0xc

    return p0
.end method

.method private isIgnorableError(I)Z
    .locals 0

    const/4 p0, -0x3

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isIntendedError(I)Z
    .locals 0

    const/16 p0, -0x1f5

    if-eq p1, p0, :cond_0

    const/16 p0, -0x190

    if-eq p1, p0, :cond_0

    const/16 p0, -0x1b

    if-eq p1, p0, :cond_0

    const/16 p0, -0x16

    if-eq p1, p0, :cond_0

    const/16 p0, -0x14

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private judgeReason(ILjava/lang/String;)I
    .locals 7

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->isIntendedError(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->c(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/16 v0, -0x63

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-gt v0, p1, :cond_7

    if-gtz p1, :cond_7

    const/16 v0, -0x1a

    if-eq p1, v0, :cond_6

    const/4 v0, -0x7

    if-eq p1, v0, :cond_4

    const/4 p0, -0x6

    if-eq p1, p0, :cond_2

    packed-switch p1, :pswitch_data_0

    return v6

    :pswitch_0
    return v5

    :pswitch_1
    return v4

    :cond_2
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "http"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :cond_4
    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v5

    :cond_6
    return v3

    :cond_7
    const/16 p2, -0xc7

    if-gt p2, p1, :cond_a

    const/16 p2, -0x64

    if-gt p1, p2, :cond_a

    packed-switch p1, :pswitch_data_1

    :pswitch_2
    return v6

    :pswitch_3
    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v5

    :pswitch_4
    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->a(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v6

    :pswitch_5
    return v4

    :pswitch_6
    return v3

    :pswitch_7
    return v5

    :cond_a
    const/16 p0, -0x18f

    if-gt p0, p1, :cond_b

    const/16 p0, -0xc8

    if-gt p1, p0, :cond_b

    return v5

    :cond_b
    const/16 p0, -0x257

    if-gt p0, p1, :cond_c

    const/16 p0, -0x190

    if-gt p1, p0, :cond_c

    return v6

    :cond_c
    const/16 p0, -0x31f

    if-gt p0, p1, :cond_d

    const/16 p0, -0x258

    if-gt p1, p0, :cond_d

    return v4

    :cond_d
    const/16 p0, -0x383

    if-gt p0, p1, :cond_f

    const/16 p0, -0x320

    if-gt p1, p0, :cond_f

    const/16 p0, -0x324

    if-ne p1, p0, :cond_e

    return v6

    :cond_e
    return v4

    :cond_f
    return v6

    :pswitch_data_0
    .packed-switch -0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xac
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private makeKey(II)I
    .locals 0

    not-int p0, p1

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p1, p2, 0xc

    or-int/2addr p0, p1

    return p0
.end method

.method private recordMap(I)V
    .locals 3

    iget v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeCount:I

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private report(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->isIgnorableError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->judgeReason(ILjava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->makeKey(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->recordMap(I)V

    return-void
.end method

.method private sendLogMap()V
    .locals 6

    const-string v0, "TinLoadingFailTracker"

    const-string v1, "sendLogMap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->extractErrorCode(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->extractReason(I)I

    move-result v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Error code"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Reason"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Count"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "201"

    const-string v2, "9900"

    invoke-static {v1, v2, v4}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mReportedTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeCount:I

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private sendLogMapIfNecessary()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->sendLogMap()V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mCumulativeCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->sendLogMap()V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->mReportedTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->sendLogMap()V

    :cond_2
    return-void
.end method
