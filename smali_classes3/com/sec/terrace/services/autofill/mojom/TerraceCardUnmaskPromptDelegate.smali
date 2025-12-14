.class public interface abstract Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate$CheckUserInputValidity_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate$Proxy;
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

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract checkUserInputValidity(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate$CheckUserInputValidity_Response;)V
.end method

.method public abstract dismissed()V
.end method

.method public abstract onNewCardLinkClicked()V
.end method

.method public abstract onUserInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
