.class Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showBottomBar()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarAnimationEnd()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarMarginView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
