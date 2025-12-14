.class public Lcom/sec/terrace/browser/content_extraction/InnerTextBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/content_extraction/InnerTextBridge$Natives;
    }
.end annotation


# direct methods
.method public static getInnerText(Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/base/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/RenderFrameHost;",
            "Lorg/chromium/base/Callback<",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/content_extraction/InnerTextBridgeJni;->get()Lcom/sec/terrace/browser/content_extraction/InnerTextBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/content_extraction/InnerTextBridge$Natives;->getInnerText(Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/base/Callback;)V

    return-void
.end method
