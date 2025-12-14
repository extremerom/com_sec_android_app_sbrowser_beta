.class public interface abstract Lorg/chromium/blink/mojom/ContextMenuClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ContextMenuClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract contextMenuClosed(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/Impression;)V
.end method

.method public abstract customContextMenuAction(I)V
.end method
