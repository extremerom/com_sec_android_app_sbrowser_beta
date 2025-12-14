.class Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$TerraceAutofillDeletionConfirmOnSuggestionPopupDismissedParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$TerraceAutofillDeletionConfirmOnDeletionConfirmResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$TerraceAutofillDeletionConfirmOnDeletionConfirmResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$TerraceAutofillDeletionConfirmOnDeletionConfirmResponseParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$TerraceAutofillDeletionConfirmOnDeletionConfirmParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillDeletionConfirm_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
