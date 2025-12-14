.class public Lcom/sec/terrace/browser/TerraceLoadUrlParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    return-void
.end method


# virtual methods
.method public getHasUserGesture()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getHasUserGesture()Z

    move-result p0

    return p0
.end method

.method public getInitiatorOrigin()Lcom/sec/terrace/TerraceOrigin;
    .locals 1

    new-instance v0, Lcom/sec/terrace/TerraceOrigin;

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getInitiatorOrigin()Lorg/chromium/url/Origin;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceOrigin;-><init>(Lorg/chromium/url/Origin;)V

    return-object v0
.end method

.method public getIsRendererInitiated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getIsRendererInitiated()Z

    move-result p0

    return p0
.end method

.method public getReferrer()Lcom/sec/terrace/browser/TerraceReferrer;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/TerraceReferrer;

    return-object p0
.end method

.method public getTransitionType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getTransitionType()I

    move-result p0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentOverrideOption()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUserAgentOverrideOption()I

    move-result p0

    return p0
.end method

.method public getVerbatimHeaders()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getVerbatimHeaders()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setHasUserGesture(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setHasUserGesture(Z)V

    return-void
.end method

.method public setInitiatorOrigin(Lcom/sec/terrace/TerraceOrigin;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getOrigin(Lcom/sec/terrace/TerraceOrigin;)Lorg/chromium/url/Origin;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setInitiatorOrigin(Lorg/chromium/url/Origin;)V

    return-void
.end method

.method public setIsRendererInitiated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setIsRendererInitiated(Z)V

    return-void
.end method

.method public setOverrideUserAgent(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setOverrideUserAgent(I)V

    return-void
.end method

.method public setReferrer(Lcom/sec/terrace/browser/TerraceReferrer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    return-void
.end method

.method public setShouldClearHistoryList(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setShouldClearHistoryList(Z)V

    return-void
.end method

.method public setTransitionType(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    return-void
.end method

.method public setVerbatimHeaders(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    return-void
.end method
