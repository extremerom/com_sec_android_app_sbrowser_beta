.class public final LS/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/N;


# instance fields
.field public final synthetic a:LS/k0;

.field public final synthetic b:LC1/j;


# direct methods
.method public constructor <init>(LS/k0;LC1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/g0;->a:LS/k0;

    iput-object p2, p0, LS/g0;->b:LC1/j;

    return-void
.end method


# virtual methods
.method public final scrollBy(F)F
    .locals 3

    iget-object v0, p0, LS/g0;->a:LS/k0;

    invoke-virtual {v0, p1}, LS/k0;->f(F)J

    move-result-wide v1

    new-instance p1, Lr0/b;

    invoke-direct {p1, v1, v2}, Lr0/b;-><init>(J)V

    iget-object p0, p0, LS/g0;->b:LC1/j;

    invoke-virtual {p0, p1}, LC1/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/b;

    iget-wide p0, p0, Lr0/b;->a:J

    invoke-virtual {v0, p0, p1}, LS/k0;->e(J)F

    move-result p0

    return p0
.end method
