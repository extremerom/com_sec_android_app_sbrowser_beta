.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/f;->b:Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/f;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/f;->b:Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->a(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->i(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
