.class public Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$ThemeType;
    }
.end annotation


# instance fields
.field private mAddBookmarkButton:Landroid/widget/LinearLayout;

.field private mAddBookmarkButtonImage:Landroid/widget/ImageView;

.field private mAddBookmarkButtonTextTitle:Landroid/widget/TextView;

.field private mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

.field private final mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

.field private mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

.field private mBookmarkBarMoreButtonIcon:Landroid/widget/ImageView;

.field private final mBookmarkButtonDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

.field private final mBookmarkButtonListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

.field private mDragControllerDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;

.field private mEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

.field private mIsAddedAddToBookmarkBarButton:Z

.field private mIsHighContrast:Z

.field private mIsIncognito:Z

.field private mIsNightMode:Z

.field private mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

.field private mReaderThemeColor:I

.field private mShouldBookmarkBarEnabled:Z

.field private mThemeColor:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

.field private mThemeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mShouldBookmarkBarEnabled:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsAddedAddToBookmarkBarButton:Z

    new-instance p2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkButtonDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkButtonListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/graphics/Point;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->lambda$onFinishInflate$4(Landroid/graphics/Point;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private addAddBookmarkBarButtonIfNeeded(III)Z
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v3, -0x3e7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyBookmarkAdded(JLjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyBookmarkRemoved(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsAddedAddToBookmarkBarButton:Z

    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsAddedAddToBookmarkBarButton:Z

    return v1
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->lambda$onFinishInflate$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/graphics/Point;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->lambda$onFinishInflate$3(Landroid/graphics/Point;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private enableBookmarkBarList(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;->setTouchEnabled(Z)V

    return-void
.end method

.method private enableBookmarkBarMoreButton(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsHighContrast:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsIncognito:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsNightMode:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    return-object p0
.end method

.method private isBookmarkBarEnableCondition()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mReaderThemeColor:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mShouldBookmarkBarEnabled:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeType:I

    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "BookmarkBarContainer"

    const-string v0, "mBookmarkBarMoreButton click"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsAddedAddToBookmarkBarButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onBookmarkBarMoreButtonClicked(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->isBookmarkBarEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "BookmarkBarContainer"

    const-string v0, "mAddBookmarkButton click"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onAddBookmarkBarButtonClicked()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x13

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onFocusOutTop()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$onFinishInflate$3(Landroid/graphics/Point;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->isBookmarkBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;->onBookmarkLongClicked(Landroid/graphics/Point;Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onFinishInflate$4(Landroid/graphics/Point;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;->onBookmarkTouched(Landroid/graphics/Point;Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowBookmarkBarContainer()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;->isUrlEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFocusLayoutType()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private turnOffIndicators(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_0

    const v3, 0x7f0b017b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f0b017a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateButtonDrawable()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsIncognito:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const v0, 0x7f060156

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsNightMode:Z

    if-eqz v0, :cond_1

    const v0, 0x7f060153

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsHighContrast:Z

    if-eqz v0, :cond_2

    const v0, 0x7f060151

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mReaderThemeColor:I

    if-ne v0, v1, :cond_3

    const v0, 0x7f060154

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const v0, 0x7f060155

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeType:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeType:I

    if-ne v0, v1, :cond_5

    const v0, 0x7f060150

    goto :goto_0

    :cond_5
    const v0, 0x7f060152

    goto :goto_0

    :cond_6
    const v0, 0x7f06014f

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButtonIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButtonImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButtonTextTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeType:I

    if-ne p0, v1, :cond_7

    const p0, 0x7f0800cc

    goto :goto_1

    :cond_7
    const p0, 0x7f0800cb

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mShouldBookmarkBarEnabled:Z

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->isBookmarkBarEnableCondition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableAddBookmarkButton(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public enableBookmarkBarContainer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mShouldBookmarkBarEnabled:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->enableBookmarkBarMoreButton(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->enableBookmarkBarList(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->enableAddBookmarkButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onBookmarkBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableBookmarkBarContainerWithVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->enableBookmarkBarContainer(Z)V

    return-void
.end method

.method public getAddBookmarkButton()Landroid/widget/LinearLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getBookmarkBarButtons()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getBackgroundView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public getBookmarkItem(J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBookmarkListView()Landroid/widget/LinearLayout;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->getBookmarkListView()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    move-result-object p0

    return-object p0
.end method

.method public getBookmarkListView()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    return-object p0
.end method

.method public isBookmarkBarEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mShouldBookmarkBarEnabled:Z

    return p0
.end method

.method public isMainViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;->isMainViewShowing()Z

    move-result p0

    return p0
.end method

.method public notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsIncognito:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsNightMode:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsHighContrast:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeColor:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mReaderThemeColor:I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeColor:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeType:I

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getReaderTheme()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mReaderThemeColor:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->updateButtonDrawable()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mThemeType:I

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f0800c7

    goto :goto_1

    :cond_2
    const p2, 0x7f0800c6

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;->updateBookmarkButtonDrawable()V

    return-void
.end method

.method public notifyBookmarkAdded(JLjava/lang/String;Ljava/lang/String;Z)I
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkButtonDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkButtonListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;->addBookmarkButton(JLjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;)I

    move-result p0

    return p0
.end method

.method public notifyBookmarkRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;->removeBookmarkButton(I)V

    return-void
.end method

.method public notifyVisibilityChanged()V
    .locals 14

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->setBookmarkUri(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result v1

    const-string v4, "BookmarkBarContainer"

    if-gtz v1, :cond_1

    const-string p0, "notifyVisibilityChanged bookmarkBarWidth is not valid"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarUtil;->getBookmarkBarWidth(Landroid/content/Context;)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "notifyVisibilityChanged bookmarkBarWidth : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    move v6, v5

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v9

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyBookmarkAdded(JLjava/lang/String;Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v5, v7

    if-le v5, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "notifyVisibilityChanged overFlow totalWidth : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyBookmarkRemoved(I)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mIsAddedAddToBookmarkBarButton:Z

    if-nez v0, :cond_4

    invoke-direct {p0, v5, v1, v6}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->addAddBookmarkBarButtonIfNeeded(III)Z

    move-result v0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyVisibilityChanged added : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "BookmarkBarContainer"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->shouldShowBookmarkBarContainer()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyVisibilityChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->isBookmarkBarEnableCondition()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->enableBookmarkBarContainer(Z)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0177

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    const v0, 0x7f0b0178

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    const v1, 0x7f14074f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/a;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0179

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButtonIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/a;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    new-instance v1, LFa/e;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LFa/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButtonTextTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f1403a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f1402b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/b;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/b;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/graphics/Point;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/c;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/c;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/graphics/Point;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->isBookmarkBarEnableCondition()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->enableBookmarkBarContainerWithVisibility(Z)V

    :cond_0
    return-void
.end method

.method public removePositionDivider()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->turnOffIndicators(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setAddBookmarkButton(Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setBookmarkBarListView(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;)V
    .locals 0
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    return-void
.end method

.method public setBookmarkBarMoreButton(Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    return-void
.end method

.method public setDragController(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDragControllerDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarMoreButton:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;->setBookmarkMoreMenu(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDragControllerDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mAddBookmarkButton:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;->setAddBookmarkButton(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mDragControllerDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;->updateDragListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V

    return-void
.end method

.method public setEmptyListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    return-void
.end method

.method public shouldCaptureLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showPosition(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->turnOffIndicators(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_4

    if-gez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->mBookmarkBarListView:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarListView;

    if-nez v2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    div-int/lit8 v4, v2, 0x2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const v2, 0x7f0b017b

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_2
    const v2, 0x7f0b017a

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
