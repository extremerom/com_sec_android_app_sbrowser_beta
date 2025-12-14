.class public Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;
.super Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;


# instance fields
.field mAdapterListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;

    return-void
.end method

.method private checkEngineIsAlreadyInList(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "yahoo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_0
    const-string v3, "bing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private displayAvailableEngineList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListSize:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->resetCheckBoxStates()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->addListItemsDecoration()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setmCheckStates([Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->setSeslOnMultiSelectedListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;->setSeslLongPressMultiSelectionListener()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c42

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "562"

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;->saveAddedItemAndExit()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->registerLocaleReceiver()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p2, 0x7f0e000e

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b06a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getAddSearchEngineList()[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-ge p3, v0, :cond_2

    aget-object v2, p2, p3

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;->checkEngineIsAlreadyInList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Search engine is exists skip it"

    const-string v4, "AddSearchEngineFragment"

    invoke-static {v3, v2, v4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->getSearchEngineLabelByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->getSearchEngineFaviconByName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;

    invoke-direct {v5, v2, v3, v4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;->displayAvailableEngineList(Ljava/util/List;)V

    return-object p1
.end method

.method public onMultiSelectStopInternal(II)V
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v1, v0, p1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNavigateUpClicked()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;->saveAddedItemAndExit()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onNavigateUpClicked()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f14092b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public saveAddedItemAndExit()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mListSize:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getNameByPosition(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, ""

    const-string v6, "customized_search_engine_list"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "saved_engine_status"

    if-eqz v1, :cond_2

    const-string v1, "ALL_ADDED"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    const-string v1, "NEUTRAL"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method public setSeslLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$3;-><init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method
