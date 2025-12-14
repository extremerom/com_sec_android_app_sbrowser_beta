.class Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/SitesSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->isShowingActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->f(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->m(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->isSearchDataFetchingStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->m(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->setSearchDataFetchingStatus(Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x15e

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->p(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->d(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->n(Lcom/sec/android/app/sbrowser/sites/SitesSearch;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->showSearchKeywordListView()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    const v0, 0x7f0b0b7d

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->o(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->g(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->g(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    const v0, 0x7f0b0b85

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->e(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->h(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->i(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->g(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->g(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->d(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->e(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object v0

    const v3, 0x7f0b0b67

    invoke-virtual {v0, v3}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->h(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->i(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->n(Lcom/sec/android/app/sbrowser/sites/SitesSearch;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->h(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$8;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->i(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
