.class public Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;


# instance fields
.field private mAnimationLayout:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mContentImageView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

.field private final mParentLayout:Landroid/view/ViewGroup;

.field private final mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mParentLayout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mListener:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->setListener(Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;)Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mListener:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;)Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    return-object p0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mAnimationLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mContentImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->end()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mListener:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;->onAnimationClear()V

    return-void
.end method

.method public createAnimation()Landroid/view/animation/Animation;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f01008a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;-><init>(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method public onTouchLockup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mListener:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;->onAnimationEnd()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mTouchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->end()V

    return-void
.end method

.method public prepareAnimation(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0614

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mAnimationLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mAnimationLayout:Landroid/view/View;

    const v1, 0x7f0b09b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mContentImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mListener:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;->onAnimationReady(Z)V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mAnimationLayout:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mListener:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;->onAnimationStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->mListener:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;->onAnimationEnd()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->createAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
