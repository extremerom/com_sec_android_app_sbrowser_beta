.class Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;-><init>(Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;

.field final synthetic val$observer:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$1;->this$0:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;

    iput-object p2, p0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$1;->val$observer:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionCostChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectionSubtypeChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectionTypeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$1;->val$observer:Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    return-void
.end method

.method public onNetworkConnect(JI)V
    .locals 0

    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 0

    return-void
.end method

.method public onNetworkSoonToDisconnect(J)V
    .locals 0

    return-void
.end method

.method public purgeActiveNetworkList([J)V
    .locals 0

    return-void
.end method
