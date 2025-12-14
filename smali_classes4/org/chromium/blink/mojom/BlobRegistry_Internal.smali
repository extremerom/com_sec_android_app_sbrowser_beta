.class Lorg/chromium/blink/mojom/BlobRegistry_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamResponseParams;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamParams;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterResponseParams;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterParams;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$Stub;,
        Lorg/chromium/blink/mojom/BlobRegistry_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/BlobRegistry;",
            "Lorg/chromium/blink/mojom/BlobRegistry$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobRegistry_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
