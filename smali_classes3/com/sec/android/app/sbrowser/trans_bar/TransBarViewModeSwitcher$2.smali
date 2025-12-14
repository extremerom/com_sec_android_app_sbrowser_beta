.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->setupSwitcher(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

.field final synthetic val$closeView:Landroid/view/View;

.field final synthetic val$moreView:Landroid/view/View;

.field final synthetic val$rootTargetView:Landroid/view/View;

.field final synthetic val$rootView:Landroid/view/View;

.field final synthetic val$splitView:Landroid/view/View;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translateView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$rootView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$rootTargetView:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$targetView:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$translateView:Landroid/view/View;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$splitView:Landroid/view/View;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$moreView:Landroid/view/View;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$closeView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$rootTargetView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$targetView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$translateView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$splitView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$moreView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->val$closeView:Landroid/view/View;

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->onCollapse(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->sendEventLog(Z)V

    return-void
.end method
