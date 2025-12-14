.class public final LNc/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/g;


# instance fields
.field public final a:Ltb/m;

.field public final b:Lib/g;


# direct methods
.method public constructor <init>(Lib/g;Lsb/k;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Ltb/m;

    iput-object p2, p0, LNc/w;->a:Ltb/m;

    instance-of p2, p1, LNc/w;

    if-eqz p2, :cond_0

    check-cast p1, LNc/w;

    iget-object p1, p1, LNc/w;->b:Lib/g;

    :cond_0
    iput-object p1, p0, LNc/w;->b:Lib/g;

    return-void
.end method
