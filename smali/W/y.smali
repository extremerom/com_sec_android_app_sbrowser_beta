.class public final LW/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/k;
.implements Lj0/c;


# instance fields
.field public final a:Lj0/l;

.field public final b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lj0/k;Ljava/util/Map;)V
    .locals 2

    new-instance v0, LW/w;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LW/w;-><init>(Lj0/k;I)V

    sget-object p1, Lj0/m;->a:La0/L0;

    new-instance p1, Lj0/l;

    invoke-direct {p1, p2, v0}, Lj0/l;-><init>(Ljava/util/Map;Lsb/k;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/y;->a:Lj0/l;

    sget-object p1, La0/V;->f:La0/V;

    const/4 p2, 0x0

    invoke-static {p2, p1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LW/y;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, LW/y;->c:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lsb/a;)Lj0/j;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LW/y;->a:Lj0/l;

    invoke-virtual {p0, p1, p2}, Lj0/l;->a(Ljava/lang/String;Lsb/a;)Lj0/j;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Li0/a;La0/m;I)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, La0/q;

    const v0, -0x298e20f1

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    iget-object v0, p0, LW/y;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/c;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p4, 0x70

    or-int/lit16 v1, v1, 0x208

    invoke-interface {v0, p1, p2, p3, v1}, Lj0/c;->b(Ljava/lang/Object;Li0/a;La0/m;I)V

    new-instance v0, LC1/j;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v0, p3}, La0/d;->c(Ljava/lang/Object;Lsb/k;La0/m;)V

    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, LJ0/l;

    const/4 v2, 0x2

    move-object v0, v6

    move v1, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LJ0/l;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p3, La0/i0;->d:Lsb/n;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LW/y;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj0/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lj0/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LW/y;->a:Lj0/l;

    invoke-virtual {p0, p1}, Lj0/l;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LW/y;->a:Lj0/l;

    invoke-virtual {p0, p1}, Lj0/l;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
