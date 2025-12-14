.class public final LV/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/z;
.implements Lz0/y;


# instance fields
.field public final a:LV/L;

.field public final b:I

.field public final c:Z

.field public final d:F

.field public final e:Ljava/lang/Object;

.field public final f:I

.field public final synthetic g:Lz0/y;


# direct methods
.method public constructor <init>(LV/L;IZFLz0/y;Ljava/util/List;ILS/I;)V
    .locals 1

    const-string v0, "measureResult"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/B;->a:LV/L;

    iput p2, p0, LV/B;->b:I

    iput-boolean p3, p0, LV/B;->c:Z

    iput p4, p0, LV/B;->d:F

    iput-object p6, p0, LV/B;->e:Ljava/lang/Object;

    iput p7, p0, LV/B;->f:I

    iput-object p5, p0, LV/B;->g:Lz0/y;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LV/B;->g:Lz0/y;

    invoke-interface {p0}, Lz0/y;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, LV/B;->g:Lz0/y;

    invoke-interface {p0}, Lz0/y;->b()V

    return-void
.end method

.method public final c()I
    .locals 0

    iget p0, p0, LV/B;->f:I

    return p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LV/B;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, LV/B;->g:Lz0/y;

    invoke-interface {p0}, Lz0/y;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, LV/B;->g:Lz0/y;

    invoke-interface {p0}, Lz0/y;->getWidth()I

    move-result p0

    return p0
.end method
