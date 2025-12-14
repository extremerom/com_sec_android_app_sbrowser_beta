.class Lcom/sec/android/app/sbrowser/sites/SitesSearch$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$10;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$10;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$10;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$10;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$10;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    :cond_1
    return-void
.end method
