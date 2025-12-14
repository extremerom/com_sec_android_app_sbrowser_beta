.class public final Lv2/r1;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# instance fields
.field public final a:Lo3/f;


# direct methods
.method public constructor <init>(Lo3/f;)V
    .locals 1

    const-string v0, "runner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Cancelled isolated runner"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lv2/r1;->a:Lo3/f;

    return-void
.end method
