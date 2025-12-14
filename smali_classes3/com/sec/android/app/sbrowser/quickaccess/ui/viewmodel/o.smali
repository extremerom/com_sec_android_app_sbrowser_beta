.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Ljava/util/List;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->g(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Ljava/util/List;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Ljava/util/List;)V

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
