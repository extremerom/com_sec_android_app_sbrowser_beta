.class public interface abstract Lorg/chromium/components/webauthn/AuthenticationContextProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getIntentSender()Lorg/chromium/components/webauthn/FidoIntentSender;
.end method

.method public abstract getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;
.end method

.method public abstract getWebContents()Lorg/chromium/content_public/browser/WebContents;
.end method
