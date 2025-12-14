.class public final Lcom/google/ar/core/d;
.super Lcom/google/ar/core/dependencies/i;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:LN3/g;


# direct methods
.method public constructor <init>(LN3/g;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/ar/core/d;->b:LN3/g;

    invoke-direct {p0}, Lcom/google/ar/core/dependencies/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Lcom/google/ar/core/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "error.code"

    const/16 v1, -0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "install.status"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    iget-object p0, p0, Lcom/google/ar/core/d;->b:LN3/g;

    if-ne v1, v2, :cond_1

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    sget-object p1, Lcom/google/ar/core/F;->c:Lcom/google/ar/core/F;

    invoke-virtual {p0, p1}, LS3/F;->b(Lcom/google/ar/core/F;)V

    return-void

    :cond_1
    const-string v2, "ARCore-InstallService"

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x28

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "requestInstall = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", launching fullscreen."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, LN3/g;->d:Ljava/lang/Object;

    iget-object p1, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/ar/core/InstallActivity;

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    invoke-static {p1, p0}, Lcom/google/ar/core/G;->e(Lcom/google/ar/core/InstallActivity;LS3/F;)V

    return-void

    :cond_2
    const-string v0, "resolution.intent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast v1, LS3/F;

    iget-object p0, p0, LN3/g;->b:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/google/ar/core/InstallActivity;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v6, v3, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x4d2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Installation Intent failed"

    invoke-direct {p1, v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p1}, LS3/F;->c(Lcom/google/ar/core/exceptions/FatalException;)V

    goto :goto_0

    :cond_3
    const-string p0, "Did not get pending intent."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string p1, "Installation intent failed to unparcel."

    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, LS3/F;->c(Lcom/google/ar/core/exceptions/FatalException;)V

    :goto_0
    return-void

    :cond_4
    const/16 p1, 0xa

    if-eq v1, p1, :cond_5

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const/16 v0, 0x1b

    const-string v2, "Unexpected install status: "

    invoke-static {v0, v1, v2}, Lcom/google/ar/core/A;->a(BILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    invoke-virtual {p0, p1}, LS3/F;->c(Lcom/google/ar/core/exceptions/FatalException;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    sget-object p1, Lcom/google/ar/core/F;->b:Lcom/google/ar/core/F;

    invoke-virtual {p0, p1}, LS3/F;->b(Lcom/google/ar/core/F;)V

    return-void

    :pswitch_1
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unexpected FAILED install status without error."

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    invoke-virtual {p0, p1}, LS3/F;->c(Lcom/google/ar/core/exceptions/FatalException;)V

    return-void

    :pswitch_2
    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    sget-object p1, Lcom/google/ar/core/F;->c:Lcom/google/ar/core/F;

    invoke-virtual {p0, p1}, LS3/F;->b(Lcom/google/ar/core/F;)V

    return-void

    :pswitch_3
    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    sget-object p1, Lcom/google/ar/core/F;->a:Lcom/google/ar/core/F;

    invoke-virtual {p0, p1}, LS3/F;->b(Lcom/google/ar/core/F;)V

    return-void

    :cond_5
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unexpected REQUIRES_UI_INTENT install status without an intent."

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    invoke-virtual {p0, p1}, LS3/F;->c(Lcom/google/ar/core/exceptions/FatalException;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
