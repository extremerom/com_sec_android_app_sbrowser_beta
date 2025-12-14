.class public interface abstract Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt$Proxy;
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

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract disableAndWaitForVerification()V
.end method

.method public abstract dismiss()V
.end method

.method public abstract init(Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
.end method

.method public abstract show()V
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract verificationFinished(Ljava/lang/String;Z)V
.end method
