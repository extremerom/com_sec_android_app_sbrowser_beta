.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->c(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->n(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
