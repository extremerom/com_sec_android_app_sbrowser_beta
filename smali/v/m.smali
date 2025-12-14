.class public final Lv/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lv/m;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lv/m;->c:I

    iput v0, p0, Lv/m;->d:I

    iput v0, p0, Lv/m;->e:I

    iput-object p1, p0, Lv/m;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lv/n;
    .locals 11

    iget v0, p0, Lv/m;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lv/m;->c:I

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Cannot set TOKENIZER_TYPE_NONE with an indexing type other than INDEXING_TYPE_NONE."

    invoke-static {v3, v0}, LG6/a;->f(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lv/m;->c:I

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const-string v3, "Cannot set TOKENIZER_TYPE_PLAIN with INDEXING_TYPE_NONE."

    invoke-static {v3, v0}, LG6/a;->f(Ljava/lang/String;Z)V

    :goto_2
    iget v0, p0, Lv/m;->e:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lv/m;->b:I

    if-eq v0, v2, :cond_3

    move v1, v2

    :cond_3
    const-string v0, "Cannot set JOINABLE_VALUE_TYPE_QUALIFIED_ID with CARDINALITY_REPEATED."

    invoke-static {v0, v1}, LG6/a;->f(Ljava/lang/String;Z)V

    :cond_4
    new-instance v7, LB/h;

    iget v0, p0, Lv/m;->c:I

    iget v1, p0, Lv/m;->d:I

    invoke-direct {v7, v0, v1}, LB/h;-><init>(II)V

    new-instance v10, LB/g;

    iget v0, p0, Lv/m;->e:I

    invoke-direct {v10, v0}, LB/g;-><init>(I)V

    new-instance v0, Lv/n;

    iget v5, p0, Lv/m;->b:I

    new-instance v1, LB/i;

    iget-object v3, p0, Lv/m;->a:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    invoke-direct {v0, v1}, Lv/l;-><init>(LB/i;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    const-string v0, "cardinality"

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {p1, v1, v2, v0}, LG6/a;->b(IIILjava/lang/String;)V

    iput p1, p0, Lv/m;->b:I

    return-void
.end method

.method public final c(I)V
    .locals 3

    const-string v0, "indexingType"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v1, v2, v0}, LG6/a;->b(IIILjava/lang/String;)V

    iput p1, p0, Lv/m;->c:I

    return-void
.end method

.method public final d(I)V
    .locals 3

    const-string v0, "joinableValueType"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, LG6/a;->b(IIILjava/lang/String;)V

    iput p1, p0, Lv/m;->e:I

    return-void
.end method

.method public final e(I)V
    .locals 3

    const-string v0, "tokenizerType"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v1, v2, v0}, LG6/a;->b(IIILjava/lang/String;)V

    iput p1, p0, Lv/m;->d:I

    return-void
.end method
