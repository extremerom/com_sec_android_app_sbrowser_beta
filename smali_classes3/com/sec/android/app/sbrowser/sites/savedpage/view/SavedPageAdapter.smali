.class public Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mCloudSyncOn:Z

.field private mContext:Landroid/content/Context;

.field private mImageViewHeight:I

.field private mImageViewWidth:I

.field private mIsActionBarShown:Z

.field private mIsAnimationStarted:Z

.field private mIsByPassActionMode:Z

.field private mListTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mMarginForActionMode:I

.field private mMarginForNormalMode:I

.field private mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

.field private mTickboxChecked:Ljava/lang/String;

.field private mTickboxUnChecked:Ljava/lang/String;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mViewList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mListTask:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsActionBarShown:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsByPassActionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsAnimationStarted:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mCloudSyncOn:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f15

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mImageViewWidth:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f11

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mImageViewHeight:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f0f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mMarginForActionMode:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f10

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mMarginForNormalMode:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140289

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mTickboxChecked:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14028a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mTickboxUnChecked:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->lambda$setHoverListener$0(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Landroid/view/View;ZLcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setDescriptionForSavedPageView(Landroid/view/View;ZLcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    return-void
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mImageViewWidth:I

    int-to-float v2, v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mImageViewHeight:I

    int-to-float v3, p0

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v1, p0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutOfMemoryError in getScaledBitmap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SavedPageAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p1
.end method

.method private getTitleTextViewWidth()I
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f3c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070647

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070645

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070648

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr v0, p0

    return v0
.end method

.method private static synthetic lambda$setHoverListener$0(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-nez p2, :cond_3

    return p1

    :cond_3
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_0
    return p1
.end method

.method private setBackgroundResourceForItems(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;I)V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDividerView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-nez p2, :cond_0

    if-ne p0, v2, :cond_0

    const/16 p0, 0xf

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-nez p2, :cond_1

    if-le p0, v2, :cond_1

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sub-int/2addr p0, v2

    if-ne p2, p0, :cond_2

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setDescriptionForSavedPageView(Landroid/view/View;ZLcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mTickboxChecked:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDomainUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140b8f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mTickboxUnChecked:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDomainUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsActionBarShown:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setHoverListener(Landroid/widget/TextView;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/a;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/a;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x7f080237

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080236

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getSavedPageItemPos(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getSavedPageUi()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    return-object p0
.end method

.method public getTodayItemCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isAnimationStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsAnimationStarted:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;I)V
    .locals 16
    .param p1    # Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p2

    const-string v1, "onBindViewHolder position "

    const-string v10, "SavedPageAdapter"

    invoke-static {v0, v1, v10}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    iget-object v12, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mRowView:Landroid/view/View;

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setBackgroundResourceForItems(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;I)V

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v1

    invoke-direct {v8, v12, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;

    invoke-direct {v2, v8, v11, v12}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v1, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsActionBarShown:Z

    const/16 v13, 0x8

    const/4 v2, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v1

    iget-object v3, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eq v1, v3, :cond_0

    iget-object v3, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_0
    iget-object v1, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean v1, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsByPassActionMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v14

    :goto_0
    invoke-virtual {v11, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v3, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsActionBarShown:Z

    if-eqz v3, :cond_3

    iget v3, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mMarginForActionMode:I

    goto :goto_2

    :cond_3
    iget v3, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mMarginForNormalMode:I

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v3, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mImageViewWidth:I

    iget v4, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mImageViewHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/utils/SavedPageUtils;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/utils/SavedPageUtils;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/utils/SavedPageUtils;->getDominantText(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getImageStyle()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f06097f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDimmedView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "getView : image style is IMAGE_STYLE_NULL"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    iget-object v1, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->getSavedPageImageFetcher()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v3, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDimmedView:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->getImageCache()Landroid/util/LruCache;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->getFirstVisiblePosition()I

    move-result v1

    iget-object v3, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->getLastVisiblePosition()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mListTask:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    move v5, v14

    :goto_3
    iget-object v7, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mListTask:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;

    invoke-virtual {v7, v1, v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;->isVisiblePosition(II)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mListTask:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;

    invoke-virtual {v7, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    new-instance v15, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;

    iget-object v3, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v5

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$LoadAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Landroid/content/Context;IILjava/lang/String;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;)V

    iget-object v0, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mListTask:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-virtual {v15, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RejectedExecutionException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->initializeThreadPool()V

    goto :goto_4

    :cond_7
    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_4
    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageTitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageUrl:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageDescription:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mCloudSyncOn:Z

    if-eqz v0, :cond_9

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getIsSyncable()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mUnSyncIcon:Landroid/widget/ImageView;

    iget-object v1, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f080351

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mUnSyncIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mUnSyncIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getTitleTextViewWidth()I

    move-result v0

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageTitle:Landroid/widget/TextView;

    iget-object v2, v8, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageTitle:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-direct {v8, v12, v0, v11}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setDescriptionForSavedPageView(Landroid/view/View;ZLcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageTitle:Landroid/widget/TextView;

    invoke-direct {v8, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setHoverListener(Landroid/widget/TextView;)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageUrl:Landroid/widget/TextView;

    invoke-direct {v8, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setHoverListener(Landroid/widget/TextView;)V

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageDescription:Landroid/widget/TextView;

    invoke-direct {v8, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setHoverListener(Landroid/widget/TextView;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreateViewHolder position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SavedPageAdapter"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e080a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mViewList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mViewList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setActionModeByPass(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsByPassActionMode:Z

    return-void
.end method

.method public setIsActionBarShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->mIsActionBarShown:Z

    return-void
.end method
