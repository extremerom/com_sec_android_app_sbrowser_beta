.class public final synthetic Lcom/sec/android/app/sbrowser/settings/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/p;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/p;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/p;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->b(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->h(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->i(Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
