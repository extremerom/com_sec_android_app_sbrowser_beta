.class Lorg/chromium/blink/mojom/SiTranslationManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$SiTranslationManagerGetAvailableLanguagesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$SiTranslationManagerGetAvailableLanguagesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$SiTranslationManagerGetAvailableLanguagesResponseParams;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$SiTranslationManagerGetAvailableLanguagesParams;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$SiTranslationManagerCreateTranslatorResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$SiTranslationManagerCreateTranslatorResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$SiTranslationManagerCreateTranslatorResponseParams;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$SiTranslationManagerCreateTranslatorParams;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$Stub;,
        Lorg/chromium/blink/mojom/SiTranslationManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SiTranslationManager;",
            "Lorg/chromium/blink/mojom/SiTranslationManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SiTranslationManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SiTranslationManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/SiTranslationManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
