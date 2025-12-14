.class public Lorg/chromium/components/embedder_support/view/ContentView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;
.implements Lorg/chromium/content_public/browser/SmartClipProvider;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Landroid/view/View$OnDragListener;
.implements Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;


# annotations
.annotation build Lorg/chromium/build/annotations/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_MEASURE_SPEC:I


# instance fields
.field private mDeferKeepScreenOnChanges:Z

.field private mDesiredHeightMeasureSpec:I

.field private mDesiredWidthMeasureSpec:I

.field private mDragDropEventOffsetHandler:Lorg/chromium/ui/base/EventOffsetHandler;

.field private final mHierarchyChangeListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Landroid/view/ViewGroup$OnHierarchyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsObscuredForAccessibility:Z

.field private final mOnDragListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Landroid/view/View$OnDragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingKeepScreenOnValue:Ljava/lang/Boolean;

.field private mStylusWritingIconSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiChangeListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Landroid/view/View$OnSystemUiVisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewEventSink:Lorg/chromium/content_public/browser/ViewEventSink;

.field protected mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lorg/chromium/components/embedder_support/view/ContentView;->DEFAULT_MEASURE_SPEC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010085

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/chromium/base/ObserverList;

    invoke-direct {p1}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mHierarchyChangeListeners:Lorg/chromium/base/ObserverList;

    new-instance p1, Lorg/chromium/base/ObserverList;

    invoke-direct {p1}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mSystemUiChangeListeners:Lorg/chromium/base/ObserverList;

    new-instance p1, Lorg/chromium/base/ObserverList;

    invoke-direct {p1}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mOnDragListeners:Lorg/chromium/base/ObserverList;

    sget p1, Lorg/chromium/components/embedder_support/view/ContentView;->DEFAULT_MEASURE_SPEC:I

    iput p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDesiredWidthMeasureSpec:I

    iput p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDesiredHeightMeasureSpec:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    iput-object p2, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    invoke-virtual {p0, p0}, Lorg/chromium/components/embedder_support/view/ContentView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-virtual {p0, p0}, Lorg/chromium/components/embedder_support/view/ContentView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0, p0}, Lorg/chromium/components/embedder_support/view/ContentView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private allowAutofillViaAccessibilityAPI()Z
    .locals 0

    sget-object p0, Lorg/chromium/components/autofill/AndroidAutofillFeatures;->ANDROID_AUTOFILL_DEPRECATE_ACCESSIBILITY_API:Lorg/chromium/components/autofill/AndroidAutofillFeatures;

    invoke-virtual {p0}, Lorg/chromium/base/Features;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getViewEventSink()Lorg/chromium/content_public/browser/ViewEventSink;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mViewEventSink:Lorg/chromium/content_public/browser/ViewEventSink;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/content_public/browser/ViewEventSink;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/ViewEventSink;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mViewEventSink:Lorg/chromium/content_public/browser/ViewEventSink;

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mViewEventSink:Lorg/chromium/content_public/browser/ViewEventSink;

    return-object p0
.end method

.method private webContentsAttached()Z
    .locals 1
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mOnDragListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mSystemUiChangeListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->providesAutofillStructure()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->autofill(Landroid/util/SparseArray;)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->allowAutofillViaAccessibilityAPI()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeHorizontalScrollRange()I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getContentWidthPixInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeVerticalScrollExtent()I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeVerticalScrollOffset()I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeVerticalScrollRange()I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getContentHeightPixInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public extractSmartClipData(IIII)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/chromium/content_public/browser/WebContents;->requestSmartClipExtract(IIII)V

    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getWebContentsAccessibility()Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEventForwarder()Lorg/chromium/ui/base/EventForwarder;
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->webContentsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method public getWebContentsAccessibility()Lorg/chromium/content_public/browser/WebContentsAccessibility;
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->webContentsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hasValidWebContents()Z
    .locals 0
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getViewEventSink()Lorg/chromium/content_public/browser/ViewEventSink;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/ViewEventSink;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lorg/chromium/content_public/browser/ImeAdapter;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/ImeAdapter;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/ImeAdapter;->onCheckIsTextEditor()Z

    move-result p0

    return p0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mHierarchyChangeListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mHierarchyChangeListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getViewEventSink()Lorg/chromium/content_public/browser/ViewEventSink;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/ViewEventSink;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lorg/chromium/content_public/browser/ImeAdapter;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/ImeAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/ImeAdapter;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getViewEventSink()Lorg/chromium/content_public/browser/ViewEventSink;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/ViewEventSink;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mOnDragListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnDragListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lorg/chromium/ui/base/EventForwarder;->onDragEvent(Landroid/view/DragEvent;Landroid/view/View;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragEventWithOffset(Landroid/view/DragEvent;II)Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDragDropEventOffsetHandler:Lorg/chromium/ui/base/EventOffsetHandler;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v1, p2, p3}, Lorg/chromium/ui/base/EventOffsetHandler;->onPreDispatchDragEvent(IFF)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p2

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDragDropEventOffsetHandler:Lorg/chromium/ui/base/EventOffsetHandler;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventOffsetHandler;->onPostDispatchDragEvent(I)V

    return p2
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    const-string v0, "ContentView.onFocusChanged"

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getViewEventSink()Lorg/chromium/content_public/browser/ViewEventSink;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lorg/chromium/content_public/browser/ViewEventSink;->setHideKeyboardOnBlur(Z)V

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getViewEventSink()Lorg/chromium/content_public/browser/ViewEventSink;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/ViewEventSink;->onViewFocusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/EventForwarder;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/base/EventForwarder;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMeasure(II)V
    .locals 2

    iget v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDesiredWidthMeasureSpec:I

    sget v1, Lorg/chromium/components/embedder_support/view/ContentView;->DEFAULT_MEASURE_SPEC:I

    if-eq v0, v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDesiredHeightMeasureSpec:I

    if-eq v0, v1, :cond_1

    move p2, v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 2

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->providesAutofillStructure()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/chromium/ui/base/ViewAndroidDelegate;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->allowAutofillViaAccessibilityAPI()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    :cond_3
    return-void
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getWebContentsAccessibility()Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->onProvideVirtualStructure(Landroid/view/ViewStructure;Z)V

    :cond_0
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mStylusWritingIconSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PointerIcon;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mSystemUiChangeListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {p1}, Lorg/chromium/components/embedder_support/util/TouchEventFilter;->hasInvalidToolType(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getViewEventSink()Lorg/chromium/content_public/browser/ViewEventSink;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/ViewEventSink;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public performLongClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mOnDragListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mSystemUiChangeListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollBy(II)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    if-eqz p0, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/base/EventForwarder;->scrollBy(FF)V

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    if-eqz p0, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/base/EventForwarder;->scrollTo(FF)V

    :cond_0
    return-void
.end method

.method public setDeferKeepScreenOnChanges(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDeferKeepScreenOnChanges:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mPendingKeepScreenOnValue:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-super {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mPendingKeepScreenOnValue:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public setEventOffsetHandlerForDragDrop(Lorg/chromium/ui/base/EventOffsetHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDragDropEventOffsetHandler:Lorg/chromium/ui/base/EventOffsetHandler;

    return-void
.end method

.method public setIsObscuredForAccessibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mIsObscuredForAccessibility:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mIsObscuredForAccessibility:Z

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getWebContentsAccessibility()Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mIsObscuredForAccessibility:Z

    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->setObscuredByAnotherView(Z)V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mDeferKeepScreenOnChanges:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mPendingKeepScreenOnValue:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    :goto_0
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public setSmartClipResultHandler(Landroid/os/Handler;)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/WebContents;->setSmartClipResultHandler(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public setStylusWritingIconSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/PointerIcon;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mStylusWritingIconSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iget-boolean v3, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mIsObscuredForAccessibility:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6, v4, v5}, Lorg/chromium/components/embedder_support/view/ContentView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v6}, Lorg/chromium/components/embedder_support/view/ContentView;->onWindowFocusChanged(Z)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->onDetachedFromWindow()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0, v6}, Lorg/chromium/components/embedder_support/view/ContentView;->setIsObscuredForAccessibility(Z)V

    :cond_3
    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-object v5, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mViewEventSink:Lorg/chromium/content_public/browser/ViewEventSink;

    const/4 p1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v4, v5}, Lorg/chromium/components/embedder_support/view/ContentView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->onWindowFocusChanged(Z)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->onAttachedToWindow()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->setIsObscuredForAccessibility(Z)V

    :cond_7
    return-void
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public super_onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public view()Landroid/view/View;
    .locals 0

    return-object p0
.end method
