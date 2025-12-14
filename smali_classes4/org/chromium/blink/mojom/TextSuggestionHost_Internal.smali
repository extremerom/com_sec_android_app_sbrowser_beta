.class Lorg/chromium/blink/mojom/TextSuggestionHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowTextSuggestionMenuParams;,
        Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostShowSpellCheckSuggestionMenuParams;,
        Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$TextSuggestionHostStartSuggestionMenuTimerParams;,
        Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/TextSuggestionHost;",
            "Lorg/chromium/blink/mojom/TextSuggestionHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/TextSuggestionHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
