.class public Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

.field mAdapterListener:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mContainer:Landroid/widget/LinearLayout;

.field public mIsSecretMode:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/WebsiteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mNoItemBackground:Landroid/widget/LinearLayout;

.field private mNoItemText:Landroid/widget/TextView;

.field private mOffsetChangeListener:Lc6/e;

.field private mPermissionDesc:Landroid/widget/TextView;

.field private mPermissionDescLayout:Landroid/widget/LinearLayout;

.field private mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

.field private mPermissionType:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWebSiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field

.field private mWebsiteInfoFetcher:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

.field private mWebsiteInfoPopulator:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionType:I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mOffsetChangeListener:Lc6/e;

    return-void
.end method

.method private addListItemsDecoration()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->lambda$onCreateView$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic j(ILandroid/view/View;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->lambda$new$0(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;I)Z
    .locals 0

    const p1, 0x7f0b0873

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreateView$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->sendSALogging(Z)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionType:I

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->setContentSettingEnabled(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->setSwitchStateChanged()V

    return-void
.end method

.method private showList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mWebSiteList:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mNoItemBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionDescLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionDescLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mNoItemBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private showNoItemLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mNoItemBackground:Landroid/widget/LinearLayout;

    const v1, 0x7f0b07e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mNoItemText:Landroid/widget/TextView;

    const v1, 0x7f1502ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mNoItemText:Landroid/widget/TextView;

    const v0, 0x7f140dfb

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mNoItemText:Landroid/widget/TextView;

    const v0, 0x7f140807

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayWebsiteList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f140a18

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;->getTitle()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    iget v5, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionType:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mList:Ljava/util/List;

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->setSwitchStateChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mWebSiteList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mWebSiteList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getAddress()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "PermissionBaseFragment"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionDescLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->addListItemsDecoration()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionDescLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mNoItemBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->showNoItemLayout()V

    :goto_1
    return-void
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "567"

    return-object p0
.end method

.method public getWebsiteInfoFetcher()Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mWebsiteInfoFetcher:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    return-object p0
.end method

.method public hideMainSwitch()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;->getType()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionType:I

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mWebsiteInfoPopulator:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mWebsiteInfoFetcher:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mIsSecretMode:Z

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0e0563

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    const p2, 0x7f0b06c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/f;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/sec/android/app/sbrowser/settings/f;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0b08aa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b0815

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mNoItemBackground:Landroid/widget/LinearLayout;

    const p2, 0x7f0b00d0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b03e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionDescLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0d3b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionDesc:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;->getTitle()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionDesc:Landroid/widget/TextView;

    const v0, 0x7f140a18

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;->fetchPermission()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mWebSiteList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->displayWebsiteList(Ljava/util/List;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public sendSALogging(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const v0, 0x7f140c14

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f140c16

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f140c15

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_4

    const-string p1, "On"

    goto :goto_1

    :cond_4
    const-string p1, "Off"

    :goto_1
    const-string v2, "det"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cat"

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140ccf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDescription(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionDesc:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionListener:Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment$PermissionListenerInterface;

    return-void
.end method

.method public setSwitchStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mPermissionType:I

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->isContentSettingEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->setSwitchStatus(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->showList()V

    return-void
.end method

.method public websiteListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->mWebSiteList:Ljava/util/List;

    return-void
.end method
