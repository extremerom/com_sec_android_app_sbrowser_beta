.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->animateChildren(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

.field final synthetic val$checkBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$intoEditMode:Z

.field final synthetic val$isLast:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;ZLcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->val$intoEditMode:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->val$checkBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->val$child:Landroid/view/View;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->val$isLast:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->val$intoEditMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->val$checkBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->val$child:Landroid/view/View;

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->L(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;ZLcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->val$isLast:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->I(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V

    :cond_0
    return-void
.end method
