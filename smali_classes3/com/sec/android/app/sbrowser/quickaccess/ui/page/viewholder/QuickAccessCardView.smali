.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;
.implements Landroidx/lifecycle/I;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mCardBlurView:Landroid/widget/ImageView;

.field private mContentView:Landroid/view/View;

.field private mIsNonNativeEditableView:Z

.field private final mLifecycleRegistry:Landroidx/lifecycle/L;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRoundedCornerRadius:I

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final mShadowDrawHelper:Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

.field private mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mIsNonNativeEditableView:Z

    new-instance v0, Landroidx/lifecycle/L;

    invoke-direct {v0, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mLifecycleRegistry:Landroidx/lifecycle/L;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/e;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    sget-object v1, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;-><init>()V

    const v1, 0x7f060886

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->setShadowColorRes(Landroid/content/Context;I)Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b41

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->setShadowOffset(II)Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->setElevation(F)Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->build()Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mShadowDrawHelper:Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

    const/4 p2, 0x0

    invoke-super {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mCardBlurView:Landroid/widget/ImageView;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mIsNonNativeEditableView:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mRoundedCornerRadius:I

    return p0
.end method

.method private synthetic lambda$new$0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->updateBlurBackground()V

    const/4 p0, 0x1

    return p0
.end method

.method private updateBlurBackground(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->getCustomBackgroundLayoutInfo()Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getLayoutInfoFromView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;-><init>(IIII)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;-><init>(IIII)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mCardBlurView:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getLayoutInfoFromView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->cropVisibleBitmapForChildView(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mCardBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateMostVisitedBackground()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mIsNonNativeEditableView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mCardBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060885

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnPreDrawListener()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mShadowDrawHelper:Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mShadowDrawHelper:Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mRoundedCornerRadius:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->dispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/D;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mLifecycleRegistry:Landroidx/lifecycle/L;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v1, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v1, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public removeOnPreDrawListener()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mIsNonNativeEditableView:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mCardBlurView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setShadowElevation(F)V

    return-void
.end method

.method public setNonNativeEditableView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mIsNonNativeEditableView:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->updateMostVisitedBackground()V

    return-void
.end method

.method public setRoundedCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mRoundedCornerRadius:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setShadowCornerRadius(F)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public setShadowCornerRadius(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mShadowDrawHelper:Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public setShadowElevation(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mShadowDrawHelper:Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setViewModel(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    return-void
.end method

.method public updateBlurBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->mIsNonNativeEditableView:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getBlurBackground()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->updateBlurBackground(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
