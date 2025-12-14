.class public Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

.field mAdapterListener:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;

.field private mNoticeListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;)Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    return-object p0
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140cb5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "550"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isPrivacyNoticeHistoryVisited()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->recordPrivacyNoticeHistoryVisit()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0e0528

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b06a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mNoticeListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mNoticeListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/notice/NoticeListData;->getList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mNoticeListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mNoticeListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140a1b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
