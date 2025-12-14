.class public Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/chromium/content_public/browser/ScreenOrientationDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;,
        Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;,
        Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;
    }
.end annotation


# static fields
.field private static final DEFER_SURFACE_VIEW_DESTRUCTION:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCleanupInProgress:Z

.field private mOverlayDelegate:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

.field private mPointerIdToData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryPointerId:Ljava/lang/Integer;

.field private mRestoreOrientation:Ljava/lang/Integer;

.field private mSurfaceReportedReady:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mXrSessionCoordinator:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

.field private mXrSurfaceView:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->DEFER_SURFACE_VIEW_DESTRUCTION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mCleanupInProgress:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mOverlayDelegate:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    return-object p0
.end method

.method private configurationToActivityInfoOrientation(I)I
    .locals 2

    const/16 p0, 0xe

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected configurationOrientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " using default of \'Locked\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XrImmersiveOverlay"

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method public static bridge synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->DEFER_SURFACE_VIEW_DESTRUCTION:Z

    return v0
.end method

.method private sendMotionEvents(Z)V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mXrSessionCoordinator:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    iget-object v3, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPrimaryPointerId:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    iget-boolean v4, v4, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->touching:Z

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    iget v6, v6, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->x:F

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    iget v7, v1, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->y:F

    invoke-virtual/range {v2 .. v7}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->onDrawingSurfaceTouch(ZZIFF)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public canLockOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canUnlockOrientation(Landroid/app/Activity;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mRestoreOrientation:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mRestoreOrientation:Ljava/lang/Integer;

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public cleanupAndExit()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mCleanupInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mCleanupInProgress:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mXrSessionCoordinator:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->onDrawingSurfaceDestroyed()V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mXrSurfaceView:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->destroy()V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->exitFullscreen()V

    :cond_1
    invoke-static {}, Lorg/chromium/content_public/browser/ScreenOrientationProvider;->getInstance()Lorg/chromium/content_public/browser/ScreenOrientationProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/ScreenOrientationProvider;->setOrientationDelegate(Lorg/chromium/content_public/browser/ScreenOrientationDelegate;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mRestoreOrientation:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    iput-object v1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mRestoreOrientation:Ljava/lang/Integer;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    if-eq v2, v7, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v2, v3, :cond_c

    :cond_0
    const-string v8, "New pointer with ID "

    const-string v9, "XrImmersiveOverlay"

    const/4 v10, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPrimaryPointerId:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    new-instance v14, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {v14, v15, v3, v7}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;-><init>(FFZ)V

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " introduced by ACTION_DOWN when old pointer with the same ID already exists."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {v0, v10}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->sendMotionEvents(Z)V

    :cond_2
    const/4 v3, 0x0

    if-eq v2, v7, :cond_3

    if-ne v2, v4, :cond_4

    :cond_3
    invoke-direct {v0, v7}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->sendMotionEvents(Z)V

    iput-object v3, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPrimaryPointerId:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_4
    if-ne v2, v6, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object v11, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-direct {v13, v14, v4, v7}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;-><init>(FFZ)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " introduced by ACTION_POINTER_DOWN when old pointer with the same ID already exists."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {v0, v10}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->sendMotionEvents(Z)V

    :cond_6
    const-string v4, "Pointer with ID "

    if-ne v2, v5, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object v6, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found in mPointerIdToData, ignoring ACTION_POINTER_UP for it."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    const/4 v3, 0x2

    goto :goto_1

    :cond_8
    iget-object v6, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    iput-boolean v10, v6, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->touching:Z

    invoke-direct {v0, v10}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->sendMotionEvents(Z)V

    iget-object v6, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPrimaryPointerId:Ljava/lang/Integer;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_9

    iput-object v3, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPrimaryPointerId:Ljava/lang/Integer;

    :cond_9
    iget-object v3, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    if-ne v2, v3, :cond_c

    move v2, v10

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v5, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;

    if-nez v5, :cond_a

    const-string v5, "(index "

    const-string v6, ") not found in mPointerIdToData, ignoring ACTION_MOVE for it."

    invoke-static {v3, v2, v4, v5, v6}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v5, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->x:F

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, v5, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$PointerData;->y:F

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    invoke-direct {v0, v10}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->sendMotionEvents(Z)V

    :cond_c
    iget-object v0, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mOverlayDelegate:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;->maybeForwardTouchEvent(Landroid/view/MotionEvent;)V

    return v7
.end method

.method public show(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/vr/XrSessionCoordinator;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/chromium/content_public/browser/WebContents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/browser/vr/XrSessionCoordinator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p3, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mXrSessionCoordinator:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    iput-object p2, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mOverlayDelegate:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    invoke-static {p2}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->getActivity(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mActivity:Landroid/app/Activity;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPointerIdToData:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mPrimaryPointerId:Ljava/lang/Integer;

    new-instance p1, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;-><init>(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mXrSurfaceView:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 10

    iget-object p2, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p2

    iget-boolean v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mSurfaceReportedReady:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/chromium/ui/display/DisplayAndroid;->getRotation()I

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content_public/browser/ScreenOrientationProvider;->getInstance()Lorg/chromium/content_public/browser/ScreenOrientationProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/content_public/browser/ScreenOrientationProvider;->setOrientationDelegate(Lorg/chromium/content_public/browser/ScreenOrientationDelegate;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mRestoreOrientation:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mRestoreOrientation:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mOverlayDelegate:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;->getDesiredOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->configurationToActivityInfoOrientation(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mOverlayDelegate:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    invoke-interface {v1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;->useDisplaySizes()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result v2

    if-lt p3, v1, :cond_3

    if-ge p4, v2, :cond_4

    :cond_3
    move p3, v1

    move p4, v2

    :cond_4
    if-eqz v0, :cond_5

    move v9, p3

    move v8, p4

    goto :goto_1

    :cond_5
    move v8, p3

    move v9, p4

    :goto_1
    invoke-virtual {p2}, Lorg/chromium/ui/display/DisplayAndroid;->getRotation()I

    move-result v7

    iget-object v4, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mXrSessionCoordinator:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iget-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v6

    invoke-virtual/range {v4 .. v9}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->onDrawingSurfaceReady(Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;III)V

    iput-boolean v3, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->mSurfaceReportedReady:Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->cleanupAndExit()V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
