.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private final mCategoryPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedTabCategoriesSettingViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mCategoryPreferences:Ljava/util/Map;

    return-void
.end method

.method private createSwitchPreferenceList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedTabCategoriesSettingViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedTabCategoriesSettingViewModel;->getDataFromPreference(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->createSwitchPreferences()V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->setListViewVisible(Z)V

    return-void
.end method

.method private createSwitchPreferences()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mCategoryPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "newsfeed_tab_category_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "order"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v3, Lr/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    const v6, 0x7f1502d6

    invoke-direct {v3, v5, v6}, Lr/d;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-direct {v5, v3}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f14039e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    const-string v6, "category_"

    invoke-static {v6, v5}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->getSwitchPreferenceCustom(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mCategoryPreferences:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->setCategoryPreferenceEnabled(Z)V

    return-void
.end method

.method private createViewModel()V
    .locals 2

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedTabCategoriesSettingViewModel;

    invoke-virtual {v0, v1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedTabCategoriesSettingViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedTabCategoriesSettingViewModel;

    return-void
.end method

.method private getCategoriesTitleTextFromPreferenceKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "category_"

    const-string v0, ""

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedViewUtil;->getCategoriesTitleText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSwitchPreferenceCustom(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tabCategoryKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsFeedTabCategoriesSettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lr/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1502d6

    invoke-direct {v0, v1, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->getCategoriesTitleTextFromPreferenceKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    return-object v1
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->lambda$getSwitchPreferenceCustom$0(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSwitchPreferenceCustom$0(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setCategoryPreferenceEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mCategoryPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f1407f8

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setListViewVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mCategoryPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "newsfeed_tab_category_preference"

    invoke-virtual {p1, v0}, Lw2/F;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->createViewModel()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw2/F;->a(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->mCategoryPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    xor-int/2addr p2, p0

    invoke-virtual {p1, p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-string v0, "News Categories"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;->createSwitchPreferenceList()V

    return-void
.end method
