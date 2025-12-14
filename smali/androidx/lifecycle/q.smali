.class public final synthetic Landroidx/lifecycle/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/lifecycle/q;->a:I

    iput-object p2, p0, Landroidx/lifecycle/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/lifecycle/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerView;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerView;->E(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerView;Ljava/util/List;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/lifecycle/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->b(Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/lifecycle/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;->i(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/lifecycle/q;->b:Ljava/lang/Object;

    check-cast p0, LPc/y;

    check-cast p0, LPc/x;

    invoke-virtual {p0, p1}, LPc/x;->k(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
