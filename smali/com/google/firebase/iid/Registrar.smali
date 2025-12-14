.class public final Lcom/google/firebase/iid/Registrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic lambda$getComponents$0$Registrar(Lcom/google/firebase/components/c;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 5

    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    const-class v1, Lp7/f;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp7/f;

    const-class v2, LJ7/b;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/c;->g(Ljava/lang/Class;)LC7/a;

    move-result-object v2

    const-class v3, Lz7/g;

    invoke-interface {p0, v3}, Lcom/google/firebase/components/c;->g(Ljava/lang/Class;)LC7/a;

    move-result-object v3

    const-class v4, LD7/f;

    invoke-interface {p0, v4}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LD7/f;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lp7/f;LC7/a;LC7/a;LD7/f;)V

    return-object v0
.end method

.method public static final synthetic lambda$getComponents$1$Registrar(Lcom/google/firebase/components/c;)LB7/a;
    .locals 2

    new-instance v0, LA7/g;

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {v0, p0}, LA7/g;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {p0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v0

    const-class v1, Lp7/f;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/k;

    const-class v2, LJ7/b;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/k;

    const-class v2, Lz7/g;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    const-class v1, LD7/f;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object v1, LA7/f;->b:LA7/f;

    iput-object v1, v0, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    iget v1, v0, Lcom/google/firebase/components/a;->d:I

    if-nez v1, :cond_0

    iput v4, v0, Lcom/google/firebase/components/a;->d:I

    invoke-virtual {v0}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v0

    const-class v1, LB7/a;

    invoke-static {v1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object p0, LA7/f;->c:LA7/f;

    iput-object p0, v1, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v1}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object p0

    const-string v1, "fire-iid"

    const-string v2, "21.1.0"

    invoke-static {v1, v2}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Lcom/google/firebase/components/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Instantiation type has already been set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
