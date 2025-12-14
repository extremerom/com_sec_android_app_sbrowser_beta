.class public Lcom/sec/terrace/content/browser/TinTapDisambiguator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/ImeEventObserver;
.implements Lorg/chromium/content/browser/PopupController$HideablePopup;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinTapDisambiguator$UserDataFactoryLazyHolder;,
        Lcom/sec/terrace/content/browser/TinTapDisambiguator$Natives;
    }
.end annotation


# instance fields
.field private mNativeTapDisambiguator:J

.field private mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

.field private final mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {}, Lcom/sec/terrace/content/browser/TinTapDisambiguatorJni;->get()Lcom/sec/terrace/content/browser/TinTapDisambiguator$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/content/browser/TinTapDisambiguator$Natives;->init(Lcom/sec/terrace/content/browser/TinTapDisambiguator;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mNativeTapDisambiguator:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/content/browser/TinTapDisambiguator;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mNativeTapDisambiguator:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/content/browser/TinTapDisambiguator;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/TinTapDisambiguator;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinTapDisambiguator;
    .locals 2

    check-cast p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const-class v0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    invoke-static {}, Lcom/sec/terrace/content/browser/TinTapDisambiguator$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    return-object p0
.end method

.method private initialize()V
    .locals 7

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;

    invoke-direct {v5, p0, v4}, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;-><init>(Lcom/sec/terrace/content/browser/TinTapDisambiguator;Landroid/view/ViewGroup;)V

    new-instance v6, Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;

    invoke-direct {v6, p0, v4}, Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;-><init>(Lcom/sec/terrace/content/browser/TinTapDisambiguator;Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$3;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/terrace/content/browser/TinTapDisambiguator$3;-><init>(Lcom/sec/terrace/content/browser/TinTapDisambiguator;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0, p0}, Lorg/chromium/content/browser/PopupController;->register(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController$HideablePopup;)V

    return-void
.end method

.method private onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mNativeTapDisambiguator:J

    return-void
.end method


# virtual methods
.method public backButtonPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->backButtonPressed()V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->hidePopup(Z)V

    return-void
.end method

.method public hidePopup(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TinTapDisambiguator"

    const-string v1, "Hide Popup Zoomer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->hide(Z)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onImeEvent()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->hidePopup(Z)V

    return-void
.end method

.method public setLastTouch(FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->setLastTouch(FF)V

    :cond_0
    return-void
.end method

.method public setPopupZoomerForTest(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    return-void
.end method

.method public showPopup(IIIILandroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->initialize()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-virtual {p1, p5}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->setBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "TinTapDisambiguator"

    const-string p2, "Show Popup Zoomer"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->mPopupView:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->show(Landroid/graphics/Rect;)V

    const-string p0, "201"

    const-string p1, "2186"

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
