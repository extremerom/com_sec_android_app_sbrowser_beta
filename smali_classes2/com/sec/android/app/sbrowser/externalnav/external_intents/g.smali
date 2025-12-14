.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->c:Landroid/content/Intent;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->d:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->d:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->c:Landroid/content/Intent;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->d(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->d:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;->c:Landroid/content/Intent;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->m(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
