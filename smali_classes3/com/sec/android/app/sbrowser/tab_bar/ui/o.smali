.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/o;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/o;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/o;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/o;->b:Landroid/view/ViewGroup;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->b(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->f(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
