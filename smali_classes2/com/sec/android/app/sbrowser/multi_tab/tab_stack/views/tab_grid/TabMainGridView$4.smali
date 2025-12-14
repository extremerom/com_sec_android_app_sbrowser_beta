.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->animateChildren(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$dummy:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;->val$dummy:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->access$700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isSelectMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;->val$dummy:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;->val$child:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->access$800(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->exitSelectMode()V

    :cond_0
    return-void
.end method
