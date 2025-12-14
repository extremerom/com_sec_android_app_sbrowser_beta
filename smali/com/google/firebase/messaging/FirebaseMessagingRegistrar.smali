.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fcm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LA7/c;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/c;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lcom/google/firebase/components/c;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lp7/f;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lp7/f;

    const-class v0, LB7/a;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LB7/a;

    const-class v0, LJ7/b;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->g(Ljava/lang/Class;)LC7/a;

    move-result-object v3

    const-class v0, Lz7/g;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->g(Ljava/lang/Class;)LC7/a;

    move-result-object v4

    const-class v0, LD7/f;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LD7/f;

    const-class v0, LE4/e;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LE4/e;

    const-class v0, Ly7/b;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ly7/b;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lp7/f;LB7/a;LC7/a;LC7/a;LD7/f;LE4/e;Ly7/b;)V

    return-object v8
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

    const-class p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {p0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object p0

    const-string v0, "fire-fcm"

    iput-object v0, p0, Lcom/google/firebase/components/a;->a:Ljava/lang/String;

    const-class v1, Lp7/f;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/k;

    const-class v2, LB7/a;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/k;

    const-class v2, LJ7/b;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/k;

    const-class v2, Lz7/g;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/components/k;

    const-class v2, LE4/e;

    invoke-direct {v1, v3, v3, v2}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    const-class v1, LD7/f;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    const-class v1, Ly7/b;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lcom/google/firebase/messaging/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/m;-><init>(I)V

    iput-object v1, p0, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    iget v1, p0, Lcom/google/firebase/components/a;->d:I

    if-nez v1, :cond_0

    iput v4, p0, Lcom/google/firebase/components/a;->d:I

    invoke-virtual {p0}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object p0

    const-string v1, "23.1.2"

    invoke-static {v0, v1}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    filled-new-array {p0, v0}, [Lcom/google/firebase/components/b;

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
