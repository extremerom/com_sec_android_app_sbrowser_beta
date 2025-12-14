.class Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x3d

    const v0, 0x7f0b0cd1

    const v2, 0x7f0b0ccd

    const v3, 0x7f0b080a

    if-eq p2, p3, :cond_9

    const p3, 0x2000003d

    if-eq p2, p3, :cond_5

    const/4 p3, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->k(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getSecretButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->m(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_4
    return p3

    :cond_5
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->m(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->k(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getSecretButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->k(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getNewTabButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_9
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_b

    if-eq p1, v0, :cond_a

    :goto_0
    return v1

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->k(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getNewTabButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_b
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->m(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->k(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getSecretButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
