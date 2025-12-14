.class interface abstract Lorg/chromium/content/browser/framehost/RenderFrameHostImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract getLastCommittedOrigin(J)Lorg/chromium/url/Origin;
.end method

.method public abstract getLastCommittedURL(J)Lorg/chromium/url/GURL;
.end method

.method public abstract notifyWebAuthnAssertionRequestSucceeded(J)V
.end method

.method public abstract performGetAssertionWebAuthSecurityChecks(JLjava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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

.method public abstract performMakeCredentialWebAuthSecurityChecks(JLjava/lang/String;Lorg/chromium/url/Origin;ZLorg/chromium/url/Origin;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
