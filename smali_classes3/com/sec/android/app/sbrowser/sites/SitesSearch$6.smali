.class Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/SitesSearch;->showSearchView(Landroid/view/View;Z)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->stopScrollOnClear()V

    :cond_0
    const-string p1, "313"

    const-string v0, "3124"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->p(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$6;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->showKeyboard()V

    return-void
.end method
