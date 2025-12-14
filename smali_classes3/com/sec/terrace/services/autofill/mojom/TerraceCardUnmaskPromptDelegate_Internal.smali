.class Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$TerraceCardUnmaskPromptDelegateOnNewCardLinkClickedParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$TerraceCardUnmaskPromptDelegateOnUserInputParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$TerraceCardUnmaskPromptDelegateCheckUserInputValidityResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$TerraceCardUnmaskPromptDelegateCheckUserInputValidityResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$TerraceCardUnmaskPromptDelegateCheckUserInputValidityResponseParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$TerraceCardUnmaskPromptDelegateCheckUserInputValidityParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$TerraceCardUnmaskPromptDelegateDismissedParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
