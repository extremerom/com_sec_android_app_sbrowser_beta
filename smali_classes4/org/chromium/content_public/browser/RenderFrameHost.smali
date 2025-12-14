.class public interface abstract Lorg/chromium/content_public/browser/RenderFrameHost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract getLastCommittedOrigin()Lorg/chromium/url/Origin;
.end method

.method public abstract getLastCommittedURL()Lorg/chromium/url/GURL;
.end method

.method public abstract isIncognito()Z
.end method

.method public abstract notifyWebAuthnAssertionRequestSucceeded()V
.end method

.method public abstract performGetAssertionWebAuthSecurityChecks(Ljava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/url/Origin;",
            "Z",
            "Lorg/chromium/url/Origin;",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract performMakeCredentialWebAuthSecurityChecks(Ljava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/url/Origin;",
            "Z",
            "Lorg/chromium/url/Origin;",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;",
            ">;)V"
        }
    .end annotation
.end method
