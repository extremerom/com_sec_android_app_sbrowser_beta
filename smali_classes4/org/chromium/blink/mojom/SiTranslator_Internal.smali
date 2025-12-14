.class Lorg/chromium/blink/mojom/SiTranslator_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorTranslateListResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorTranslateListResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorTranslateListResponseParams;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorTranslateListParams;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorCancelAllParams;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorDetectLanguageResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorDetectLanguageResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorDetectLanguageResponseParams;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$SiTranslatorDetectLanguageParams;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$Stub;,
        Lorg/chromium/blink/mojom/SiTranslator_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SiTranslator;",
            "Lorg/chromium/blink/mojom/SiTranslator$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SiTranslator_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SiTranslator_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/SiTranslator_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
