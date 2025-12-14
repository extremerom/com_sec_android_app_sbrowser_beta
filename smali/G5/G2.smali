.class public final LG5/G2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:LG5/N2;

.field public final c:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lo3/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, LG5/G2;->a:Ljava/lang/Long;

    iget-object v0, p1, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, LG5/N2;

    iput-object v0, p0, LG5/G2;->b:LG5/N2;

    iget-object p1, p1, Lo3/t;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, LG5/G2;->c:Ljava/lang/Boolean;

    return-void
.end method
