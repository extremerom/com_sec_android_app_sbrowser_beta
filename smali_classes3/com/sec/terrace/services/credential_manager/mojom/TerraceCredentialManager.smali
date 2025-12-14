.class public interface abstract Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Decrypt_Response;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;",
            "Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract authenticateForAccountChooser(ILcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;)V
.end method

.method public abstract authenticateForAutoSignin(ILjava/lang/String;Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;)V
.end method

.method public abstract decrypt(ILjava/lang/String;Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Decrypt_Response;)V
.end method
