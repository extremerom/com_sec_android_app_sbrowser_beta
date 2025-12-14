.class public final Lhd/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwd/j;

.field public b:Lhd/D;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lwd/j;->d:Lwd/j;

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    iput-object v0, p0, Lhd/E;->a:Lwd/j;

    sget-object v0, Lhd/G;->e:Lhd/D;

    iput-object v0, p0, Lhd/E;->b:Lhd/D;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhd/E;->c:Ljava/util/ArrayList;

    return-void
.end method
