.class Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$TextSuggestionBackendSuggestionMenuTimeoutCallbackParams;,
        Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$TextSuggestionBackendOnSuggestionMenuClosedParams;,
        Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$TextSuggestionBackendOnNewWordAddedToDictionaryParams;,
        Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$TextSuggestionBackendDeleteActiveSuggestionRangeParams;,
        Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$TextSuggestionBackendApplyTextSuggestionParams;,
        Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$TextSuggestionBackendApplySpellCheckSuggestionParams;,
        Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$Stub;,
        Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/TextSuggestionBackend;",
            "Lorg/chromium/blink/mojom/TextSuggestionBackend$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/TextSuggestionBackend_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
