.class public final La0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/q0;


# instance fields
.field public final a:LUc/e;


# direct methods
.method public constructor <init>(LUc/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/y;->a:LUc/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, La0/U;

    invoke-direct {v0}, La0/U;-><init>()V

    iget-object p0, p0, La0/y;->a:LUc/e;

    invoke-static {p0, v0}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, La0/U;

    invoke-direct {v0}, La0/U;-><init>()V

    iget-object p0, p0, La0/y;->a:LUc/e;

    invoke-static {p0, v0}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
