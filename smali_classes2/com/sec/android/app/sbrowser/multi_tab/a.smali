.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->h(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->n(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->finishMultiTab()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->i(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
