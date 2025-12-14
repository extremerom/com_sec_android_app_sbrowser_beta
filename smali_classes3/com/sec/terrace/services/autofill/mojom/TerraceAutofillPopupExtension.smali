.class public interface abstract Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onAcceptSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
.end method

.method public abstract onShow(I[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;ZLjava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;)V
.end method
