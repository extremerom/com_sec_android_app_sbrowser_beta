.class public interface abstract Lorg/chromium/blink/mojom/WebLaunchService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WebLaunchService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract enqueueLaunchParams(Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract setLaunchFiles([Lorg/chromium/blink/mojom/FileSystemAccessEntry;)V
.end method
