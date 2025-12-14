.class Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;
.super Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/Terrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterceptNavigationDelegateImpl"
.end annotation


# instance fields
.field private mTerraceInterceptNavigationDelegate:Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;->mTerraceInterceptNavigationDelegate:Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;-><init>(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V

    return-void
.end method


# virtual methods
.method public handleSubframeExternalProtocol(Lorg/chromium/url/GURL;IZLorg/chromium/url/Origin;)Lorg/chromium/url/GURL;
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;->mTerraceInterceptNavigationDelegate:Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/TerraceOrigin;

    invoke-direct {v0, p4}, Lcom/sec/terrace/TerraceOrigin;-><init>(Lorg/chromium/url/Origin;)V

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;->handleSubframeExternalProtocol(Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public onResourceRequestWithGesture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;->mTerraceInterceptNavigationDelegate:Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;->onResourceRequestWithGesture()V

    return-void
.end method

.method public shouldIgnoreNavigation(Lorg/chromium/content_public/browser/NavigationHandle;Lorg/chromium/url/GURL;ZZZLorg/chromium/base/RequiredCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/NavigationHandle;",
            "Lorg/chromium/url/GURL;",
            "ZZZ",
            "Lorg/chromium/base/RequiredCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;->mTerraceInterceptNavigationDelegate:Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;

    new-instance p5, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;

    invoke-direct {p5, p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;-><init>(Lorg/chromium/content_public/browser/NavigationHandle;)V

    invoke-virtual {p2}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p5, p1, p3, p4}, Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;->shouldIgnoreNavigation(Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;Ljava/lang/String;ZZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p6, p0}, Lorg/chromium/base/RequiredCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
