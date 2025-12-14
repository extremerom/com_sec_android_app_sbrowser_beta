.class public final Lj0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/G;


# instance fields
.field public final synthetic a:Lj0/f;

.field public final synthetic b:Lj0/h;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj0/f;Lj0/h;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/g;->a:Lj0/f;

    iput-object p2, p0, Lj0/g;->b:Lj0/h;

    iput-object p3, p0, Lj0/g;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lj0/g;->b:Lj0/h;

    iget-object v1, v0, Lj0/h;->a:Ljava/util/Map;

    iget-object v2, p0, Lj0/g;->a:Lj0/f;

    iget-boolean v3, v2, Lj0/f;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lj0/f;->c:Lj0/l;

    invoke-virtual {v3}, Lj0/l;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    iget-object v2, v2, Lj0/f;->a:Ljava/lang/Object;

    if-eqz v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, v0, Lj0/h;->b:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lj0/g;->c:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
