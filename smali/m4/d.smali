.class public abstract Lm4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LE5/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE5/v;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, Lm4/d;->a:LE5/v;

    return-void
.end method

.method public static a(ILm4/a;)LZ3/x;
    .locals 6

    new-instance v2, Le1/d;

    invoke-direct {v2, p0}, Le1/d;-><init>(I)V

    sget-object v4, Lm4/d;->a:LE5/v;

    new-instance p0, LZ3/x;

    const/16 v1, 0x13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LZ3/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object p0
.end method
