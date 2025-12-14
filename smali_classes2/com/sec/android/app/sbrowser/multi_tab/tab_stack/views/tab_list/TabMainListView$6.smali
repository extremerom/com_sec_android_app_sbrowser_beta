.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$6;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->hideCheckBoxAnim(Landroid/widget/CheckBox;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$6;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$6;->val$checkBox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->G(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$6;->val$checkBox:Landroid/widget/CheckBox;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
