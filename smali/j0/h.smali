.class public final Lj0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/c;


# static fields
.field public static final d:Lo3/c;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Lj0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lj0/d;->b:Lj0/d;

    sget-object v1, Lj0/e;->b:Lj0/e;

    sget v2, Lj0/n;->a:I

    new-instance v2, Lo3/c;

    invoke-direct {v2, v0, v1}, Lo3/c;-><init>(Lsb/n;Lsb/k;)V

    sput-object v2, Lj0/h;->d:Lo3/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/h;->a:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lj0/h;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Li0/a;La0/m;I)V
    .locals 9

    check-cast p3, La0/q;

    const v0, -0x47703d6d

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p2}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p3, p0}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-virtual {p3}, La0/q;->x()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, La0/q;->K()V

    goto/16 :goto_7

    :cond_7
    :goto_4
    invoke-virtual {p3, p1}, La0/q;->T(Ljava/lang/Object;)V

    invoke-virtual {p3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, La0/l;->a:La0/V;

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lj0/h;->c:Lj0/k;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1}, Lj0/k;->d(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_9

    new-instance v1, Lj0/f;

    invoke-direct {v1, p0, p1}, Lj0/f;-><init>(Lj0/h;Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, La0/q;->a0(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Type of the key "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported. On Android you can only use types which can be stored inside the Bundle."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_6
    move-object v7, v1

    check-cast v7, Lj0/f;

    sget-object v1, Lj0/m;->a:La0/L0;

    iget-object v3, v7, Lj0/f;->c:Lj0/l;

    invoke-virtual {v1, v3}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v1

    and-int/lit8 v0, v0, 0x70

    const/16 v3, 0x8

    or-int/2addr v0, v3

    invoke-static {v1, p2, p3, v0}, La0/d;->a(La0/h0;Li0/a;La0/m;I)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p3, p0}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p3, p1}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p3, v7}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_b

    if-ne v3, v2, :cond_c

    :cond_b
    new-instance v1, LPc/e;

    const/4 v4, 0x6

    const/4 v8, 0x0

    move-object v3, v1

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, LPc/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p3, v1}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_c
    check-cast v3, Lsb/k;

    invoke-static {v0, v3, p3}, La0/d;->c(Ljava/lang/Object;Lsb/k;La0/m;)V

    iget-boolean v0, p3, La0/q;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p3, La0/q;->F:La0/v0;

    iget v0, v0, La0/v0;->i:I

    iget v2, p3, La0/q;->y:I

    if-ne v0, v2, :cond_d

    const/4 v0, -0x1

    iput v0, p3, La0/q;->y:I

    iput-boolean v1, p3, La0/q;->x:Z

    :cond_d
    invoke-virtual {p3, v1}, La0/q;->p(Z)V

    :goto_7
    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_e

    new-instance v6, LJ0/l;

    const/4 v2, 0x4

    move-object v0, v6

    move v1, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LJ0/l;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p3, La0/i0;->d:Lsb/n;

    :cond_e
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj0/h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/f;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, v0, Lj0/f;->b:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lj0/h;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
