.class public Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

.field private mBottomBar:Landroid/view/View;

.field private mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

.field private mDownloadButton:Landroid/view/View;

.field private mDownloadButtonIcon:Landroid/widget/ImageView;

.field private mDownloadButtonText:Landroid/widget/TextView;

.field private mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

.field private mIsLongPressDragging:Z

.field private final mItemClickListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

.field private mListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

.field private final mLongPressItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressSelectionListener:Landroidx/recyclerview/widget/X0;

.field private mMultiSelectedListener:Landroidx/recyclerview/widget/Z0;

.field private mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field private mProgressBarAnimator:Landroid/animation/ValueAnimator;

.field private mSPenDragEndIndex:I

.field private final mSPenDragItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSPenDragStartIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mItemClickListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mIsLongPressDragging:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mLongPressItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mSPenDragItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mSPenDragStartIndex:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mSPenDragEndIndex:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->lambda$onFinishInflate$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->lambda$updateLayout$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->lambda$updateImageItemList$2()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->lambda$updateLoadProgress$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    return-object p0
.end method

.method private getChildIndexAt(II)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ee3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;->computeVerticalScrollOffset()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getItemSize()I

    move-result p2

    add-int/2addr p2, v0

    if-gtz p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->getSpanCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/2addr v1, p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->getSpanCount()I

    move-result p0

    mul-int/2addr v1, p0

    add-int/2addr v1, p1

    return v1
.end method

.method private getSpanCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isLandscapeView()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0091

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mLongPressItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mSPenDragEndIndex:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mSPenDragItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;->onSaveButtonClicked()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->updateLayout(Z)V

    return-void
.end method

.method private synthetic lambda$updateImageItemList$2()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    return-void
.end method

.method private synthetic lambda$updateLayout$3()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->updateItemSize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method private synthetic lambda$updateLoadProgress$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update load progress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageGridContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mSPenDragStartIndex:I

    return p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mIsLongPressDragging:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mSPenDragEndIndex:I

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mSPenDragStartIndex:I

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->getChildIndexAt(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->getSpanCount()I

    move-result p0

    return p0
.end method

.method private setLongPressMultiSelectionListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mLongPressSelectionListener:Landroidx/recyclerview/widget/X0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mLongPressSelectionListener:Landroidx/recyclerview/widget/X0;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    :cond_1
    return-void
.end method

.method private setOnMultiSelectedListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mMultiSelectedListener:Landroidx/recyclerview/widget/Z0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mMultiSelectedListener:Landroidx/recyclerview/widget/Z0;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mMultiSelectedListener:Landroidx/recyclerview/widget/Z0;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method private startLoadProgress()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ImageGridContainer"

    const-string v1, "start load progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080544

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getSelectableCount()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void
.end method

.method private updateDownloadButtonBackground()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06096c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06096a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButtonText:Landroid/widget/TextView;

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0600ec

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButtonText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private updateEdgeGlowEffect()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->focusFromBottom()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public focusFromBottom()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->isReadyToShow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public focusFromTop()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->isReadyToShow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public isLongPressDragging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mIsLongPressDragging:Z

    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public notifySelectAllClicked(Z)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setChecked(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    if-ne v5, v3, :cond_2

    move v5, v6

    :cond_2
    const v8, 0x7f0b0a34

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->getSpanCount()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v5, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->getSpanCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    sub-int/2addr v5, p1

    invoke-virtual {v2, p1, v5}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V

    :cond_5
    if-ge v6, v1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    add-int/lit8 p1, v6, 0x1

    sub-int/2addr v0, v6

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string v0, "ImageGridContainer"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0a3a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const v0, 0x7f0b0a32

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    const v0, 0x7f0b0a30

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mBottomBar:Landroid/view/View;

    const v1, 0x7f0b0a2d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    const v2, 0x7f0b0a2f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButtonText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    const v2, 0x7f0b0a2e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButtonIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    new-instance v2, Lcom/sec/android/app/sbrowser/context_menu/a;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/context_menu/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->setLongPressMultiSelectionListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->setOnMultiSelectedListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->startLoadProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->updateDownloadButtonBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->updateEdgeGlowEffect()V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    return-void
.end method

.method public setDownloadButtonEnabled(ZZ)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDownloadButton:Landroid/view/View;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mBottomBar:Landroid/view/View;

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    return-void
.end method

.method public stopLoadProgress()V
    .locals 2

    const-string v0, "ImageGridContainer"

    const-string v1, "stop load progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public updateImageItemList()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mItemClickListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/view/grid/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/d;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getDragSelectTouchListener()Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ee3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridItemDecoration;-><init>(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->updateLayout(Z)V

    return-void
.end method

.method public updateLayout(Z)V
    .locals 3

    const-string v0, "ImageGridContainer"

    const-string v1, "updateLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->getSpanCount()I

    move-result v1

    if-nez v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mImageGridView:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;->setSpanCount(I)V

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/view/grid/d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/d;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;I)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mAdapter:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public updateLoadProgress()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getSelectableCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz v0, :cond_3

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, LK6/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, LK6/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->stopLoadProgress()V

    :goto_1
    return-void
.end method
