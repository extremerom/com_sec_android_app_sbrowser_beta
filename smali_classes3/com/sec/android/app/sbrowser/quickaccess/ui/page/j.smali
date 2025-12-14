.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/j;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/j;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/j;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/j;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->j(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
