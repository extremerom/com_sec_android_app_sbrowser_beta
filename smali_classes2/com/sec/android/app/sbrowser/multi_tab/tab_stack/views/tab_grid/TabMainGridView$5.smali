.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->startCheckBoxAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->D(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->D(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->D(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->D(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->D(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->F(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
