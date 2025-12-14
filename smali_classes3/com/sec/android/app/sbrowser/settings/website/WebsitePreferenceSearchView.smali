.class public Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi$RecentSearchCallback;


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

.field private mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mFakeHintText:Landroid/widget/TextView;

.field private mImgViewClear:Landroid/widget/ImageButton;

.field private mKeyBoardShowRunnable:Ljava/lang/Runnable;

.field private mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

.field private mMicBtn:Landroid/widget/ImageButton;

.field mOnScrollListener:Landroidx/recyclerview/widget/O0;

.field private mOrientation:I

.field private mRecentSearchFragment:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

.field private mSearchEditTextData:Landroid/widget/EditText;

.field private mSearchView:Landroid/view/View;

.field private mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mSearchViewVisible:Z

.field private mShowingKeyboardHandler:Landroid/os/Handler;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mOrientation:I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$1;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mKeyBoardShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$2;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$3;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/n;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/n;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$4;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->lambda$showSearchView$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->lambda$showSearchView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->lambda$showSearchView$3(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->lambda$showSearchView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->lambda$new$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->lambda$showSearchView$4(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mFakeHintText:Landroid/widget/TextView;

    return-object p0
.end method

.method private hideRecentFrame()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-static {v0, v0}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/a;->f(ZZ)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b09cf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    return-object p0
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
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->addRecentSearchAndDismissKeyBoard()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showSearchView$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x14

    if-eq p2, p1, :cond_0

    const/16 p1, 0x3d

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getNoItemBackground()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getNoItemBackground()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showSearchView$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$showSearchView$3(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

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

.method private synthetic lambda$showSearchView$4(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->showKeyboard()V

    return-void
.end method

.method private synthetic lambda$showSearchView$5(Landroid/view/View;)V
    .locals 0

    const p1, 0xf4257

    invoke-static {p1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->startVoiceRecognitionActivity()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->hideRecentFrame()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->showRecentFrame()V

    return-void
.end method

.method private setSearchQuery(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->displayFilteredList(Ljava/lang/String;)V

    return-void
.end method

.method private showRecentFrame()V
    .locals 6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getNoItemBackground()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;->setRecentSearchCallback(Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi$RecentSearchCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b09cf

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-static {v0, v0}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mRecentSearchFragment:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    const-string v4, "RecentSearchFragment"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v5, v5}, Landroidx/fragment/app/a;->f(ZZ)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method private showSearchView(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewVisible:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, v0, :cond_6

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mOrientation:I

    const p2, 0x7f0b0b67

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    const p2, 0x7f0b0b85

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    const p2, 0x7f0b0b6e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/website/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0491

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    const v0, 0x7f0b04fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mFakeHintText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/website/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/m;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/website/m;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mFakeHintText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mFakeHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071377

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportHoveringUi()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    filled-new-array {p1}, [Landroid/widget/ImageButton;

    move-result-object p1

    aget-object p1, p1, v0

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_TOOLTIP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverPopupType(Landroid/view/View;Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mImgViewClear:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/l;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/website/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/l;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/website/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->isVoiceSearchAvailable()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0b02ac

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewVisible:Z

    :cond_6
    return-void
.end method


# virtual methods
.method public addRecentSearchAndDismissKeyBoard()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchController;->addRecentSearchItem(Ljava/lang/String;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public getSearchEditTextData()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    return-object p0
.end method

.method public getSearchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method public hideSearchView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInSearchView(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lm/b;->n(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->hideRecentFrame()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->updateAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->displayFilteredList(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071354

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->setGoToTopAndHoverBottomPadding(I)V

    return-void
.end method

.method public isSearchViewVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewVisible:Z

    return p0
.end method

.method public isVoiceSearchAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onSearchQueryUpdated(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onVoiceSearchResult(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchController;->addRecentSearchItem(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    return-void
.end method

.method public setFocusOnEditTextBox()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchEditTextData:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public showKeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mShowingKeyboardHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mShowingKeyboardHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mShowingKeyboardHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mKeyBoardShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSearchView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInSearchView(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchViewVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0897

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchView:Landroid/view/View;

    const v1, 0x7f0b0491

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f141105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->o()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mSearchView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->showSearchView(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->showKeyboard()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->showRecentFrame()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceListener;->updateAppBarInfo()V

    return-void
.end method
