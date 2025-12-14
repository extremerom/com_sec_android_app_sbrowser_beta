.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/d;->b:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/d;->b:Landroid/app/Application;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->g(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->f(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->b(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
