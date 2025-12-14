.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    check-cast p1, Landroid/content/Intent;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->h(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->k(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
