.class public interface abstract Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$Proxy;
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

    sget-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onFillPasswordForm(ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;)V
.end method

.method public abstract showMigrationPopup()V
.end method
