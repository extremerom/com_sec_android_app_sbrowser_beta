.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;

.field public final synthetic c:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/MotionEvent;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;->b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;->c:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;->b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;->c:Landroid/view/MotionEvent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->b(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/MotionEvent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;->b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;->c:Landroid/view/MotionEvent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/MotionEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
