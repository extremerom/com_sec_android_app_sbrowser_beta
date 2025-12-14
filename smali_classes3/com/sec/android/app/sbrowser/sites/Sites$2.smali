.class Lcom/sec/android/app/sbrowser/sites/Sites$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/Sites;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/Sites;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/Sites;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->k(Lcom/sec/android/app/sbrowser/sites/Sites;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->m(Lcom/sec/android/app/sbrowser/sites/Sites;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->onCancelButtonClicked()V

    return-void
.end method

.method public onDeleteButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->l(Lcom/sec/android/app/sbrowser/sites/Sites;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->onDeleteButtonClicked()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->k(Lcom/sec/android/app/sbrowser/sites/Sites;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->m(Lcom/sec/android/app/sbrowser/sites/Sites;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->onDeleteButtonClicked()V

    :goto_0
    return-void
.end method

.method public onDialogDismissed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->k(Lcom/sec/android/app/sbrowser/sites/Sites;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->m(Lcom/sec/android/app/sbrowser/sites/Sites;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->m(Lcom/sec/android/app/sbrowser/sites/Sites;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/Sites;->k(Lcom/sec/android/app/sbrowser/sites/Sites;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->k(Lcom/sec/android/app/sbrowser/sites/Sites;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/Sites;->m(Lcom/sec/android/app/sbrowser/sites/Sites;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->k(Lcom/sec/android/app/sbrowser/sites/Sites;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$2;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->m(Lcom/sec/android/app/sbrowser/sites/Sites;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->onDialogDismissed()V

    :cond_1
    :goto_0
    return-void
.end method
