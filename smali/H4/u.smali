.class public final LH4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE4/e;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:LH4/k;

.field public final c:LH4/w;


# direct methods
.method public constructor <init>(Ljava/util/Set;LH4/k;LH4/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH4/u;->a:Ljava/util/Set;

    iput-object p2, p0, LH4/u;->b:LH4/k;

    iput-object p3, p0, LH4/u;->c:LH4/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;LE4/b;LE4/d;)LH4/v;
    .locals 8

    iget-object v0, p0, LH4/u;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, LH4/v;

    iget-object v3, p0, LH4/u;->b:LH4/k;

    iget-object v7, p0, LH4/u;->c:LH4/w;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, LH4/v;-><init>(LH4/k;Ljava/lang/String;LE4/b;LE4/d;LH4/w;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "%s is not supported byt this factory. Supported encodings are: %s."

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
