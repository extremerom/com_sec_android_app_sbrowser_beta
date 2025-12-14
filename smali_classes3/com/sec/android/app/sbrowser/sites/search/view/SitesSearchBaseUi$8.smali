.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickDeleteAllSearchKeyword()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->H(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->I(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b0b6d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onKeyDpadDown()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->requestFocusAndSetSelection(I)V

    return-void
.end method
