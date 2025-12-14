.class public Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mAddBookmarkIcon:Landroid/widget/ImageView;

.field private final mBookmarkButtonClickListener:Landroid/view/View$OnClickListener;

.field private mBookmarkButtonContainer:Landroid/widget/LinearLayout;

.field private mBookmarkButtonDivider:Landroid/widget/ImageView;

.field private mBookmarkButtonFolderIcon:Landroid/widget/ImageView;

.field private final mBookmarkButtonKeyListener:Landroid/view/View$OnKeyListener;

.field private mBookmarkButtonListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

.field private mBookmarkButtonRippleView:Landroid/widget/FrameLayout;

.field private mBookmarkButtonTitle:Landroid/widget/TextView;

.field private final mBookmarkButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mCTXPopupCallback:Ljava/lang/Runnable;

.field private mCTXPopupHandler:Landroid/os/Handler;

.field private mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

.field private mDragBookmarkCallback:Ljava/lang/Runnable;

.field private mDragBookmarkHandler:Landroid/os/Handler;

.field private mId:J

.field private mIndex:I

.field private mIsFolder:Z

.field private mOnAddToFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;

.field mShouldConsumeTouchEvent:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$1;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mOnAddToFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$4;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->lambda$initialize$0(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mCTXPopupCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mCTXPopupHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDragBookmarkCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDragBookmarkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mId:J

    return-wide v0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mIsFolder:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mCTXPopupCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDragBookmarkCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonRippleView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    const/4 v3, 0x0

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p0, 0x6

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v3, [I

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mOnAddToFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mIndex:I

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;->onDragItemEntered(ILandroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_2
    new-array p1, v3, [I

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mOnAddToFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;->onAddToFolder(Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_3
    const p0, 0x7f0b017e

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    const p0, 0x10100a7

    const p1, 0x101009e

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    :goto_0
    return v2

    :cond_6
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarDragUtils;->isBookmarkBarDragItem(Landroid/content/ClipDescription;)Z

    move-result p0

    return p0
.end method

.method private updateDrawable(III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mAddBookmarkIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getBackgroundView()Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStates(Landroid/view/View;)V

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mIndex:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public initialize(JLjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;)V
    .locals 2

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mId:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mUrl:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mIsFolder:Z

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonTitle:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonFolderIcon:Landroid/widget/ImageView;

    const/16 p4, 0x8

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    move p7, p6

    goto :goto_0

    :cond_0
    move p7, p4

    :goto_0
    invoke-virtual {p3, p7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mAddBookmarkIcon:Landroid/widget/ImageView;

    const-wide/16 v0, -0x3e7

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    move p2, p6

    goto :goto_1

    :cond_1
    move p2, p4

    :goto_1
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonDivider:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move p4, p6

    :goto_2
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->updateDrawable()V

    if-eqz p5, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonContainer:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_3
    return-void
.end method

.method public isAddToBookmarkButton()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mId:J

    const-wide/16 v2, -0x3e7

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mIsFolder:Z

    return p0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b017e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonRippleView:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0181

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarButtonUtils;->getMaxWidthPxForTitleView(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    const v0, 0x7f0b0417

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonDivider:Landroid/widget/ImageView;

    const v0, 0x7f0b017f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonFolderIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mAddBookmarkIcon:Landroid/widget/ImageView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mCTXPopupHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDragBookmarkHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mIndex:I

    return-void
.end method

.method public setOnAddToFolderListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mOnAddToFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;

    return-void
.end method

.method public updateDrawable()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    const v1, 0x7f060144

    const v2, 0x7f06014f

    const v3, 0x7f06013c

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->updateDrawable(III)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->isIncognitoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f06014b

    const v2, 0x7f060156

    const v3, 0x7f060143

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->isHighContrastMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0x7f060146

    const v2, 0x7f060151

    const v3, 0x7f06013e

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x7f060148

    const v2, 0x7f060153

    const v3, 0x7f060140

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->getReaderThemeColor()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    const v1, 0x7f060149

    const v2, 0x7f060154

    const v3, 0x7f060141

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->getReaderThemeColor()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    const v1, 0x7f06014a

    const v2, 0x7f060155

    const v3, 0x7f060142

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    const v1, 0x7f060147

    const v2, 0x7f060152

    const v3, 0x7f06013f

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_7

    const v1, 0x7f060145

    const v2, 0x7f060150

    const v3, 0x7f06013d

    :cond_7
    :goto_0
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->updateDrawable(III)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mBookmarkButtonRippleView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_8

    const p0, 0x7f0800c7

    goto :goto_1

    :cond_8
    const p0, 0x7f0800c6

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
