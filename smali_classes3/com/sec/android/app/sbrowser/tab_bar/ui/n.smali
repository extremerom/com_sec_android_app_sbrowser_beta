.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/n;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/n;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/n;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/n;->b:Landroid/view/ViewGroup;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
