.class public final synthetic Lcom/sec/android/app/sbrowser/search_window/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/d;->b:Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/d;->b:Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->o(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Ljava/lang/Integer;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->i(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->m(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Ljava/lang/Integer;)V

    return-void

    :pswitch_2
    check-cast p1, Landroidx/lifecycle/J;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->n(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Landroidx/lifecycle/J;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
