.class Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator;->setKerberosAuthenticator(Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$authenticator:Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$1;->val$authenticator:Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNegotiateToken(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$1;->val$authenticator:Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;->getNegotiateToken(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
