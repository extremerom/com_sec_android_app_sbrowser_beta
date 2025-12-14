.class public Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;
    }
.end annotation


# instance fields
.field private mNetworkChangeNotifierAutoDetect:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;->mNetworkChangeNotifierAutoDetect:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez p2, :cond_0

    new-instance p2, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$1;-><init>(Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;)V

    new-instance p1, Lorg/chromium/net/RegistrationPolicyAlwaysRegister;

    invoke-direct {p1}, Lorg/chromium/net/RegistrationPolicyAlwaysRegister;-><init>()V

    invoke-direct {p2, v0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;->mNetworkChangeNotifierAutoDetect:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;->mNetworkChangeNotifierAutoDetect:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect;->mNetworkChangeNotifierAutoDetect:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    return-void
.end method
