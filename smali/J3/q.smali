.class public abstract LJ3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/q;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    return-void
.end method

.method public static a(LK3/c;Lz3/g;FLJ3/F;Z)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, LK3/c;->q()LK3/b;

    move-result-object v1

    sget-object v2, LK3/b;->STRING:LK3/b;

    if-ne v1, v2, :cond_0

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lz3/g;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, LK3/c;->b()V

    :goto_0
    invoke-virtual {p0}, LK3/c;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, LJ3/q;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p0, v1}, LK3/c;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LK3/c;->E()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LK3/c;->q()LK3/b;

    move-result-object v1

    sget-object v2, LK3/b;->BEGIN_ARRAY:LK3/b;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, LK3/c;->a()V

    invoke-virtual {p0}, LK3/c;->q()LK3/b;

    move-result-object v1

    sget-object v2, LK3/b;->NUMBER:LK3/b;

    if-ne v1, v2, :cond_2

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, LJ3/p;->b(LK3/c;Lz3/g;FLJ3/F;ZZ)LM3/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, LK3/c;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, LJ3/p;->b(LK3/c;Lz3/g;FLJ3/F;ZZ)LM3/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, LK3/c;->c()V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, LJ3/p;->b(LK3/c;Lz3/g;FLJ3/F;ZZ)LM3/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, LK3/c;->d()V

    invoke-static {v0}, LJ3/q;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static b(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM3/a;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM3/a;

    iget v4, v3, LM3/a;->g:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, LM3/a;->h:Ljava/lang/Float;

    iget-object v4, v2, LM3/a;->c:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v3, v3, LM3/a;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iput-object v3, v2, LM3/a;->c:Ljava/lang/Object;

    instance-of v3, v2, LC3/l;

    if-eqz v3, :cond_0

    check-cast v2, LC3/l;

    invoke-virtual {v2}, LC3/l;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM3/a;

    iget-object v1, v0, LM3/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, LM3/a;->c:Ljava/lang/Object;

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
