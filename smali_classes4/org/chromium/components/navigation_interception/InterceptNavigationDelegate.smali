.class public abstract Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content_public/browser/NavigationHandle;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;->lambda$callShouldIgnoreNavigation$0(Lorg/chromium/content_public/browser/NavigationHandle;Ljava/lang/Boolean;)V

    return-void
.end method

.method private callShouldIgnoreNavigation(Lorg/chromium/content_public/browser/NavigationHandle;Lorg/chromium/url/GURL;ZZZ)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lorg/chromium/base/RequiredCallback;

    new-instance v0, Lcom/sec/terrace/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v6, v0}, Lorg/chromium/base/RequiredCallback;-><init>(Lorg/chromium/base/Callback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;->shouldIgnoreNavigation(Lorg/chromium/content_public/browser/NavigationHandle;Lorg/chromium/url/GURL;ZZZLorg/chromium/base/RequiredCallback;)V

    return-void
.end method

.method private static synthetic lambda$callShouldIgnoreNavigation$0(Lorg/chromium/content_public/browser/NavigationHandle;Ljava/lang/Boolean;)V
    .locals 1

    invoke-static {}, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegateJni;->get()Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHandle;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate$Natives;->onShouldIgnoreNavigationResult(Lorg/chromium/content_public/browser/WebContents;Z)V

    return-void
.end method


# virtual methods
.method public handleSubframeExternalProtocol(Lorg/chromium/url/GURL;IZLorg/chromium/url/Origin;)Lorg/chromium/url/GURL;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onResourceRequestWithGesture()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public requestFinishPendingShouldIgnoreCheck()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public abstract shouldIgnoreNavigation(Lorg/chromium/content_public/browser/NavigationHandle;Lorg/chromium/url/GURL;ZZZLorg/chromium/base/RequiredCallback;)V
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
.end method
