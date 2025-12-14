.class Lorg/chromium/network/mojom/SslPrivateKey_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SslPrivateKey_Internal$SslPrivateKeySignResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SslPrivateKey_Internal$SslPrivateKeySignResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SslPrivateKey_Internal$SslPrivateKeySignResponseParams;,
        Lorg/chromium/network/mojom/SslPrivateKey_Internal$SslPrivateKeySignParams;,
        Lorg/chromium/network/mojom/SslPrivateKey_Internal$Stub;,
        Lorg/chromium/network/mojom/SslPrivateKey_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/SslPrivateKey;",
            "Lorg/chromium/network/mojom/SslPrivateKey$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/SslPrivateKey_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SslPrivateKey_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/SslPrivateKey_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
