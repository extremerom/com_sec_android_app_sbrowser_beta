.class public final synthetic Lcom/sec/android/app/sbrowser/settings/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/S;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/S;->b:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/S;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/S;->b:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->i(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->j(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->p(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->o(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->l(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
