.class Lorg/chromium/blink/mojom/TranslationManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableResponseParams;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableParams;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCreateTranslatorParams;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorResponseParams;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorParams;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$Stub;,
        Lorg/chromium/blink/mojom/TranslationManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/TranslationManager;",
            "Lorg/chromium/blink/mojom/TranslationManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TranslationManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/TranslationManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
