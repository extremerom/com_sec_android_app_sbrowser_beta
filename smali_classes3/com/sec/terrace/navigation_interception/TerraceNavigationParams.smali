.class public Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    return-void
.end method


# virtual methods
.method public getInitiatorOrigin()Lcom/sec/terrace/TerraceOrigin;
    .locals 1

    new-instance v0, Lcom/sec/terrace/TerraceOrigin;

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->getInitiatorOrigin()Lorg/chromium/url/Origin;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceOrigin;-><init>(Lorg/chromium/url/Origin;)V

    return-object v0
.end method

.method public getPageTransitionType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->pageTransition()I

    move-result p0

    return p0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->getReferrerUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->getUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasUserGesture()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->hasUserGesture()Z

    move-result p0

    return p0
.end method

.method public isExternalProtocol()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->isExternalProtocol()Z

    move-result p0

    return p0
.end method

.method public isInPrimaryMainFrame()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->isInPrimaryMainFrame()Z

    move-result p0

    return p0
.end method

.method public isRedirect()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->isRedirect()Z

    move-result p0

    return p0
.end method

.method public isRendererInitiated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->mNavigationHandle:Lorg/chromium/content_public/browser/NavigationHandle;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->isRendererInitiated()Z

    move-result p0

    return p0
.end method
