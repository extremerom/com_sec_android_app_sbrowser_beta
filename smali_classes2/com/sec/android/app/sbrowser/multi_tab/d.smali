.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/d;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/d;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->h(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
