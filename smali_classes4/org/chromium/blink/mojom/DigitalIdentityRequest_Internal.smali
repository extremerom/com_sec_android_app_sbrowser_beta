.class Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestAbortParams;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestCreateResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestCreateResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestCreateResponseParams;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestCreateParams;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestGetResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestGetResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestGetResponseParams;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$DigitalIdentityRequestGetParams;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$Stub;,
        Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/DigitalIdentityRequest;",
            "Lorg/chromium/blink/mojom/DigitalIdentityRequest$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/DigitalIdentityRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
