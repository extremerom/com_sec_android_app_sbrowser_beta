.class public Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mBookmarkBarContainerDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

.field private final mBookmarkBarDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

.field private final mBookmarkBarEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

.field private mBookmarkBarFolderController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

.field private final mBookmarkBarFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;

.field private final mBookmarkBarListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

.field private final mBookmarkBarMenuListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

.field private mBookmarkBarPopupMenu:Lt/x0;

.field private mBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private final mContext:Landroid/content/Context;

.field private mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

.field private mDeleteDialog:Lm/l;

.field private mDragController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

.field private mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

.field private mErrorText:Landroid/widget/TextView;

.field private mFolderParentId:J

.field private mLastAddBookmarkClickedTime:J

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mPositiveButton:Landroid/widget/Button;

.field private mRenameBuilder:Lm/k;

.field private mRenameDialog:Lm/l;

.field private mTextInputLayout:Landroid/widget/LinearLayout;

.field private mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/Toolbar;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarMenuListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$5;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarContainerDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$6;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->updateBookmarkDragController()V

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mLastAddBookmarkClickedTime:J

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mPositiveButton:Landroid/widget/Button;

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/k;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mRenameBuilder:Lm/k;

    return-void
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/l;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mRenameDialog:Lm/l;

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mTextInputLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->focusOnTab()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->updateBookmarkDragController()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->lambda$new$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarFolderController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarMenuListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lt/x0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarPopupMenu:Lt/x0;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    return-object p0
.end method

.method private focusOnTab()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDeleteDialog:Lm/l;

    return-object p0
.end method

.method private isBookmarkBarContainerShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isBookmarkBarContainerShowing()Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDragController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->ADD_TO_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const-string v1, "si__BookmarkBarHelper"

    if-ne p2, v0, :cond_0

    const-string p1, "onItemClicked, AddToBookmarkBar"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "5800"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addBookmarkBar()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->EDIT_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p2, v0, :cond_1

    const-string p1, "onItemClicked, EditBookmarkBar"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "5806"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    const/4 p1, 0x1

    const p2, 0x7f0b004f

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openSites(IZI)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "onItemClicked, currentTab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-interface {p2, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishEditMode()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mFolderParentId:J

    return-wide v0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mLastAddBookmarkClickedTime:J

    return-wide v0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mPositiveButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/k;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mRenameBuilder:Lm/k;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mRenameDialog:Lm/l;

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lt/x0;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarPopupMenu:Lt/x0;

    return-void
.end method

.method private updateBookmarkDragController()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDragController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDragController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->setDragController(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lm/l;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDeleteDialog:Lm/l;

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mErrorText:Landroid/widget/TextView;

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mFolderParentId:J

    return-void
.end method


# virtual methods
.method public applySecretModeStatus(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissBookmarkBarDialogs()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissBookmarkBarPopup()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->setBookmarkBarId(J)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyVisibilityChanged()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->isSecretModeEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarUtil;->sendStatusLogForBookmarkBarItemCount(Landroid/app/Activity;Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->createBookmarkBarFolderIfNeeded(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public applySecureDataUnlockedStatus()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarIdManager;->setBookmarkBarId(J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->refreshBookmarkBarDataSet()V

    :cond_0
    return-void
.end method

.method public dismissBookmarkBarDialogs()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->refreshBookmarkBarDataSet()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarFolderController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarFolderController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mRenameDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mRenameDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDeleteDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDeleteDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_1
    return-void
.end method

.method public dismissBookmarkBarPopup()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarFolderController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->dismissPopup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarPopupMenu:Lt/x0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/x0;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissCreateFolderDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    :cond_0
    return-void
.end method

.method public dismissDialogIfShowing()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mRenameDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mRenameDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDeleteDialog:Lm/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mDeleteDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_2
    return-void
.end method

.method public enableAddBookmarkButton(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->isBookmarkBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->enableAddBookmarkButton(Z)V

    :cond_0
    return-void
.end method

.method public getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public getBookmarkBarDelegate()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarContainerDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    return-object p0
.end method

.method public getBookmarkBarEmptyListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarEmptyListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    return-object p0
.end method

.method public getBookmarkBarListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    return-object p0
.end method

.method public handleMessage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mTextInputLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1403e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mErrorText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;->unRegisterPopup(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissBookmarkBarPopup()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissBookmarkBarDialogs()V

    return-void
.end method

.method public setBookmarkBarFolderController(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarMenuListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->mBookmarkBarFolderController:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    return-void
.end method
