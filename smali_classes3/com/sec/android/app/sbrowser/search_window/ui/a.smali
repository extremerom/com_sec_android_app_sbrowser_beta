.class public final synthetic Lcom/sec/android/app/sbrowser/search_window/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/a;->b:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/a;->b:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->o(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->k(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;Ljava/lang/Integer;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->m(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;Ljava/lang/Boolean;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->i(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;Ljava/lang/Boolean;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->p(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;Ljava/lang/Integer;)V

    return-void

    :pswitch_4
    check-cast p1, Landroidx/lifecycle/J;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->j(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;Landroidx/lifecycle/J;)V

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
