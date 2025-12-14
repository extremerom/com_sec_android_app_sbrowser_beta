.class Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageResponseParams;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageParams;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParams;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyParams;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$Stub;,
        Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/on_device_model/mojom/TextSafetySession;",
            "Lorg/chromium/on_device_model/mojom/TextSafetySession$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$1;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
