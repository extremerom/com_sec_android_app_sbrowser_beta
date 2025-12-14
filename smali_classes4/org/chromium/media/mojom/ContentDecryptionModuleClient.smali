.class public interface abstract Lorg/chromium/media/mojom/ContentDecryptionModuleClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/ContentDecryptionModuleClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onSessionClosed(Ljava/lang/String;I)V
.end method

.method public abstract onSessionExpirationUpdate(Ljava/lang/String;D)V
.end method

.method public abstract onSessionKeysChange(Ljava/lang/String;Z[Lorg/chromium/media/mojom/CdmKeyInformation;)V
.end method

.method public abstract onSessionMessage(Ljava/lang/String;I[B)V
.end method
