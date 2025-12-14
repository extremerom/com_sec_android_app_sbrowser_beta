.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->handleNoItemViewHeight(ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

.field final synthetic val$noRecentItemView:Landroid/view/View;

.field final synthetic val$noRecentParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;->val$noRecentItemView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;->val$noRecentParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;->val$noRecentItemView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;->val$noRecentParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;->val$noRecentItemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
