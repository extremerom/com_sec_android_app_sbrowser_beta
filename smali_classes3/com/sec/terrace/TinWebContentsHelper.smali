.class public Lcom/sec/terrace/TinWebContentsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    return-object p0
.end method
