.class public final synthetic Lcom/sec/android/app/sbrowser/search_window/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/u;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/b;->b:Landroidx/fragment/app/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/b;->b:Landroidx/fragment/app/u;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->k(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->l(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
