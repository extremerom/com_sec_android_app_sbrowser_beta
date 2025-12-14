.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;,
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;
    }
.end annotation


# instance fields
.field private final mBtnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseIcon:Landroid/widget/ImageView;

.field private mCloseText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field private mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;

.field private mEditBottomBarClose:Landroid/view/View;

.field private mEditBottomBarGroup:Landroid/view/View;

.field private mEditBottomBarLock:Landroid/view/View;

.field private mEditBottomBarMove:Landroid/view/View;

.field private mEditBottomBarRename:Landroid/view/View;

.field private mEditBottomBarShare:Landroid/view/View;

.field private mEditBottomBarUngroup:Landroid/view/View;

.field private mEditBottomBarUnlock:Landroid/view/View;

.field private mGroupIcon:Landroid/widget/ImageView;

.field private mGroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field private final mIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNewGroup:Z

.field private mIsTabDeleteSuggestionOngoing:Z

.field private mLockIcon:Landroid/widget/ImageView;

.field private mLockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field private mMoveIcon:Landroid/widget/ImageView;

.field private mMoveText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field private mRenameIcon:Landroid/widget/ImageView;

.field private mRenameText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field private mShareIcon:Landroid/widget/ImageView;

.field private mShareText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field private final mTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mUngroupIcon:Landroid/widget/ImageView;

.field private mUngroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field private mUnlockIcon:Landroid/widget/ImageView;

.field private mUnlockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIsNewGroup:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIsTabDeleteSuggestionOngoing:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->lambda$onCreateView$6(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->lambda$onCreateView$4(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->lambda$onCreateView$5(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->lambda$onCreateView$3(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->lambda$onCreateView$1(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->lambda$onCreateView$2(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreateView$1(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;->onShareButtonClick()V

    return-void
.end method

.method private static synthetic lambda$onCreateView$2(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;->onLockButtonClick()V

    return-void
.end method

.method private static synthetic lambda$onCreateView$3(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;->onUnlockButtonClick()V

    return-void
.end method

.method private synthetic lambda$onCreateView$4(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIsNewGroup:Z

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;->onGroupButtonClick(ZLandroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onCreateView$5(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;->onUngroupButtonClick()V

    return-void
.end method

.method private static synthetic lambda$onCreateView$6(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;->onMoveButtonClick()V

    return-void
.end method

.method private setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    const p0, 0x3ecccccd    # 0.4f

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_2

    move p0, p2

    :cond_2
    invoke-virtual {p4, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setButtonVisibilityForTabDeleteSuggestion()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarLock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUnlock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarRename:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarMove:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUngroup:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public enableShare(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public enterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->enterEditMode(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isGroupMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->enterGroupMode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enterEditMode(ZZ)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setGroupText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarLock:Landroid/view/View;

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUnlock:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUngroup:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarRename:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarMove:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public enterGroupMode(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setGroupText(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarLock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUnlock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarRename:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarMove:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUngroup:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public exitEditModeWithoutList()V
    .locals 9

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setGroupText(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public focusBottomBar()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getLeftOf(Landroid/view/View;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->getLeftOf(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getRightOf(Landroid/view/View;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->getRightOf(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getShareButtonPosition()I
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_2
    div-int/lit8 p0, v3, 0x2

    const/4 v0, 0x1

    if-gt v2, p0, :cond_3

    move p0, v0

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    rem-int/lit8 v4, v3, 0x2

    const/16 v5, 0x900

    const/16 v6, 0x700

    if-nez v4, :cond_5

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    :cond_5
    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_6

    move v1, v0

    :cond_6
    if-eqz p0, :cond_7

    move v5, v6

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    const/16 v5, 0x800

    :cond_8
    :goto_2
    return v5
.end method

.method public isBottombarButton(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isClosable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNoButtonExceptShare()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v0, 0x7f0b0d12

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0d0f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarLock:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0d14

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUnlock:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0d0a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140869

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0d0e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0d13

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUngroup:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14103c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0d11

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarRename:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0d10

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarMove:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140f4e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/n;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/n;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/n;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/n;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarLock:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/n;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/n;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUnlock:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/n;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/n;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/o;-><init>(Landroid/widget/LinearLayout;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUngroup:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/n;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/n;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarRename:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/n;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/n;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarMove:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/n;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/n;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0cd3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mShareIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b0cd4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mShareText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const p1, 0x7f0b0cc9

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mLockIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b0cca

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mLockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const p1, 0x7f0b0cc5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mCloseIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b0cc6

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mCloseText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const p1, 0x7f0b0cc7

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b0cc8

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const p1, 0x7f0b0cd5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUngroupIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b0cd6

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUngroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const p1, 0x7f0b0cd7

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUnlockIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b0cd8

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUnlockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const p1, 0x7f0b0ccf

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mRenameIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b0cd0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mRenameText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const p1, 0x7f0b0ccb

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mMoveIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b0ccc

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mMoveText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarMove:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarLock:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUnlock:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarRename:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUngroup:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mBtnList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mMoveIcon:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupIcon:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mLockIcon:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mRenameIcon:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUngroupIcon:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mShareIcon:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mCloseIcon:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mMoveText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mLockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUnlockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mRenameText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUngroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mShareText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mCloseText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->updateHorizontalPadding()V

    return-void
.end method

.method public requestFocusLeft(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->getLeftOf(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requestFocusRight(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->getRightOf(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBottomButtonEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mShareIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mShareText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarLock:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mLockIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mLockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUnlock:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUnlockIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUnlockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mCloseIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mCloseText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUngroup:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUngroupIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUngroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarRename:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mRenameIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mRenameText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarMove:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mMoveIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mMoveText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setGroupText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIsNewGroup:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f141024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTabDeleteSuggestionOngoing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIsTabDeleteSuggestionOngoing:Z

    return-void
.end method

.method public updateBackground(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mShareText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mCloseText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mLockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mUnlockText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$multi_tab$MultiTabConstants$ViewState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const v1, 0x7f060d00

    const v2, 0x7f08073b

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const p1, 0x7f060cff

    const v1, 0x7f060d04

    const v2, 0x7f060d01

    const v3, 0x7f08073c

    move v8, v3

    move v3, v1

    move v1, v2

    move v2, v8

    goto :goto_0

    :pswitch_1
    const p1, 0x7f060cfd

    const v3, 0x7f060d02

    goto :goto_0

    :pswitch_2
    const p1, 0x7f060cfe

    const v3, 0x7f060d03

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIconList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-static {v1, v7, v6}, LW0/j;->a(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mTextList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v1, :cond_2

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateButtonsBySelect(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZZLjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;",
            "ZZZ",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isLocked()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isLocked()Z

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 p5, 0x1

    if-nez p2, :cond_6

    if-nez v2, :cond_6

    if-lez v0, :cond_6

    if-ge v3, p5, :cond_6

    move v3, p5

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_1
    if-eqz p3, :cond_7

    if-ne v4, v0, :cond_7

    if-lez v0, :cond_7

    move v4, p5

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    if-eqz p3, :cond_8

    if-eqz v5, :cond_8

    if-nez v2, :cond_8

    move p3, p5

    goto :goto_3

    :cond_8
    move p3, v1

    :goto_3
    sget-object v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->GROUP:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    if-ne p1, v5, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupIcon:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mGroupText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonEnabled(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_d

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarShare:Landroid/view/View;

    const/16 v5, 0x8

    if-nez p2, :cond_a

    if-eqz p4, :cond_a

    move p2, v1

    goto :goto_4

    :cond_a
    move p2, v5

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    if-nez v4, :cond_b

    move p2, v1

    goto :goto_5

    :cond_b
    move p2, v5

    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarLock:Landroid/view/View;

    if-eqz p3, :cond_c

    move p2, v1

    goto :goto_6

    :cond_c
    move p2, v5

    :goto_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUnlock:Landroid/view/View;

    if-eqz v4, :cond_d

    move p2, v1

    goto :goto_7

    :cond_d
    move p2, v5

    :goto_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->isGroupFeatureEnabled()Z

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarGroup:Landroid/view/View;

    if-eqz p1, :cond_e

    if-eqz p6, :cond_e

    if-eqz v3, :cond_e

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;->isEditModeFromSearch()Z

    move-result p3

    if-nez p3, :cond_e

    move p3, v1

    goto :goto_8

    :cond_e
    move p3, v5

    :goto_8
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarUngroup:Landroid/view/View;

    if-eqz p1, :cond_f

    if-ne v0, p5, :cond_f

    if-ne v0, v2, :cond_f

    move p3, v1

    goto :goto_9

    :cond_f
    move p3, v5

    :goto_9
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarRename:Landroid/view/View;

    if-eqz p1, :cond_10

    if-eqz p6, :cond_10

    if-ne v2, p5, :cond_10

    if-ne v0, p5, :cond_10

    move p3, v1

    goto :goto_a

    :cond_10
    move p3, v5

    :goto_a
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarMove:Landroid/view/View;

    if-eqz p1, :cond_12

    if-lez v0, :cond_12

    if-eqz p6, :cond_11

    if-nez v2, :cond_12

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;->getGroupCount()I

    move-result p1

    if-lez p1, :cond_12

    :cond_11
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;->isEditModeFromSearch()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_b

    :cond_12
    move v1, v5

    :goto_b
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;->isAllClosable()Z

    move-result p1

    if-eqz p1, :cond_13

    const p1, 0x7f1402f6

    goto :goto_c

    :cond_13
    const p1, 0x7f140869

    :goto_c
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mCloseText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mEditBottomBarClose:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_d
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->mIsTabDeleteSuggestionOngoing:Z

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setButtonVisibilityForTabDeleteSuggestion()V

    :cond_14
    return-void
.end method

.method public updateHorizontalPadding()V
    .locals 4

    const v0, 0x7f0b0d0d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d0c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0d0b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, LW0/j;->a:Ljava/lang/ThreadLocal;

    const v3, 0x7f070145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070156

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
