.class public final LQ/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQ/s;

.field public final b:LNc/j0;


# direct methods
.method public constructor <init>(LQ/s;LNc/j0;)V
    .locals 1

    const-string v0, "priority"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ/t;->a:LQ/s;

    iput-object p2, p0, LQ/t;->b:LNc/j0;

    return-void
.end method
