.class public interface abstract Lorg/chromium/network/mojom/NetworkChangeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/NetworkChangeManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onNetworkChanged(ZZZIZI)V
.end method

.method public abstract requestNotifications(Lorg/chromium/network/mojom/NetworkChangeManagerClient;)V
.end method
