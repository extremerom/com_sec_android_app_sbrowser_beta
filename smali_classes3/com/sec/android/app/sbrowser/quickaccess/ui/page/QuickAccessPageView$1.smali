.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->addOnGlobalLayoutListenerToCaptureBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)V

    :cond_0
    return-void
.end method
