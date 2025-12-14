.class final Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameUrlDelegateImpl"
.end annotation


# instance fields
.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-void
.end method


# virtual methods
.method public getUrl()Lorg/chromium/url/GURL;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedURL()Lorg/chromium/url/GURL;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/url/GURL;->emptyGURL()Lorg/chromium/url/GURL;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isIncognito()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderFactory$FrameUrlDelegateImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderFrameHost;->isIncognito()Z

    move-result p0

    return p0
.end method
