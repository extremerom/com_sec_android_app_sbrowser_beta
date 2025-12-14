.class Lcom/sec/terrace/browser/net/TinLoadingFailTracker$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/net/TinLoadingFailTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$1;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$1;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->f(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$1;->this$0:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->f(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V

    return-void
.end method
