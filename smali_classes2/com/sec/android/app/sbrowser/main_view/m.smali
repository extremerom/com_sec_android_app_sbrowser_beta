.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/m;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/m;->b:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/m;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->b:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->c:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->a(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->b:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->c:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->h(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->b:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->c:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->c(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->b:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->c:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->k(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->b:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/m;->c:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->g(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;)V

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
