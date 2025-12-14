.class public Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBitmapMatrix:[[Landroid/graphics/Bitmap;

.field private final mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

.field private final mGuid:Lorg/chromium/base/UnguessableToken;

.field private mInitialMissingVisibleBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

.field private mRequiredBitmaps:[[Z

.field private mScaleFactor:F

.field private final mStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

.field private final mTileSize:Landroid/util/Size;

.field private mVisibleBitmaps:[[Z


# direct methods
.method public constructor <init>(Lorg/chromium/base/UnguessableToken;IIFLandroid/util/Size;Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mInitialMissingVisibleBitmaps:Ljava/util/Set;

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mGuid:Lorg/chromium/base/UnguessableToken;

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    iput p4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mScaleFactor:F

    iput-object p6, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    iput-object p7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    int-to-float p3, p3

    div-float/2addr p1, p3

    float-to-double p6, p1

    invoke-static {p6, p7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p6

    double-to-int p1, p6

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p4

    int-to-float p2, p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    double-to-int p2, p2

    const/4 p3, 0x2

    new-array p4, p3, [I

    const/4 p5, 0x1

    aput p2, p4, p5

    const/4 p6, 0x0

    aput p1, p4, p6

    const-class p7, Landroid/graphics/Bitmap;

    invoke-static {p7, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [[Landroid/graphics/Bitmap;

    iput-object p4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    new-array p4, p3, [I

    aput p2, p4, p5

    aput p1, p4, p6

    const-class p7, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    invoke-static {p7, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    iput-object p4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    new-array p4, p3, [I

    aput p2, p4, p5

    aput p1, p4, p6

    sget-object p7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p7, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [[Z

    iput-object p4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    new-array p3, p3, [I

    aput p2, p3, p5

    aput p1, p3, p6

    invoke-static {p7, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mVisibleBitmaps:[[Z

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    return-object p0
.end method

.method private cancelUnrequiredPendingRequests()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "PlayerFrameBitmapState.cancelUnrequiredPendingRequests"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    move v3, v1

    :goto_1
    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v5, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    aget-object v5, v5, v2

    aget-boolean v5, v5, v3

    if-nez v5, :cond_1

    invoke-static {v4}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->b(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aput-object v5, v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private clearBeforeRequest()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mVisibleBitmaps:[[Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "PlayerFrameBitmapState.clearBeforeRequest"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mVisibleBitmaps:[[Z

    array-length v3, v3

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mVisibleBitmaps:[[Z

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aput-boolean v1, v4, v3

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    aget-object v4, v4, v2

    aput-boolean v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    return-object p0
.end method

.method private deleteUnrequiredBitmaps()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "PlayerFrameBitmapState.deleteUnrequiredBitmaps"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    move v3, v1

    :goto_1
    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    aget-object v5, v5, v2

    aget-boolean v5, v5, v3

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aput-object v5, v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->deleteUnrequiredBitmaps()V

    return-void
.end method

.method public static bridge synthetic f(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->markBitmapReceived(II)V

    return-void
.end method

.method private markBitmapReceived(II)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mInitialMissingVisibleBitmaps:Ljava/util/Set;

    if-eqz v1, :cond_2

    array-length v0, v0

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mInitialMissingVisibleBitmaps:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mInitialMissingVisibleBitmaps:Ljava/util/Set;

    :cond_2
    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mStateController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;

    invoke-virtual {p1, p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapStateController;->stateUpdated(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)V

    return-void
.end method

.method private requestBitmapForAdjacentTiles(II)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->requestBitmapForTile(II)Z

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->requestBitmapForTile(II)Z

    :cond_2
    if-lez p2, :cond_3

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->requestBitmapForTile(II)Z

    :cond_3
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_4

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->requestBitmapForTile(II)Z

    :cond_4
    return-void
.end method

.method private requestBitmapForTile(II)Z
    .locals 10

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget-object v0, v0, p1

    const/4 v2, 0x1

    aput-boolean v2, v0, p2

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    if-eqz v0, :cond_1

    aget-object v3, v0, p1

    aget-object v3, v3, p2

    if-eqz v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    if-nez v3, :cond_4

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    mul-int/2addr v3, p2

    new-instance v8, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    invoke-direct {v8, p0, p1, p2, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;-><init>(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;III)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    aget-object v1, v1, p1

    aput-object v8, v1, p2

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    iget-object v5, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mGuid:Lorg/chromium/base/UnguessableToken;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v0

    invoke-direct {v6, v3, v0, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mScaleFactor:F

    new-instance v9, Lorg/chromium/components/paintpreview/player/frame/a;

    const/4 v0, 0x0

    invoke-direct {v9, v0, v8}, Lorg/chromium/components/paintpreview/player/frame/a;-><init>(ILjava/lang/Object;)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;->requestBitmap(Lorg/chromium/base/UnguessableToken;Landroid/graphics/Rect;FLorg/chromium/base/Callback;Ljava/lang/Runnable;)I

    move-result v0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    if-eqz p0, :cond_3

    invoke-static {p0, v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;I)V

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public destroy()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mPendingBitmapRequests:[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    return-void
.end method

.method public getMatrix()[[Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getTileDimensions()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    return-object p0
.end method

.method public isLocked()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mInitialMissingVisibleBitmaps:Ljava/util/Set;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mCompositorDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    invoke-interface {p0}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;->cancelAllBitmapRequests()V

    return-void
.end method

.method public requestBitmapForRect(Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    array-length v1, v0

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "PlayerFrameBitmapState.requestBitmapForRect"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->clearBeforeRequest()V

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    iget-object v4, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    array-length v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    iget-object v6, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    iget-object v6, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mRequiredBitmaps:[[Z

    aget-object v1, v5, v1

    array-length v1, v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-double v5, p1

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mTileSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v7, p1

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v1, v4

    :goto_0
    const/4 v5, 0x1

    if-ge v1, p1, :cond_3

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_2

    iget-object v7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mVisibleBitmaps:[[Z

    aget-object v7, v7, v6

    aput-boolean v5, v7, v1

    invoke-direct {p0, v6, v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->requestBitmapForTile(II)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mInitialMissingVisibleBitmaps:Ljava/util/Set;

    if-eqz v7, :cond_1

    iget-object v8, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mBitmapMatrix:[[Landroid/graphics/Bitmap;

    array-length v8, v8

    mul-int/2addr v8, v6

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/chromium/base/memory/MemoryPressureMonitor;->INSTANCE:Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-virtual {v1}, Lorg/chromium/base/memory/MemoryPressureMonitor;->getLastReportedPressure()I

    move-result v1

    if-ge v1, v5, :cond_5

    :goto_2
    if-ge v4, p1, :cond_5

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-direct {p0, v1, v4}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->requestBitmapForAdjacentTiles(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->cancelUnrequiredPendingRequests()V

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public skipWaitingForVisibleBitmaps()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->mInitialMissingVisibleBitmaps:Ljava/util/Set;

    return-void
.end method
