.class public interface abstract Lcom/sec/android/app/sbrowser/sites/SitesDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentTab()I
.end method

.method public abstract getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;
.end method

.method public abstract getSelectedSitesPage()I
.end method

.method public abstract getSitesPage()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/SitesPage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract setHighlightTextColor(Landroid/widget/EditText;)V
.end method

.method public abstract updateInformativeAppBarInfo()V
.end method
