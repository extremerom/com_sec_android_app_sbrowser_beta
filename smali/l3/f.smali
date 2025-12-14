.class public final Ll3/f;
.super Ll3/d;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NetworkNotRoamingCtrlr"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"NetworkNotRoamingCtrlr\")"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lm3/e;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ll3/d;-><init>(Lm3/e;)V

    const/4 p1, 0x7

    iput p1, p0, Ll3/f;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ll3/f;->b:I

    return p0
.end method

.method public final b(Lo3/q;)Z
    .locals 0

    iget-object p0, p1, Lo3/q;->j:Lf3/f;

    iget-object p0, p0, Lf3/f;->a:Lf3/v;

    sget-object p1, Lf3/v;->NOT_ROAMING:Lf3/v;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lk3/d;

    const-string p0, "value"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lk3/d;->a:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lk3/d;->d:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
