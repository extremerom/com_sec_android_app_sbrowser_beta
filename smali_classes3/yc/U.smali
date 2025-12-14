.class public abstract Lyc/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyc/S;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyc/S;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyc/U;->a:Lyc/S;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c(LKb/h;)LKb/h;
    .locals 0

    const-string p0, "annotations"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract d(Lyc/w;)Lyc/Q;
.end method

.method public e()Z
    .locals 0

    instance-of p0, p0, Lyc/S;

    return p0
.end method

.method public f(Lyc/w;Lyc/e0;)Lyc/w;
    .locals 0

    const-string p0, "topLevelType"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "position"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
