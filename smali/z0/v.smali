.class public final Lz0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/j;


# instance fields
.field public final a:LB0/J;


# direct methods
.method public constructor <init>(LB0/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/v;->a:LB0/J;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 0

    iget-object p0, p0, Lz0/v;->a:LB0/J;

    iget-object p0, p0, LB0/J;->i:LB0/O;

    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    move-result-object p0

    iget-boolean p0, p0, Lm0/l;->j:Z

    return p0
.end method

.method public final d()J
    .locals 2

    iget-object p0, p0, Lz0/v;->a:LB0/J;

    iget v0, p0, Lz0/G;->a:I

    iget p0, p0, Lz0/G;->b:I

    invoke-static {v0, p0}, LG5/V2;->a(II)J

    move-result-wide v0

    return-wide v0
.end method
