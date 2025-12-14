.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

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

    const/16 p2, 0x3d

    if-eq p1, p2, :cond_2

    const p2, 0x2000003d

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->focusOutBottom(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->focusOutTop(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z

    move-result p0

    return p0

    :cond_1
    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->focusOutLeft(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z

    move-result p0

    return p0

    :cond_2
    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->focusOutRight(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
