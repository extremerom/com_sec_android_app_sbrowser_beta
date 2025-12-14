.class public interface abstract Lorg/chromium/network/mojom/WebSocketClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebSocketClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onClosingHandshake()V
.end method

.method public abstract onDataFrame(ZIJ)V
.end method

.method public abstract onDropChannel(ZSLjava/lang/String;)V
.end method
