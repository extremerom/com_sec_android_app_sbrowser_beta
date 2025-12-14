.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->g(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->e(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->f(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/DialogInterface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
