.class Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/AndroidNetworkLibrary$CertificateErrorObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary;->setCertificateErrorObserver(Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$1;->val$observer:Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$1;->val$observer:Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;->notify(IZ)V

    return-void
.end method
