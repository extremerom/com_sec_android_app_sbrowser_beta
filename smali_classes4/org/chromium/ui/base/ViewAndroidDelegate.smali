.class public Lorg/chromium/ui/base/ViewAndroidDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/ViewAndroidDelegate$ContainerViewObserver;,
        Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sDragAndDropDelegateForTesting:Lorg/chromium/ui/dragdrop/DragAndDropDelegate;


# instance fields
.field protected mContainerView:Landroid/view/ViewGroup;

.field private mContainerViewObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/base/ViewAndroidDelegate$ContainerViewObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mDragAndDropDelegateImpl:Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;

.field private mTemporaryContainerLocation:[I

.field private mUpdateShouldShowStylusHoverIcon:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mVerticalScrollDirectionChangeListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mVerticalScrollDirectionChangeListeners:Lorg/chromium/base/ObserverList;

    iput-object p1, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mContainerView:Landroid/view/ViewGroup;

    new-instance p1, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;

    invoke-direct {p1}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mDragAndDropDelegateImpl:Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;

    return-void
.end method

.method private getXLocationOfContainerViewInWindow()I
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    aget p0, p0, v1

    return p0
.end method

.method private getXLocationOnScreen()I
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    aget p0, p0, v1

    return p0
.end method

.method private getYLocationOfContainerViewInWindow()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method private getYLocationOnScreen()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mTemporaryContainerLocation:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method private hasFocus()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/chromium/ui/base/ViewUtils;->hasFocus(Landroid/view/View;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private notifyVerticalScrollDirectionChangeListeners(ZF)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mVerticalScrollDirectionChangeListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;

    invoke-interface {v0, p1, p2}, Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;->onVerticalScrollDirectionChanged(ZF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestDisallowInterceptTouchEvent()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private requestFocus()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/base/ViewUtils;->requestFocus(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private requestUnbufferedDispatch(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    :cond_2
    return-void
.end method

.method private startDragAndDrop(Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Lorg/chromium/ui/base/WindowAndroid;IIIILjava/lang/String;)Z
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_1

    return v0

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p8

    invoke-virtual {p0, v1, p1, p2, v5}, Lorg/chromium/ui/base/ViewAndroidDelegate;->startDrag(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getDragAndDropDelegate()Lorg/chromium/ui/dragdrop/DragAndDropDelegate;

    move-result-object v0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lorg/chromium/ui/dragdrop/DragAndDropDelegate;->startDragAndDrop(Landroid/view/View;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Landroid/content/Context;IIII)Z

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public acquireView()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final addObserver(Lorg/chromium/ui/base/ViewAndroidDelegate$ContainerViewObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addVerticalScrollDirectionChangeListener(Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mVerticalScrollDirectionChangeListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mDragAndDropDelegateImpl:Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;

    invoke-virtual {p0}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->destroy()V

    return-void
.end method

.method public final getContainerView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mContainerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getContainerViewGroup()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mContainerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getDragAndDropDelegate()Lorg/chromium/ui/dragdrop/DragAndDropDelegate;
    .locals 1

    sget-object v0, Lorg/chromium/ui/base/ViewAndroidDelegate;->sDragAndDropDelegateForTesting:Lorg/chromium/ui/dragdrop/DragAndDropDelegate;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mDragAndDropDelegateImpl:Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;

    :goto_0
    return-object v0
.end method

.method public getViewportInsetBottom()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public notifyHoverActionStylusWritable(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mUpdateShouldShowStylusHoverIcon:Lorg/chromium/base/Callback;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackgroundColorChanged(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public onControlsChanged(IIIII)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public onCursorChanged(I)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/16 v0, 0x2d

    const/16 v1, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ec

    const/16 v2, 0x3f4

    const/16 v3, 0x3f8

    const/16 v4, 0x3f9

    const/16 v5, 0x3f6

    const/16 v6, 0x3f7

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x3fd

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x3fc

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x3fb

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x3fa

    goto :goto_0

    :pswitch_4
    move v1, v2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x3f3

    goto :goto_0

    :pswitch_7
    move v1, v0

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x3f2

    goto :goto_0

    :pswitch_9
    const/16 v1, 0x3e9

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x3ee

    goto :goto_0

    :pswitch_b
    const/16 v1, 0x3f1

    goto :goto_0

    :pswitch_c
    const/16 v1, 0x3f5

    goto :goto_0

    :pswitch_d
    move v1, v6

    goto :goto_0

    :pswitch_e
    move v1, v5

    goto :goto_0

    :pswitch_f
    move v1, v4

    goto :goto_0

    :pswitch_10
    move v1, v3

    goto :goto_0

    :pswitch_11
    const/16 v1, 0x3eb

    goto :goto_0

    :pswitch_12
    const/16 v1, 0x3f0

    goto :goto_0

    :pswitch_13
    const/16 v1, 0x3ea

    goto :goto_0

    :pswitch_14
    const/16 v1, 0x3ef

    :cond_0
    :goto_0
    :pswitch_15
    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_7
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCursorChangedToCustom(Landroid/graphics/Bitmap;II)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-static {p1, p2, p3}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 0

    return-void
.end method

.method public onVerticalScrollDirectionChanged(ZF)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/ViewAndroidDelegate;->notifyVerticalScrollDirectionChangeListeners(ZF)V

    return-void
.end method

.method public performPrivateImeCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public providesAutofillStructure()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final removeVerticalScrollDirectionChangeListener(Lorg/chromium/ui/base/ViewAndroidDelegate$VerticalScrollDirectionChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mVerticalScrollDirectionChangeListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setShouldShowStylusHoverIconCallback(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/ui/base/ViewAndroidDelegate;->mUpdateShouldShowStylusHoverIcon:Lorg/chromium/base/Callback;

    return-void
.end method

.method public setViewPosition(Landroid/view/View;FFFFII)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p6

    add-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p6, p2

    :cond_1
    add-int p2, p3, p6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    if-le p2, p4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int p3, p0, p6

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, p6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput p7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startDrag(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
