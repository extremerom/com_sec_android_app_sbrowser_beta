.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setupSwitcher(Landroid/view/View;Landroid/view/View;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

.field final synthetic val$isTransBarEnabled:Z

.field final synthetic val$rootView:Landroid/view/View;

.field final synthetic val$translateButtonFrameLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->val$isTransBarEnabled:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->val$rootView:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->val$translateButtonFrameLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->val$isTransBarEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onCheckLangOnNeverTranslateList()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onCheckSiteOnNeverTranslateList()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->sendEventLog()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onToggleSplitMode(ZZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->val$rootView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;->val$translateButtonFrameLayout:Landroid/view/View;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;)Z

    move-result v1

    invoke-virtual {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    :cond_3
    :goto_0
    return-void
.end method
