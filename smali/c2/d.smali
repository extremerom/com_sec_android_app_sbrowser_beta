.class public final Lc2/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/List;

.field public static final c:Landroid/content/IntentFilter;


# instance fields
.field public final a:LB0/E;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc2/d;->b:Ljava/util/List;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sput-object v1, Lc2/d;->c:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(LB0/E;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lc2/d;->a:LB0/E;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/PowerManager;

    sget-object v1, Lc2/a;->a:Lc2/a;

    invoke-virtual {v1, p1}, Lc2/a;->a(Landroid/os/PowerManager;)Z

    move-result v1

    const/16 v2, 0x21

    if-lt v0, v2, :cond_2

    if-nez v1, :cond_1

    sget-object v0, Lc2/b;->a:Lc2/b;

    invoke-virtual {v0, p1}, Lc2/b;->a(Landroid/os/PowerManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v1, p1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lc2/d;->a:LB0/E;

    invoke-virtual {p0}, LB0/E;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc2/d;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lc2/d;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
