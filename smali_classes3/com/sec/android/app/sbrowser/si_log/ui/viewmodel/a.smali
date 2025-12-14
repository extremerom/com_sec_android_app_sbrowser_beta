.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;->b:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;->b:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->d(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->g(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->e(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->h(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->b(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->c(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;

    move-result-object p0

    return-object p0

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
