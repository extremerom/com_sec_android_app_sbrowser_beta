.class public final LQ/y;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:D

.field public final synthetic b:D

.field public final synthetic c:D

.field public final synthetic d:D

.field public final synthetic e:D


# direct methods
.method public constructor <init>(DDDDD)V
    .locals 0

    iput-wide p1, p0, LQ/y;->a:D

    iput-wide p3, p0, LQ/y;->b:D

    iput-wide p5, p0, LQ/y;->c:D

    iput-wide p7, p0, LQ/y;->d:D

    iput-wide p9, p0, LQ/y;->e:D

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, LQ/y;->b:D

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    iget-wide v4, p0, LQ/y;->a:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, LQ/y;->d:D

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iget-wide v4, p0, LQ/y;->c:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iget-wide p0, p0, LQ/y;->e:D

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
