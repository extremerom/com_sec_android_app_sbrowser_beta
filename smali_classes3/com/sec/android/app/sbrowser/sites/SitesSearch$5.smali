.class Lcom/sec/android/app/sbrowser/sites/SitesSearch$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$5;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x14

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$5;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->requestFocus()Z

    return v0

    :cond_0
    const/16 p1, 0x3d

    if-ne p2, p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$5;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;->requestFocus()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$5;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->b(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
