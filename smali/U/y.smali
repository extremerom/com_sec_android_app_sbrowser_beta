.class public interface abstract LU/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lm0/m;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, LU/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LU/r;-><init>(Z)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid weight 1.0; must be greater than zero"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
