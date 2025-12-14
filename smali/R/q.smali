.class public final LR/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/c;
.implements LA0/f;
.implements Lsb/k;


# instance fields
.field public final a:LB0/a;

.field public b:Lsb/k;


# direct methods
.method public constructor <init>(LB0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR/q;->a:LB0/a;

    return-void
.end method


# virtual methods
.method public final getKey()LA0/g;
    .locals 0

    sget-object p0, LR/p;->a:LA0/g;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final i()V
    .locals 2

    sget-object v0, LR/p;->a:LA0/g;

    iget-object v0, v0, LA0/g;->a:Ltb/m;

    invoke-interface {v0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsb/k;

    iget-object v1, p0, LR/q;->b:Lsb/k;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, LR/q;->b:Lsb/k;

    :cond_0
    return-void
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lz0/j;

    iget-object v0, p0, LR/q;->a:LB0/a;

    invoke-virtual {v0, p1}, LB0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LR/q;->b:Lsb/k;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
