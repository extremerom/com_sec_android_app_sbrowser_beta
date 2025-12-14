.class public final LS/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQ/q;

.field public final b:LS/O;


# direct methods
.method public constructor <init>(LQ/q;)V
    .locals 2

    sget-object v0, LS/c0;->c:LS/O;

    const-string v1, "flingDecay"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "motionDurationScale"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/g;->a:LQ/q;

    iput-object v0, p0, LS/g;->b:LS/O;

    return-void
.end method
