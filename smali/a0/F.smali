.class public final La0/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/q0;


# instance fields
.field public final a:Lsb/k;

.field public b:La0/G;


# direct methods
.method public constructor <init>(Lsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/F;->a:Lsb/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, La0/d;->h:La0/H;

    iget-object v1, p0, La0/F;->a:Lsb/k;

    invoke-interface {v1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/G;

    iput-object v0, p0, La0/F;->b:La0/G;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, La0/F;->b:La0/G;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La0/G;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La0/F;->b:La0/G;

    return-void
.end method
