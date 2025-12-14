.class public final Lcom/google/firebase/messaging/A;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public final a:LI3/d;


# direct methods
.method public constructor <init>(LI3/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/A;->a:LI3/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/messaging/B;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "service received new intent via bind strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/google/firebase/messaging/B;->a:Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/firebase/messaging/A;->a:LI3/d;

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/f;

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/f;->access$000(Lcom/google/firebase/messaging/f;Landroid/content/Intent;)LR5/h;

    move-result-object p0

    new-instance v0, LA2/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA2/f;-><init>(I)V

    new-instance v1, Lcom/google/firebase/messaging/z;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, LR5/h;->b(Ljava/util/concurrent/Executor;LR5/c;)LR5/p;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Binding only allowed within app"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
