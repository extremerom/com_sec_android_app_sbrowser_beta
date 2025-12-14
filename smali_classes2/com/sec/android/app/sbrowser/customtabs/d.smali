.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;
.implements Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->b()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method public run(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/d;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getCustomTabsCallback()LH/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public run(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->f(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    return-void
.end method
