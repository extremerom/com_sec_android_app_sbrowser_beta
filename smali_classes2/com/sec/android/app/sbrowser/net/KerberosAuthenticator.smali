.class public Lcom/sec/android/app/sbrowser/net/KerberosAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static initialize()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/net/KerberosAuthenticator$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/KerberosAuthenticator$1;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator;->setKerberosAuthenticator(Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;)V

    return-void
.end method
