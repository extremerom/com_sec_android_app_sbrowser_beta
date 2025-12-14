.class public Lorg/chromium/content/browser/GestureListenerManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/GestureListenerManager;
.implements Lorg/chromium/content/browser/WindowEventObserver;
.implements Lorg/chromium/base/UserData;
.implements Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/GestureListenerManagerImpl$UserDataFactoryLazyHolder;,
        Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstanceForTesting:Lorg/chromium/content/browser/GestureListenerManagerImpl;


# instance fields
.field private mHasActiveFlingScroll:Z

.field private final mHidePastePopupOnGSB:Z

.field private mIsGestureScrollInProgress:Z

.field private final mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList$RewindableIterator<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerFrequency:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeGestureListenerManager:J

.field private final mResetGestureDetectionOnLosingFocus:Z

.field private mRootScrollOffsetUpdateFrequency:Ljava/lang/Integer;
    .annotation build Lorg/chromium/cc/mojom/RootScrollOffsetUpdateFrequency$EnumType;
    .end annotation
.end field

.field private mScrollDelegate:Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;

.field private mSelectionPopupController:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

.field protected mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

.field protected final mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListenerFrequency:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/ViewAndroidDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->addVerticalScrollDirectionChangeListener(Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;)V

    invoke-static {p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    invoke-static {}, Lorg/chromium/content/browser/GestureListenerManagerImplJni;->get()Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;->init(Lorg/chromium/content/browser/GestureListenerManagerImpl;Lorg/chromium/content/browser/webcontents/WebContentsImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mNativeGestureListenerManager:J

    const-string p1, "HidePastePopupOnGSB"

    invoke-static {p1}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mHidePastePopupOnGSB:Z

    const-string p1, "ContinueGestureOnLosingFocus"

    invoke-static {p1}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mResetGestureDetectionOnLosingFocus:Z

    return-void
.end method

.method private calculateMaxRootScrollOffsetUpdateFrequency()I
    .locals 1
    .annotation build Lorg/chromium/cc/mojom/RootScrollOffsetUpdateFrequency$EnumType;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListenerFrequency:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListenerFrequency:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private destroyPastePopup()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mSelectionPopupController:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->fromWebContentsNoCreate(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mSelectionPopupController:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mSelectionPopupController:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isPasteActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mSelectionPopupController:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndKeepSelection()V

    :cond_1
    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;
    .locals 2

    sget-object v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->sInstanceForTesting:Lorg/chromium/content/browser/GestureListenerManagerImpl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;

    invoke-static {}, Lorg/chromium/content/browser/GestureListenerManagerImpl$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;

    return-object p0
.end method

.method private notifyDelegateOfScrollChange(FF)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mScrollDelegate:Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mScrollDelegate:Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollXPix()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollYPix()F

    move-result v0

    float-to-int v0, v0

    invoke-interface {p0, p1, p2, v1, v0}, Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;->onScrollChanged(IIII)V

    return-void
.end method

.method private offerLongPressToEmbedder()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    move-result p0

    return p0
.end method

.method private onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onDestroyed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListenerFrequency:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->removeVerticalScrollDirectionChangeListener(Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mNativeGestureListenerManager:J

    return-void
.end method

.method private onRootScrollOffsetChanged(FF)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getPageScaleFactor()F

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->onRootScrollOffsetChangedImpl(FFF)V

    return-void
.end method

.method private onRootScrollOffsetChangedImpl(FFF)V
    .locals 2

    const-string v0, "GestureListenerManagerImpl:onRootScrollOffsetChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->notifyDelegateOfScrollChange(FF)V

    iget-object v1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->updateScrollInfo(FFF)V

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollOffset()I

    move-result p1

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollExtent()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateOnScrollChanged(II)V

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method private onScrollBeginWithScrollbar()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollBeginWithScrollbar()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetFlingGesture()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mHasActiveFlingScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->onFlingEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mHasActiveFlingScroll:Z

    :cond_0
    return-void
.end method

.method private resetScrollInProgress()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIsGestureScrollInProgress:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->setGestureScrollInProgress(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateOnScrollEnd()V

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->resetFlingGesture()V

    return-void
.end method

.method private setGestureScrollInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIsGestureScrollInProgress:Z

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mSelectionPopupController:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mSelectionPopupController:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mSelectionPopupController:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->isScrollInProgress()Z

    move-result p0

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setScrollInProgress(Z)V

    return-void
.end method

.method private updateOnTouchDown()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onTouchDown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateRootScrollOffsetUpdateFrequency()Z
    .locals 5

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->calculateMaxRootScrollOffsetUpdateFrequency()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mRootScrollOffsetUpdateFrequency:Ljava/lang/Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mRootScrollOffsetUpdateFrequency:Ljava/lang/Integer;

    if-nez v1, :cond_2

    return v3

    :cond_2
    invoke-static {}, Lorg/chromium/content/browser/GestureListenerManagerImplJni;->get()Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;

    move-result-object v0

    iget-wide v3, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mNativeGestureListenerManager:J

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mRootScrollOffsetUpdateFrequency:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, v3, v4, p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;->setRootScrollOffsetUpdateFrequency(JI)V

    return v2
.end method

.method private verticalScrollExtent()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportHeightPixInt()I

    move-result p0

    return p0
.end method

.method private verticalScrollOffset()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollYPixInt()I

    move-result p0

    return p0
.end method


# virtual methods
.method public addListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->addListener(Lorg/chromium/content_public/browser/GestureStateListener;I)V

    return-void
.end method

.method public addListener(Lorg/chromium/content_public/browser/GestureStateListener;I)V
    .locals 5
    .param p2    # I
        .annotation build Lorg/chromium/cc/mojom/RootScrollOffsetUpdateFrequency$EnumType;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    move-result v0

    iget-wide v1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mNativeGestureListenerManager:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListenerFrequency:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateRootScrollOffsetUpdateFrequency()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollOffset()I

    move-result p2

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollExtent()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollOffsetOrExtentChanged(II)V

    :cond_0
    return-void
.end method

.method public filterTapOrPressEvent(III)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/GestureStateListener;->filterTapOrPressEvent(III)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->offerLongPressToEmbedder()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getRootScrollOffsetUpdateFrequencyForTesting()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/cc/mojom/RootScrollOffsetUpdateFrequency$EnumType;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->calculateMaxRootScrollOffsetUpdateFrequency()I

    move-result p0

    return p0
.end method

.method public hasActiveFlingScroll()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mHasActiveFlingScroll:Z

    return p0
.end method

.method public isScrollInProgress()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIsGestureScrollInProgress:Z

    return p0
.end method

.method public onEventAck(IZ)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/16 v0, 0x10

    if-eq p1, v0, :cond_6

    const/16 v0, 0x11

    if-eq p1, v0, :cond_5

    const/16 v0, 0x13

    if-eq p1, v0, :cond_4

    const/16 v0, 0x16

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateOnScrollEnd()V

    goto/16 :goto_6

    :pswitch_1
    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mHidePastePopupOnGSB:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->destroyPastePopup()V

    :cond_1
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollUpdateGestureConsumed()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateOnScrollEnd()V

    goto/16 :goto_6

    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_1
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onGestureEnd()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->destroyPastePopup()V

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_2
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1, p2}, Lorg/chromium/content_public/browser/GestureStateListener;->onSingleTap(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_3
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onGestureBegin()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_4
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchEnded()V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_5
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchStarted()V

    goto :goto_5

    :cond_7
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFlingEnd()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mHasActiveFlingScroll:Z

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollOffset()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingEndGesture(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFlingStart(Z)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mHasActiveFlingScroll:Z

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollOffset()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingStartGesture(IIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrollBegin(Z)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->setGestureScrollInProgress(Z)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mHidePastePopupOnGSB:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->destroyPastePopup()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollOffset()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollStarted(IIZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVerticalScrollDirectionChanged(ZF)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content_public/browser/GestureStateListener;->onVerticalScrollDirectionChanged(ZF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mResetGestureDetectionOnLosingFocus:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->resetGestureDetection()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    move-result v0

    iget-wide v1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mNativeGestureListenerManager:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mListenerFrequency:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateRootScrollOffsetUpdateFrequency()Z

    :cond_0
    return-void
.end method

.method public resetGestureDetection()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mNativeGestureListenerManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/GestureListenerManagerImplJni;->get()Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mNativeGestureListenerManager:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;->resetGestureDetection(JLorg/chromium/content/browser/GestureListenerManagerImpl;)V

    :cond_0
    return-void
.end method

.method public resetPopupsAndInput(Z)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/PopupController;->hidePopupsAndClearSelection(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->resetScrollInProgress()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->resetAndHideKeyboard()V

    :cond_0
    return-void
.end method

.method public setScrollDelegate(Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mScrollDelegate:Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;

    return-void
.end method

.method public updateOnScaleLimitsChanged(FF)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScaleLimitsChanged(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateOnScrollChanged(II)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollOffsetOrExtentChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateOnScrollEnd()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->setGestureScrollInProgress(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollOffset()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollEnded(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateScrollInfo(FFFFFFFFFFFZ)V
    .locals 15
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v10, p4

    move/from16 v11, p5

    const-string v12, "GestureListenerManagerImpl:updateScrollInfo"

    invoke-static {v12}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object v4, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v4}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result v5

    iget-object v6, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v6}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v3

    div-float/2addr v7, v5

    move/from16 v8, p6

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    move/from16 v5, p7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getMinPageScaleFactor()F

    move-result v6

    cmpl-float v6, v10, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getMaxPageScaleFactor()F

    move-result v6

    cmpl-float v6, v11, v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v13, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v8

    :goto_1
    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getPageScaleFactor()F

    move-result v6

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollX()F

    move-result v6

    cmpl-float v6, v1, v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollY()F

    move-result v6

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v14, v9

    goto :goto_3

    :cond_4
    :goto_2
    move v14, v8

    :goto_3
    if-eqz v14, :cond_5

    invoke-direct {p0, v3, v1, v2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->onRootScrollOffsetChangedImpl(FFF)V

    :cond_5
    move-object v1, v4

    move v2, v7

    move v3, v5

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->updateFrameInfo(FFFFFFFF)V

    if-nez v14, :cond_6

    if-eqz p12, :cond_6

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollOffset()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->verticalScrollExtent()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateOnScrollChanged(II)V

    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {p0, v10, v11}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->updateOnScaleLimitsChanged(FF)V

    :cond_7
    invoke-static {v12}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method
