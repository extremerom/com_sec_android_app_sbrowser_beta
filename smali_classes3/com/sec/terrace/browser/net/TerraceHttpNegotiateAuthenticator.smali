.class public Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;
    }
.end annotation


# direct methods
.method public static setKerberosAuthenticator(Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$1;-><init>(Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;)V

    invoke-static {v0}, Lorg/chromium/net/HttpNegotiateAuthenticator;->setKerberosAuthenticator(Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;)V

    return-void
.end method
