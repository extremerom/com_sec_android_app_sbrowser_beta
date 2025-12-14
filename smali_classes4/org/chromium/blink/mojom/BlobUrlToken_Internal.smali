.class Lorg/chromium/blink/mojom/BlobUrlToken_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParams;,
        Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenParams;,
        Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenCloneParams;,
        Lorg/chromium/blink/mojom/BlobUrlToken_Internal$Stub;,
        Lorg/chromium/blink/mojom/BlobUrlToken_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/BlobUrlToken;",
            "Lorg/chromium/blink/mojom/BlobUrlToken$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
