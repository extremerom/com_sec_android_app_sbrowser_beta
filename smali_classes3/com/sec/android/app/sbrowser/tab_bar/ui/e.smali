.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/e;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/e;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onScrollButtonTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
