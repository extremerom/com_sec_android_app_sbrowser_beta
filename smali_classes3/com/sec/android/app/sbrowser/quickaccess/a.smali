.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->d(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->j(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->k(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->f(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->l(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Ljava/lang/Integer;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->g(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->i(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onQuickAccessListUpdated(Ljava/util/List;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->e(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
