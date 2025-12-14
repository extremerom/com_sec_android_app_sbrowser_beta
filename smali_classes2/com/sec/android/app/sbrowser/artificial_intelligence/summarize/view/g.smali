.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/g;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->k(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
