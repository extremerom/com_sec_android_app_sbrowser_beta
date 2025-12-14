.class Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/net/TinLoadingFailTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyNetworkState"
.end annotation


# instance fields
.field private mNetworkChangedTimestamp:[J

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field final synthetic this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkChangedTimestamp:[J

    invoke-static {p1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->a(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;-><init>(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->isBlocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->isEnduringNetworkChange()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->print()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->update()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->updateAndPrint()V

    return-void
.end method

.method private isAvailable()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private isBlocked()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isEnduringNetworkChange()Z
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkChangedTimestamp:[J

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long p0, v0, v3

    if-ltz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isNetworkStateChanged(Landroid/net/NetworkInfo;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->isNetworkTypeChanged(Landroid/net/NetworkInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez p0, :cond_2

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private isNetworkTypeChanged(Landroid/net/NetworkInfo;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private print()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v1, "TinLoadingFailTracker"

    if-nez v0, :cond_0

    const-string p0, "LoaderLog Network is disconnected"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LoaderLog "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private update()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-static {v1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->a(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->isNetworkTypeChanged(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->updateNetworkChangedTimestamp()V

    :cond_0
    return-void
.end method

.method private updateAndPrint()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->update()V

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->isNetworkStateChanged(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->print()V

    :cond_0
    return-void
.end method

.method private updateNetworkChangedTimestamp()V
    .locals 4

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->mNetworkChangedTimestamp:[J

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const/4 v3, 0x2

    aput-wide v1, p0, v3

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    aput-wide v2, p0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, p0, v1

    return-void
.end method
