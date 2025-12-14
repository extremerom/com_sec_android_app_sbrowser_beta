.class public Lorg/chromium/content/browser/input/TextSuggestionHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/WindowEventObserver;
.implements Lorg/chromium/content/browser/PopupController$HideablePopup;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/TextSuggestionHost$UserDataFactoryLazyHolder;,
        Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsAttachedToWindow:Z

.field private mNativeTextSuggestionHost:J

.field private mSpellCheckPopupWindow:Lorg/chromium/content/browser/input/SpellCheckPopupWindow;

.field private mTextSuggestionsPopupWindow:Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;

.field private final mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

.field private final mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-static {p1, p0}, Lorg/chromium/content/browser/PopupController;->register(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController$HideablePopup;)V

    invoke-static {p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    return-void
.end method

.method private static create(Lorg/chromium/content_public/browser/WebContents;J)Lorg/chromium/content/browser/input/TextSuggestionHost;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/TextSuggestionHost;

    move-result-object p0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/TextSuggestionHost;->setNativePtr(J)V

    return-object p0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/TextSuggestionHost;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lorg/chromium/content/browser/input/TextSuggestionHost;

    invoke-static {}, Lorg/chromium/content/browser/input/TextSuggestionHost$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/TextSuggestionHost;

    return-object p0
.end method

.method private getContentOffsetYPix()F
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result p0

    return p0
.end method

.method private onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mNativeTextSuggestionHost:J

    return-void
.end method

.method private setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mNativeTextSuggestionHost:J

    return-void
.end method

.method private showSpellCheckSuggestionMenu(DDLjava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mIsAttachedToWindow:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->onSuggestionMenuClosed(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    new-instance v0, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v3, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v3}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mSpellCheckPopupWindow:Lorg/chromium/content/browser/input/SpellCheckPopupWindow;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->getContentOffsetYPix()F

    move-result p0

    float-to-double v1, p0

    add-double v3, p3, v1

    move-wide v1, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;->show(DDLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private showTextSuggestionMenu(DDLjava/lang/String;[Lorg/chromium/content/browser/input/SuggestionInfo;)V
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mIsAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->onSuggestionMenuClosed(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVisibleUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "internet-extension"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->onSuggestionMenuClosed(Z)V

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mIsAttachedToWindow:Z

    return-void

    :cond_1
    new-instance v2, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v3, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v3}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v0, p0, v1, v3}, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V

    iput-object v2, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mTextSuggestionsPopupWindow:Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->getContentOffsetYPix()F

    move-result p0

    float-to-double v0, p0

    add-double v5, p3, v0

    move-wide v3, p1

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->show(DDLjava/lang/String;[Lorg/chromium/content/browser/input/SuggestionInfo;)V

    return-void
.end method


# virtual methods
.method public applySpellCheckSuggestion(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/input/TextSuggestionHostJni;->get()Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mNativeTextSuggestionHost:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;->applySpellCheckSuggestion(JLorg/chromium/content/browser/input/TextSuggestionHost;Ljava/lang/String;)V

    return-void
.end method

.method public applyTextSuggestion(II)V
    .locals 6

    invoke-static {}, Lorg/chromium/content/browser/input/TextSuggestionHostJni;->get()Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mNativeTextSuggestionHost:J

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;->applyTextSuggestion(JLorg/chromium/content/browser/input/TextSuggestionHost;II)V

    return-void
.end method

.method public deleteActiveSuggestionRange()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/input/TextSuggestionHostJni;->get()Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mNativeTextSuggestionHost:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;->deleteActiveSuggestionRange(JLorg/chromium/content/browser/input/TextSuggestionHost;)V

    return-void
.end method

.method public hide()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    return-void
.end method

.method public hidePopups()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mTextSuggestionsPopupWindow:Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mTextSuggestionsPopupWindow:Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->dismiss()V

    iput-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mTextSuggestionsPopupWindow:Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mSpellCheckPopupWindow:Lorg/chromium/content/browser/input/SpellCheckPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mSpellCheckPopupWindow:Lorg/chromium/content/browser/input/SpellCheckPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->dismiss()V

    iput-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mSpellCheckPopupWindow:Lorg/chromium/content/browser/input/SpellCheckPopupWindow;

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onNewWordAddedToDictionary(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/input/TextSuggestionHostJni;->get()Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mNativeTextSuggestionHost:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;->onNewWordAddedToDictionary(JLorg/chromium/content/browser/input/TextSuggestionHost;Ljava/lang/String;)V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    return-void
.end method

.method public onSuggestionMenuClosed(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/input/TextSuggestionHostJni;->get()Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mNativeTextSuggestionHost:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;->onSuggestionMenuClosed(JLorg/chromium/content/browser/input/TextSuggestionHost;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mSpellCheckPopupWindow:Lorg/chromium/content/browser/input/SpellCheckPopupWindow;

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mTextSuggestionsPopupWindow:Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;

    return-void
.end method

.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mSpellCheckPopupWindow:Lorg/chromium/content/browser/input/SpellCheckPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->updateWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mTextSuggestionsPopupWindow:Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->updateWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V

    :cond_1
    return-void
.end method
