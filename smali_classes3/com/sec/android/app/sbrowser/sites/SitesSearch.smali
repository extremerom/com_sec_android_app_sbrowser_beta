.class public Lcom/sec/android/app/sbrowser/sites/SitesSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mFakeHintText:Landroid/widget/TextView;

.field private mHidingKeyboardHandler:Landroid/os/Handler;

.field private mImgViewClear:Landroid/widget/ImageButton;

.field private mIsSitesSearchViewVisible:Z

.field private mIsSmartSearchSupported:Z

.field private mKeyBoardHideRunnable:Ljava/lang/Runnable;

.field private mKeyBoardShowRunnable:Ljava/lang/Runnable;

.field private mMicBtn:Landroid/widget/ImageButton;

.field private mOrientation:I

.field private mProcessSearchDataHandler:Landroid/os/Handler;

.field private mRunProcessSearchData:Ljava/lang/Runnable;

.field private mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

.field private mSearchText:Ljava/lang/String;

.field private mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mShowingKeyboardHandler:Landroid/os/Handler;

.field private mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

.field private mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

.field private mSitesSearchDeleteStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/SitesDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mOrientation:I

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mProcessSearchDataHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$1;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mRunProcessSearchData:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$7;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$9;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$10;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mKeyBoardShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$12;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mKeyBoardHideRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->isSmartSearchValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSmartSearchSupported:Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->lambda$onChange$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mBackButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mFakeHintText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mImgViewClear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSmartSearchSupported:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private getSitesSearchDeleteStatus()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mProcessSearchDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mRunProcessSearchData:Ljava/lang/Runnable;

    return-object p0
.end method

.method private isVoiceSearchAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    return-object p0
.end method

.method private synthetic lambda$onChange$0()V
    .locals 2

    const-string v0, "SitesSearch"

    const-string v1, "setSceneAnimation :: onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->exitSearchActionMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->showKeyboard()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/SitesSearch;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->isVoiceSearchAvailable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setKeyBoardInputModeToAdjustResize()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->startVoiceRecognitionActivity()V

    return-void
.end method

.method private setKeyBoardInputModeToAdjustResize()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private startVoiceRecognitionActivity()V
    .locals 1

    const v0, 0xf4257

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->launch(Landroid/app/Activity;Z)V

    return-void
.end method


# virtual methods
.method public clearSitesSearchDeleteStatus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getBookmarkMap()Lcom/google/common/collect/I;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/I;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSitesPage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentTab(I)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->DEFAULT:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->DEFAULT:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result p0

    return p0

    :cond_2
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result p0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result p0

    :goto_0
    return p0

    :cond_4
    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->getValue()I

    move-result p0

    return p0
.end method

.method public getSearchEditTextView()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    return-object p0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    return-object p0
.end method

.method public getSitesSearchItems(Landroid/app/Activity;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSmartSearchSupported:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isBookmarksInsertedSecret()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isSavedPageInsertedSecret()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isBookmarksInsertedNormal()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getIsHistoryInserted()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isSavedPageInsertedNormal()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getSitesSearchDataMap()Ljava/util/LinkedHashMap;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->addDataInSitesSearchMap(Ljava/util/LinkedHashMap;)V

    :cond_6
    return-void

    :cond_7
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    :cond_8
    return-void
.end method

.method public hideSearchView()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setKeyBoardInputModeToAdjustResize()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSitesSearchViewVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->updateInformativeAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mProcessSearchDataHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mRunProcessSearchData:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mHidingKeyboardHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mHidingKeyboardHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mHidingKeyboardHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/SitesSearch$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$11;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isSitesSearchViewVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSitesSearchViewVisible:Z

    return p0
.end method

.method public onChange(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->isSitesSearchViewVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChange received in SitesActivity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SitesSearch"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/SitesSearch$13;->$SwitchMap$com$sec$android$app$sbrowser$sites$common$search$SitesSearchHandler$MESSAGES:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->isShowingActionMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->exitSearchActionMode()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->processSearchData(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSelectedSitesPage()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->setOrder(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    :pswitch_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSitesSearchViewVisible:Z

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onChange :: HIDE msg.obj = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->exitSearchActionMode()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->onBackPressed()Z

    goto/16 :goto_1

    :pswitch_3
    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->getSitesSearchDeleteStatus()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->getSitesSearchDeleteStatus()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSearchData()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchText:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->processSearchData(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/4 v0, 0x5

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result p1

    if-le p1, v1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->isShowingActionMode()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->exitSearchActionMode()V

    :cond_7
    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result p1

    if-le p1, v1, :cond_8

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v0, 0x19

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSitesSearchData()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->isShowingActionMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->exitSearchActionMode()V

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mProcessSearchDataHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mRunProcessSearchData:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getSitesSearchDataMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getSitesSearchDataMap()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_2
    return-void
.end method

.method public onVoiceSearchResult(Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

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

    move-result-object v2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getCurrentTab()I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;-><init>(Ljava/lang/String;JII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V

    return-void
.end method

.method public selectAllSearchDelete(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSearchData()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSelectedSitesPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->setOrder(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSelectedSitesPage()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setOrder(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->mIsIndexing:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "SitesSearch"

    const-string v1, "Setting search Data in SitesActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSitesPage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSitesPage()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->orderData()V

    return-void
.end method

.method public setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSmartSearchSupported:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$13;->$SwitchMap$com$sec$android$app$sbrowser$common$model$sites$SitesSearchItem$TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->removeAll(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setHistoryPageInserted(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->removeAll(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setSavedPageInsertedNormal(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setSavedPageInsertedSecret(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->removeAll(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setBookmarksInsertedNormal(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->setBookmarksInsertedSecret(Z)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->clearLists()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setSearchEditText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSitesSearchData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchBase:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSearchData()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->processSearchData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSitesSearchDeleteStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSitesSearchDeleteStatus:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showKeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mShowingKeyboardHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mShowingKeyboardHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mShowingKeyboardHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mKeyBoardShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSearchView(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast v0, Lm/n;

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSitesSearchViewVisible:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mOrientation:I

    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, v1, :cond_a

    :cond_0
    invoke-virtual {v0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mOrientation:I

    const p2, 0x7f0b0b67

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mImgViewClear:Landroid/widget/ImageButton;

    const p2, 0x7f0b0b85

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08042d

    goto :goto_0

    :cond_1
    const v1, 0x7f0807c1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0b0b7d

    invoke-virtual {p2, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    const p2, 0x7f0b0b6e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    const p2, 0x7f0b0491

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const p2, 0x7f0b04fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mFakeHintText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->setHighlightTextColor(Landroid/widget/EditText;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/SitesSearch$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$2;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mBackButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    const v1, 0x7f060be9

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mImgViewClear:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    const v3, 0x7f060be1

    invoke-virtual {p2, v3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mFakeHintText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    const v3, 0x7f060bf2

    invoke-virtual {p2, v3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/SitesSearch$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$3;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/SitesSearch$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$4;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSearchEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->isVoiceSearchAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mMicBtn:Landroid/widget/ImageButton;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/SitesSearch$5;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$5;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mImgViewClear:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mImgViewClear:Landroid/widget/ImageButton;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object p1

    invoke-virtual {p1}, Lm/b;->o()V

    :cond_9
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mIsSitesSearchViewVisible:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->mSites:Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->updateInformativeAppBarInfo()V

    :cond_a
    return-void
.end method
