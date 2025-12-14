.class public final Lyc/T;
.super Lyc/U;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lyc/U;


# direct methods
.method public constructor <init>(Lyc/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/T;->b:Lyc/U;

    return-void
.end method


# virtual methods
.method public final c(LKb/h;)LKb/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/T;->b:Lyc/U;

    invoke-virtual {p0, p1}, Lyc/U;->c(LKb/h;)LKb/h;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lyc/w;)Lyc/Q;
    .locals 0

    iget-object p0, p0, Lyc/T;->b:Lyc/U;

    invoke-virtual {p0, p1}, Lyc/U;->d(Lyc/w;)Lyc/Q;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lyc/T;->b:Lyc/U;

    invoke-virtual {p0}, Lyc/U;->e()Z

    move-result p0

    return p0
.end method

.method public final f(Lyc/w;Lyc/e0;)Lyc/w;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/T;->b:Lyc/U;

    invoke-virtual {p0, p1, p2}, Lyc/U;->f(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p0

    return-object p0
.end method
