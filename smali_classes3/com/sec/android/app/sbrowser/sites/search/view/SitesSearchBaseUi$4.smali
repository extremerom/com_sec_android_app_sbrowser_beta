.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->C(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->x(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->deleteSearchKeywordItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14043c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->X(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->G(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->x(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setDisplayList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->G(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->x(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->H(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->I(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0b0b6d

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
