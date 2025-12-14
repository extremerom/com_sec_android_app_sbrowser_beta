.class Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookShowMigrationPopupParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$TerracePasswordAutofillHookOnFillPasswordFormParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook;",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
