.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const p2, 0x2000003d

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->focusOutBottom(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->focusOutTop(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z

    move-result p0

    return p0

    :cond_1
    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->d(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->focusLastTabButton()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
