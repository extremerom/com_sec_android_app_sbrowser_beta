.class public final LG5/m3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG5/G2;

.field public final b:LG5/K2;

.field public final c:LG5/k3;


# direct methods
.method public synthetic constructor <init>(Lo3/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, LG5/G2;

    iput-object v0, p0, LG5/m3;->a:LG5/G2;

    iget-object v0, p1, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, LG5/K2;

    iput-object v0, p0, LG5/m3;->b:LG5/K2;

    iget-object p1, p1, Lo3/t;->d:Ljava/lang/Object;

    check-cast p1, LG5/k3;

    iput-object p1, p0, LG5/m3;->c:LG5/k3;

    return-void
.end method
