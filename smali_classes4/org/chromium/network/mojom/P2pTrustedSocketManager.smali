.class public interface abstract Lorg/chromium/network/mojom/P2pTrustedSocketManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/P2pTrustedSocketManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract pauseNetworkChangeNotifications()V
.end method

.method public abstract resumeNetworkChangeNotifications()V
.end method

.method public abstract startRtpDump(ZZ)V
.end method

.method public abstract stopRtpDump(ZZ)V
.end method
