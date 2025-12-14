.class public final LJb/A;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ZZZ)LJb/B;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, LJb/B;->SEALED:LJb/B;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, LJb/B;->ABSTRACT:LJb/B;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p0, LJb/B;->OPEN:LJb/B;

    goto :goto_0

    :cond_2
    sget-object p0, LJb/B;->FINAL:LJb/B;

    :goto_0
    return-object p0
.end method
