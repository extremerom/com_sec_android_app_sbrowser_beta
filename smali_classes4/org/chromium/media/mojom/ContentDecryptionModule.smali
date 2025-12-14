.class public interface abstract Lorg/chromium/media/mojom/ContentDecryptionModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/ContentDecryptionModule$RemoveSession_Response;,
        Lorg/chromium/media/mojom/ContentDecryptionModule$CloseSession_Response;,
        Lorg/chromium/media/mojom/ContentDecryptionModule$UpdateSession_Response;,
        Lorg/chromium/media/mojom/ContentDecryptionModule$LoadSession_Response;,
        Lorg/chromium/media/mojom/ContentDecryptionModule$CreateSessionAndGenerateRequest_Response;,
        Lorg/chromium/media/mojom/ContentDecryptionModule$GetStatusForPolicy_Response;,
        Lorg/chromium/media/mojom/ContentDecryptionModule$SetServerCertificate_Response;,
        Lorg/chromium/media/mojom/ContentDecryptionModule$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/ContentDecryptionModule;",
            "Lorg/chromium/media/mojom/ContentDecryptionModule$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/ContentDecryptionModule;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract closeSession(Ljava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$CloseSession_Response;)V
.end method

.method public abstract createSessionAndGenerateRequest(II[BLorg/chromium/media/mojom/ContentDecryptionModule$CreateSessionAndGenerateRequest_Response;)V
.end method

.method public abstract getStatusForPolicy(ILorg/chromium/media/mojom/ContentDecryptionModule$GetStatusForPolicy_Response;)V
.end method

.method public abstract loadSession(ILjava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$LoadSession_Response;)V
.end method

.method public abstract removeSession(Ljava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$RemoveSession_Response;)V
.end method

.method public abstract setClient(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;)V
.end method

.method public abstract setServerCertificate([BLorg/chromium/media/mojom/ContentDecryptionModule$SetServerCertificate_Response;)V
.end method

.method public abstract updateSession(Ljava/lang/String;[BLorg/chromium/media/mojom/ContentDecryptionModule$UpdateSession_Response;)V
.end method
