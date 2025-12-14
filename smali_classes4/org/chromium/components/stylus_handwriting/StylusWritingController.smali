.class public Lorg/chromium/components/stylus_handwriting/StylusWritingController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mAndroidHandler:Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mDirectWritingTrigger:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

.field private mDisabledStylusWritingHandler:Lorg/chromium/components/stylus_handwriting/DisabledStylusWritingHandler;

.field private mHandwritingIcon:Landroid/view/PointerIcon;

.field private mIconFetched:Z

.field private mIsWindowFocused:Z

.field private mLazyFetchHandWritingIconFeatureEnabled:Z

.field private mShouldOverrideStylusHoverIcon:Z

.field private mStylusHandler:Lorg/chromium/components/stylus_handwriting/StylusApiOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mLazyFetchHandWritingIconFeatureEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mIconFetched:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object p2

    invoke-interface {p2}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->getStylusPointerIcon()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object p2

    invoke-interface {p2}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->getStylusPointerIcon()I

    move-result p2

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mHandwritingIcon:Landroid/view/PointerIcon;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/stylus_handwriting/StylusWritingController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->setShouldOverrideStylusHoverIcon(Z)V

    return-void
.end method

.method private chooseHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mDirectWritingTrigger:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-direct {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mDirectWritingTrigger:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mDirectWritingTrigger:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    return-object p0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mAndroidHandler:Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;

    if-nez v0, :cond_2

    new-instance v0, Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mAndroidHandler:Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mAndroidHandler:Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;

    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mDisabledStylusWritingHandler:Lorg/chromium/components/stylus_handwriting/DisabledStylusWritingHandler;

    if-nez v0, :cond_4

    new-instance v0, Lorg/chromium/components/stylus_handwriting/DisabledStylusWritingHandler;

    invoke-direct {v0}, Lorg/chromium/components/stylus_handwriting/DisabledStylusWritingHandler;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mDisabledStylusWritingHandler:Lorg/chromium/components/stylus_handwriting/DisabledStylusWritingHandler;

    :cond_4
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mDisabledStylusWritingHandler:Lorg/chromium/components/stylus_handwriting/DisabledStylusWritingHandler;

    return-object p0
.end method

.method private getHandwritingIcon()Landroid/view/PointerIcon;
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mIconFetched:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->getStylusPointerIcon()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mHandwritingIcon:Landroid/view/PointerIcon;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mIconFetched:Z

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mHandwritingIcon:Landroid/view/PointerIcon;

    return-object p0
.end method

.method private setShouldOverrideStylusHoverIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mShouldOverrideStylusHoverIcon:Z

    return-void
.end method

.method private updateStylusState()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mIsWindowFocused:Z

    invoke-interface {v0, v1, v2}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->updateHandlerState(Landroid/content/Context;Z)V

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mCurrentWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->onWebContentsChanged(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mCurrentWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mCurrentWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    new-instance v1, Lorg/chromium/components/stylus_handwriting/c;

    invoke-direct {v1, p0}, Lorg/chromium/components/stylus_handwriting/c;-><init>(Lorg/chromium/components/stylus_handwriting/StylusWritingController;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->setShouldShowStylusHoverIconCallback(Lorg/chromium/base/Callback;)V

    return-void
.end method


# virtual methods
.method public getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;
    .locals 2

    const-string v0, "CacheStylusSettings"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabledOrDefault(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mStylusHandler:Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->chooseHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mStylusHandler:Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mStylusHandler:Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    return-object p0

    :cond_1
    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->chooseHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object p0

    return-object p0
.end method

.method public onSettingsChange()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->chooseHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mStylusHandler:Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->updateStylusState()V

    return-void
.end method

.method public onWebContentsChanged(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mCurrentWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->onWebContentsChanged(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    new-instance v0, Lorg/chromium/components/stylus_handwriting/c;

    invoke-direct {v0, p0}, Lorg/chromium/components/stylus_handwriting/c;-><init>(Lorg/chromium/components/stylus_handwriting/StylusWritingController;)V

    invoke-virtual {p1, v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->setShouldShowStylusHoverIconCallback(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mIsWindowFocused:Z

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->updateStylusState()V

    return-void
.end method

.method public resolvePointerIcon()Landroid/view/PointerIcon;
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mShouldOverrideStylusHoverIcon:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mLazyFetchHandWritingIconFeatureEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->getHandwritingIcon()Landroid/view/PointerIcon;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->mHandwritingIcon:Landroid/view/PointerIcon;

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
