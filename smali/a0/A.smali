.class public final La0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:LNc/k;

.field public final synthetic b:Ltb/m;


# direct methods
.method public constructor <init>(LNc/k;Lsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/A;->a:LNc/k;

    check-cast p2, Ltb/m;

    iput-object p2, p0, La0/A;->b:Ltb/m;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    sget-object v0, La0/B;->a:La0/B;

    iget-object v0, p0, La0/A;->b:Ltb/m;

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p1

    :goto_0
    iget-object p0, p0, La0/A;->a:LNc/k;

    invoke-virtual {p0, p1}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
