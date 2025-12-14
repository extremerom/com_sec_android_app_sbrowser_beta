.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-transport"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LA7/c;)LE4/e;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/c;)LE4/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lcom/google/firebase/components/c;)LE4/e;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, LH4/w;->b(Landroid/content/Context;)V

    invoke-static {}, LH4/w;->a()LH4/w;

    move-result-object p0

    sget-object v0, LF4/a;->f:LF4/a;

    invoke-virtual {p0, v0}, LH4/w;->c(LF4/a;)LH4/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b;",
            ">;"
        }
    .end annotation

    const-class p0, LE4/e;

    invoke-static {p0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object p0

    const-string v0, "fire-transport"

    iput-object v0, p0, Lcom/google/firebase/components/a;->a:Ljava/lang/String;

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, Lf1/g;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lf1/g;-><init>(I)V

    iput-object v1, p0, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {p0}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object p0

    const-string v1, "18.1.7"

    invoke-static {v0, v1}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    filled-new-array {p0, v0}, [Lcom/google/firebase/components/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
