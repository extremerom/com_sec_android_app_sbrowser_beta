.class public Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideFallBackText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->hideFallBackText()V

    return-void
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onDestroyView()V

    return-void
.end method

.method public onLanguageChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onLanguageChanged()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public resetKeywordAdapter()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->resetKeywordAdapter()V

    return-void
.end method

.method public setSearchView(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    return-void
.end method

.method public settingSearchKeywordVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->settingSearchKeywordVisibility(I)V

    return-void
.end method

.method public settingSearchListParentVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->settingSearchListParentVisibility(I)V

    return-void
.end method

.method public showFallBackText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->showFallBackText()V

    return-void
.end method

.method public showSearchKeywordListView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->showSearchKeywordListView()V

    return-void
.end method

.method public updateLayoutIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->updateLayoutIfNeeded()V

    return-void
.end method

.method public updateSearchResultList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->mSettingSearchView:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->updateSearchResultList()V

    return-void
.end method
