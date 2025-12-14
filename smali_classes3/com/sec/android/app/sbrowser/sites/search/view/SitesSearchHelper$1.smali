.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/N0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->e(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget-object p2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lf1/w0;->a:Lf1/u0;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lf1/u0;->o(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->f(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchEditTextView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
