.class public final LA7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB7/a;


# instance fields
.field public final a:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA7/g;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    return-void
.end method


# virtual methods
.method public final a()LR5/p;
    .locals 2

    iget-object p0, p0, LA7/g;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->c(Lp7/f;)V

    invoke-static {v0}, LA7/e;->c(Lp7/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->e(Ljava/lang/String;)LR5/p;

    move-result-object p0

    sget-object v0, LA7/f;->d:LA7/f;

    sget-object v1, LR5/j;->a:LH4/s;

    invoke-virtual {p0, v1, v0}, LR5/p;->g(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;

    move-result-object p0

    return-object p0
.end method
