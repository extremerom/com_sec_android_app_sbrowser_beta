.class public final La5/i;
.super LC5/a;
.source "SourceFile"


# instance fields
.field public final b:Landroid/content/Context;

.field public final synthetic c:La5/b;


# direct methods
.method public constructor <init>(La5/b;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, La5/i;->c:La5/b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, LC5/a;-><init>(Landroid/os/Looper;I)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, La5/i;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p0, "Don\'t know how to handle this message: "

    const-string v0, "GoogleApiAvailability"

    invoke-static {p1, p0, v0}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget p1, La5/c;->a:I

    iget-object v1, p0, La5/i;->c:La5/b;

    iget-object p0, p0, La5/i;->b:Landroid/content/Context;

    invoke-virtual {v1, p1, p0}, La5/c;->b(ILandroid/content/Context;)I

    move-result p1

    sget v2, La5/f;->e:I

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_1

    move v0, v2

    :cond_1
    if-eqz v0, :cond_3

    const-string v0, "n"

    invoke-virtual {v1, p0, p1, v0}, La5/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/high16 v3, 0xc000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p0, p1, v0}, La5/b;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    :cond_3
    return-void
.end method
