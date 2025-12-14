.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->showBottomBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$9;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$9;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->j(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$9;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
