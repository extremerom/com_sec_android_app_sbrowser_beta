.class public final Landroidx/appsearch/builtintypes/ImageObject;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation


# instance fields
.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/appsearch/builtintypes/ImageObject;->l:Ljava/util/ArrayList;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/appsearch/builtintypes/ImageObject;->m:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/appsearch/builtintypes/ImageObject;->n:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/appsearch/builtintypes/ImageObject;->o:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/appsearch/builtintypes/ImageObject;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/appsearch/builtintypes/ImageObject;

    iget-object v2, p0, Landroidx/appsearch/builtintypes/ImageObject;->l:Ljava/util/ArrayList;

    iget-object v3, p1, Landroidx/appsearch/builtintypes/ImageObject;->l:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appsearch/builtintypes/ImageObject;->m:Ljava/lang/String;

    iget-object v3, p1, Landroidx/appsearch/builtintypes/ImageObject;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appsearch/builtintypes/ImageObject;->n:Ljava/lang/String;

    iget-object v3, p1, Landroidx/appsearch/builtintypes/ImageObject;->n:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/appsearch/builtintypes/ImageObject;->o:[B

    iget-object p1, p1, Landroidx/appsearch/builtintypes/ImageObject;->o:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/appsearch/builtintypes/ImageObject;->o:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/appsearch/builtintypes/ImageObject;->m:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appsearch/builtintypes/ImageObject;->n:Ljava/lang/String;

    iget-object p0, p0, Landroidx/appsearch/builtintypes/ImageObject;->l:Ljava/util/ArrayList;

    filled-new-array {p0, v1, v2, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
