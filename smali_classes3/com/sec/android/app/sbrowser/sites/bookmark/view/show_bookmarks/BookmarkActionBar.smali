.class public Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;
    }
.end annotation


# instance fields
.field private mActionbarAnimRunning:Z

.field private mActivity:Landroid/app/Activity;

.field private mBookmarkActionBarView:Landroid/view/View;

.field private mCancelButton:Landroid/view/View;

.field private mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSitesAllText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->lambda$configureAndShowSelectModeView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->lambda$configureAndShowSelectModeView$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->lambda$configureAndShowSelectModeView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->lambda$configureAndShowSelectModeView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->lambda$configureAndShowSelectModeView$1()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActionbarAnimRunning:Z

    return-void
.end method

.method private getCheckedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140289

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14028a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSelectedString(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12005f

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f140801

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f140655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getCheckedText()Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v0, p0, v1, p1}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$configureAndShowSelectModeView$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;->onCancelButtonClicked()V

    return-void
.end method

.method private synthetic lambda$configureAndShowSelectModeView$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$configureAndShowSelectModeView$2(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;->onSelectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;->getSelectedObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/b;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$configureAndShowSelectModeView$3()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;->onSelectAll(Z)V

    return-void
.end method

.method private synthetic lambda$configureAndShowSelectModeView$4(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "3029"

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;->getSelectedObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/b;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectAllCheckBoxTTSBuilder(Ljava/lang/String;)V
    .locals 4

    const-string v0, "[0-9]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f141084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    const v0, 0x7f141085

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getCheckedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    const v3, 0x7f140f90

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140b8f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAppBarTitle()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    :cond_0
    return-void
.end method


# virtual methods
.method public configureAndShowSelectModeView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mBookmarkActionBarView:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mBookmarkActionBarView:Landroid/view/View;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mBookmarkActionBarView:Landroid/view/View;

    const v1, 0x7f0b0b65

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSitesAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mBookmarkActionBarView:Landroid/view/View;

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mCancelButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/a;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mCancelButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1402c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/a;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;->refreshActionBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mBookmarkActionBarView:Landroid/view/View;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mBookmarkActionBarView:Landroid/view/View;

    const v1, 0x7f0b0af9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060bed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    const v3, 0x7f06013a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSitesAllText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/a;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/a;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;->setTitle()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060e10

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->displaySelectModeUI(Z)V

    return-void
.end method

.method public displaySelectModeUI(Z)V
    .locals 3

    const-string v0, "displaySelectModeUI show="

    const-string v1, "BookmarkActionBar"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setIsInActionMode(Z)V

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->q(Z)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    invoke-virtual {v0, p1}, Lm/b;->p(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0}, Lm/b;->u()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mBookmarkActionBarView:Landroid/view/View;

    invoke-virtual {v0, p1}, Lm/b;->l(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lm/b;->l(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public getAppBarActionModeTitle(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    const p1, 0x7f14021e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    const v0, 0x7f14021d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSelectAllCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getSelectAllLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getSelectAllText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSitesAllText:Landroid/widget/TextView;

    return-object p0
.end method

.method public isActionbarAnimRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActionbarAnimRunning:Z

    return p0
.end method

.method public onDragAndDropEnd()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public onDragAndDropStarted(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public performCustomAction()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public refreshActionBar(IZIZLandroid/widget/LinearLayout;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p3, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    const/4 p1, 0x1

    xor-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p4, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p0, 0x8

    invoke-virtual {p5, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshBottombarLongPress(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setTitle(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f140f5b

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1405cf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->selectAllCheckBoxTTSBuilder(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->selectAllCheckBoxTTSBuilder(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->updateAppBarTitle()V

    return-void
.end method

.method public setTitleWithoutContentDescription(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mSelectAllText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f140f5b

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->updateAppBarTitle()V

    return-void
.end method

.method public showSelectAllCheckBoxAnimation(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f010037

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActionbarAnimRunning:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updateSelectAll(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->getSelectAllText()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->mActivity:Landroid/app/Activity;

    const v0, 0x7f060477

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
