.class public Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;
.implements Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi$RecentSearchCallback;


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

.field mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mFakeHintText:Landroid/widget/TextView;

.field private mImgViewClear:Landroid/widget/ImageButton;

.field private mIsRecentSearchVisible:Z

.field private mKeyBoardShowRunnable:Ljava/lang/Runnable;

.field private mMicBtn:Landroid/widget/ImageButton;

.field mOnScrollListener:Landroidx/recyclerview/widget/O0;

.field private mOrientation:I

.field private mRecentSearchFragment:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

.field private mSearchEditTextData:Landroid/widget/EditText;

.field private mSearchView:Landroid/view/View;

.field private mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mSearchViewVisible:Z

.field private mShowingKeyboardHandler:Landroid/os/Handler;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mIsRecentSearchVisible:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mKeyBoardShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/m;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/m;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$4;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->lambda$showSearchView$2(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->lambda$showSearchView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->lambda$showSearchView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->lambda$new$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->lambda$showSearchView$1(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mFakeHintText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private hideRecentFrame()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mIsRecentSearchVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroidx/fragment/app/J;

    invoke-virtual {v1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    invoke-static {v1, v1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/a;->f(ZZ)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b09cf

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->hideRecentFrame()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->addRecentSearchAndDismissKeyBoard()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showSearchView$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$showSearchView$2(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$showSearchView$3(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->showKeyboard()V

    return-void
.end method

.method private synthetic lambda$showSearchView$4(Landroid/view/View;)V
    .locals 0

    const p1, 0xf4257

    invoke-static {p1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->startVoiceRecognitionActivity()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->showRecentFrame()V

    return-void
.end method

.method private showRecentFrame()V
    .locals 6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->setRecentSearchCallback(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi$RecentSearchCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b09cf

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-static {v0, v0}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    const-string v4, "RecentSearchFragment"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v5, v5}, Landroidx/fragment/app/a;->f(ZZ)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mIsRecentSearchVisible:Z

    :cond_0
    return-void
.end method

.method private showSearchView(Landroid/view/View;Z)V
    .locals 4

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewVisible:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, v0, :cond_a

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mOrientation:I

    const p2, 0x7f0b0b67

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    const p2, 0x7f0b0b85

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08042d

    goto :goto_0

    :cond_1
    const v0, 0x7f0807c1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    const p2, 0x7f0b0b6e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$6;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0b0491

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    const v0, 0x7f0b04fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mFakeHintText:Landroid/widget/TextView;

    const v0, 0x7f140469

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/n;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/o;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/o;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mFakeHintText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mFakeHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071377

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportHoveringUi()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    filled-new-array {p1}, [Landroid/widget/ImageButton;

    move-result-object p1

    aget-object p1, p1, v0

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_TOOLTIP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverPopupType(Landroid/view/View;Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    const v1, 0x7f060be9

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mFakeHintText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f060bf2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060be1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0609cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/n;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    if-eqz p1, :cond_9

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/n;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/n;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->isVoiceSearchAvailable()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0b02ac

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewVisible:Z

    :cond_a
    return-void
.end method


# virtual methods
.method public addRecentSearchAndDismissKeyBoard()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8777"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->addRecentSearchItem(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->notifyAppBarHeightChangedWithDelay(Ljava/lang/Boolean;)V

    return-void
.end method

.method public getSearchEditTextData()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    return-object p0
.end method

.method public getSearchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method public hideSearchView()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchView:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->removeViewFromToolbar(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->hideRecentFrame()V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->updateAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->showHideSpinnerBar(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setShouldShowOptionMenu(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f071354

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getDimensFromResources(Landroid/content/Context;I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setGoToTopAndHoverBottomPadding(I)V

    return-void
.end method

.method public isSearchViewVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewVisible:Z

    return p0
.end method

.method public isShowingRecentSearch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mIsRecentSearchVisible:Z

    return p0
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b043b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method public onSearchQueryUpdated(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onVoiceSearchResult(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->toResult(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->keyword()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->addRecentSearchItem(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public sendDataToSearchClient()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredList()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadDelegate()Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->sendDataToSearchClient(Ljava/util/List;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V

    return-void
.end method

.method public setDHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-void
.end method

.method public setFocusOnEditTextBox()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public showKeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mShowingKeyboardHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mShowingKeyboardHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mShowingKeyboardHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mKeyBoardShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSearchView()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchViewVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0897

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchView:Landroid/view/View;

    const v1, 0x7f0b0491

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140469

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setAppBarExpanded(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->o()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->addViewToToolbar(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mSearchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->showSearchView(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->showKeyboard()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->showRecentFrame()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$5;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->updateAppBarInfo()V

    :cond_2
    :goto_0
    return-void
.end method
