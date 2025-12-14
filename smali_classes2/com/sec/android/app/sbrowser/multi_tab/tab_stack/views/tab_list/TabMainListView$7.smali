.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->startCheckBoxAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

.field final synthetic val$showAnimation:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;->val$showAnimation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    check-cast v3, Landroid/view/ViewGroup;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;->val$showAnimation:Z

    invoke-static {v4, v3, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->J(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Landroid/view/ViewGroup;Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
