.class Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDisableAndWaitForVerificationParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDismissParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptShowParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
