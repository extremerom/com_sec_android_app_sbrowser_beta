.class public Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;
    }
.end annotation


# direct methods
.method public static setCertificateErrorObserver(Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$1;-><init>(Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;)V

    invoke-static {v0}, Lorg/chromium/net/AndroidNetworkLibrary;->setCertificateErrorObserver(Lorg/chromium/net/AndroidNetworkLibrary$CertificateErrorObserver;)V

    return-void
.end method
