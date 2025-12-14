.class public final synthetic Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/view/View;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->g(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/view/View;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;->h(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;Landroid/view/View;)V

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
