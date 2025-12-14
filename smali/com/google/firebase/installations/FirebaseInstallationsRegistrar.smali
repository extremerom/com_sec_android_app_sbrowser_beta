.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LA7/c;)LD7/f;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/c;)LD7/f;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$getComponents$0(Lcom/google/firebase/components/c;)LD7/f;
    .locals 7

    new-instance v0, LD7/e;

    const-class v1, Lp7/f;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp7/f;

    const-class v2, Lz7/e;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/c;->g(Ljava/lang/Class;)LC7/a;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/components/r;

    const-class v4, Lcom/google/firebase/annotations/concurrent/Background;

    const-class v5, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/components/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v3}, Lcom/google/firebase/components/c;->f(Lcom/google/firebase/components/r;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/firebase/components/r;

    const-class v5, Lcom/google/firebase/annotations/concurrent/Blocking;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/components/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v4}, Lcom/google/firebase/components/c;->f(Lcom/google/firebase/components/r;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v4, Lr7/i;

    invoke-direct {v4, p0}, Lr7/i;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, v1, v2, v3, v4}, LD7/e;-><init>(Lp7/f;LC7/a;Ljava/util/concurrent/ExecutorService;Lr7/i;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b;",
            ">;"
        }
    .end annotation

    const-class p0, LD7/f;

    invoke-static {p0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object p0

    const-string v0, "fire-installations"

    iput-object v0, p0, Lcom/google/firebase/components/a;->a:Ljava/lang/String;

    const-class v1, Lp7/f;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/k;

    const-class v2, Lz7/e;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/r;

    const-class v2, Lcom/google/firebase/annotations/concurrent/Background;

    const-class v5, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2, v5}, Lcom/google/firebase/components/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v2, Lcom/google/firebase/components/k;

    invoke-direct {v2, v1, v4, v3}, Lcom/google/firebase/components/k;-><init>(Lcom/google/firebase/components/r;II)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/r;

    const-class v2, Lcom/google/firebase/annotations/concurrent/Blocking;

    const-class v5, Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v5}, Lcom/google/firebase/components/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v2, Lcom/google/firebase/components/k;

    invoke-direct {v2, v1, v4, v3}, Lcom/google/firebase/components/k;-><init>(Lcom/google/firebase/components/r;II)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, LA9/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LA9/b;-><init>(I)V

    iput-object v1, p0, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {p0}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object p0

    new-instance v1, Lz7/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-class v2, Lz7/d;

    invoke-static {v2}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v2

    iput v4, v2, Lcom/google/firebase/components/a;->e:I

    new-instance v3, LAa/a;

    const/16 v4, 0x1a

    invoke-direct {v3, v4, v1}, LAa/a;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v2}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v1

    const-string v2, "17.1.3"

    invoke-static {v0, v2}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    filled-new-array {p0, v1, v0}, [Lcom/google/firebase/components/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
