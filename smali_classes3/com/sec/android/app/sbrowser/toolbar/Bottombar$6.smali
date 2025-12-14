.class Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p3

    or-int/2addr p2, p3

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->h(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x16

    const/16 v4, 0x15

    const v5, 0x2000003d

    const/16 v6, 0x3d

    const/16 v7, 0x13

    if-ne v0, v2, :cond_5

    if-eq p2, v7, :cond_4

    if-eq p2, v6, :cond_3

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_3

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutLeft()V

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutRight()V

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutTop()Z

    move-result p0

    return p0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->h(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isFirstEnabledButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eq p2, v7, :cond_7

    if-eq p2, v4, :cond_6

    if-eq p2, v5, :cond_7

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutLeft()V

    return v2

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutTop()Z

    move-result p0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->h(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isLastEnabledButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eq p2, v7, :cond_a

    if-eq p2, v3, :cond_9

    if-eq p2, v6, :cond_9

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutRight()V

    return v2

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->m(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInfoBarPresent()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutTop()Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    if-eq p2, v7, :cond_c

    goto :goto_0

    :cond_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->j(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutTop()Z

    move-result p0

    return p0

    :cond_d
    :goto_0
    return v1
.end method
