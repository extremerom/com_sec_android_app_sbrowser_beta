.class public final LQ/x;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:D

.field public final synthetic b:D

.field public final synthetic c:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    iput-wide p1, p0, LQ/x;->a:D

    iput-wide p3, p0, LQ/x;->b:D

    iput-wide p5, p0, LQ/x;->c:D

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, LQ/x;->b:D

    mul-double/2addr v0, v2

    const/4 p1, 0x1

    int-to-double v4, p1

    add-double/2addr v4, v0

    iget-wide v6, p0, LQ/x;->a:D

    mul-double/2addr v4, v6

    iget-wide p0, p0, LQ/x;->c:D

    mul-double/2addr p0, v2

    add-double/2addr p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
