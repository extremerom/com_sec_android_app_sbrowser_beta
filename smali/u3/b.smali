.class public final Lu3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lf3/k;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf3/k;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lu3/b;->b:Lf3/k;

    iput-object p3, p0, Lu3/b;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lu3/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lg3/n;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/b;

    new-instance v8, Lg3/j;

    iget-object v4, v1, Lu3/b;->a:Ljava/lang/String;

    iget-object v2, v1, Lu3/b;->d:Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lu3/b;->a(Lg3/n;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v6, v1, Lu3/b;->c:Ljava/util/ArrayList;

    iget-object v5, v1, Lu3/b;->b:Lf3/k;

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lg3/j;-><init>(Lg3/n;Ljava/lang/String;Lf3/k;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
