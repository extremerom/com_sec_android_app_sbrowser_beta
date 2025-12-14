.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->b(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig$2;->a(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig$1;->a(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
