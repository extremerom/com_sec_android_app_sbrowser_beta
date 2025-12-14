.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;
.implements Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabCloseClickHandler;
.implements Lcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method public onCloseClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onFinishCustomTab()V

    return-void
.end method

.method public run(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->d(Lcom/sec/android/app/sbrowser/customtabs/ClientManager;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->e(Ljava/lang/String;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public run(LH/y;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;)V

    return-void
.end method

.method public run(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/Terrace;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->a(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    return-void
.end method
