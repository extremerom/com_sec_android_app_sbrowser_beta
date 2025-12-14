.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/W0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateFastScrollerStatus(Landroidx/recyclerview/widget/RecyclerView;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPressed(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$4;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->f(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchEditTextView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public onReleased(F)V
    .locals 0

    return-void
.end method
