.class Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideSearchViewWithDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hideSearchView()V

    :cond_0
    return-void
.end method
