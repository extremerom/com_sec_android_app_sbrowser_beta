.class public final LW/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/z;


# instance fields
.field public final a:LW/h;

.field public final b:Lz0/M;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(LW/h;Lz0/M;)V
    .locals 1

    const-string v0, "itemContentFactory"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subcomposeMeasureScope"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/k;->a:LW/h;

    iput-object p2, p0, LW/k;->b:Lz0/M;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LW/k;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, LW/k;->b:Lz0/M;

    invoke-interface {p0}, LH0/b;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getLayoutDirection()LH0/k;
    .locals 0

    iget-object p0, p0, LW/k;->b:Lz0/M;

    invoke-interface {p0}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object p0

    return-object p0
.end method

.method public final j(F)I
    .locals 0

    iget-object p0, p0, LW/k;->b:Lz0/M;

    invoke-interface {p0, p1}, LH0/b;->j(F)I

    move-result p0

    return p0
.end method

.method public final l(IILjava/util/Map;Lsb/k;)Lz0/y;
    .locals 1

    const-string v0, "alignmentLines"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementBlock"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LW/k;->b:Lz0/M;

    invoke-interface {p0, p1, p2, p3, p4}, Lz0/z;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0
.end method

.method public final m()F
    .locals 0

    iget-object p0, p0, LW/k;->b:Lz0/M;

    invoke-interface {p0}, LH0/b;->m()F

    move-result p0

    return p0
.end method

.method public final p(F)F
    .locals 0

    iget-object p0, p0, LW/k;->b:Lz0/M;

    invoke-interface {p0, p1}, LH0/b;->p(F)F

    move-result p0

    return p0
.end method
