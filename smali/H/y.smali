.class public final LH/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc/b;

.field public final b:Landroid/app/PendingIntent;

.field public final c:LH/x;


# direct methods
.method public constructor <init>(Lc/b;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CustomTabsSessionToken must have either a session id or a callback (or both)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, LH/y;->a:Lc/b;

    iput-object p2, p0, LH/y;->b:Landroid/app/PendingIntent;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    new-instance p1, LH/x;

    invoke-direct {p1, p0}, LH/x;-><init>(LH/y;)V

    :goto_1
    iput-object p1, p0, LH/y;->c:LH/x;

    return-void
.end method

.method public static a(Landroid/content/Intent;)LH/y;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object v1

    :goto_0
    new-instance v0, LH/y;

    invoke-direct {v0, v1, p0}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, LH/y;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LH/y;

    iget-object v0, p1, LH/y;->b:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    iget-object v3, p0, LH/y;->b:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eq v4, v2, :cond_3

    return v1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "CustomTabSessionToken must have valid binder or pending session"

    iget-object p0, p0, LH/y;->a:Lc/b;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    iget-object p1, p1, LH/y;->a:Lc/b;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LH/y;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LH/y;->a:Lc/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CustomTabSessionToken must have valid binder or pending session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
