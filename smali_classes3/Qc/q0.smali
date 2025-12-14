.class public final LQc/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQc/s0;

.field public static final b:LQc/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQc/s0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQc/s0;-><init>(I)V

    sput-object v0, LQc/q0;->a:LQc/s0;

    new-instance v0, LQc/s0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LQc/s0;-><init>(I)V

    sput-object v0, LQc/q0;->b:LQc/s0;

    return-void
.end method

.method public static a(IJ)LQc/x0;
    .locals 2

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    new-instance p0, LQc/x0;

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, LQc/x0;-><init>(JJ)V

    return-object p0
.end method
