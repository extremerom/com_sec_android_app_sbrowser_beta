.class Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const/16 p2, 0x3d

    if-eq p1, p2, :cond_3

    const p2, 0x2000003d

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->u(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->v(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->u(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->focusOutFromFindOnPage()V

    :cond_1
    return v1

    :cond_2
    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->p(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_3
    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->v(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->v(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->r(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->r(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->u(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->u(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->focusOutFromFindOnPage()V

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
