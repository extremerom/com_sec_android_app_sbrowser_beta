.class public final synthetic Lt0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/h;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lt0/p;


# direct methods
.method public synthetic constructor <init>(Lt0/p;I)V
    .locals 0

    iput p2, p0, Lt0/l;->a:I

    iput-object p1, p0, Lt0/l;->b:Lt0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 8

    iget v0, p0, Lt0/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lt0/l;->b:Lt0/p;

    iget-object v0, p0, Lt0/p;->m:Lt0/h;

    iget v1, p0, Lt0/p;->e:F

    float-to-double v4, v1

    iget p0, p0, Lt0/p;->f:F

    float-to-double v6, p0

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, LG5/d3;->d(DDD)D

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Lt0/h;->a(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    iget-object p0, p0, Lt0/l;->b:Lt0/p;

    iget-object v0, p0, Lt0/p;->k:Lt0/h;

    invoke-interface {v0, p1, p2}, Lt0/h;->a(D)D

    move-result-wide v1

    iget p1, p0, Lt0/p;->e:F

    float-to-double v3, p1

    iget p0, p0, Lt0/p;->f:F

    float-to-double v5, p0

    invoke-static/range {v1 .. v6}, LG5/d3;->d(DDD)D

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
