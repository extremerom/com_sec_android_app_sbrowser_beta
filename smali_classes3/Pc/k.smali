.class public abstract LPc/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LPc/q;

.field public static final b:I

.field public static final c:I

.field public static final d:LQ6/i;

.field public static final e:LQ6/i;

.field public static final f:LQ6/i;

.field public static final g:LQ6/i;

.field public static final h:LQ6/i;

.field public static final i:LQ6/i;

.field public static final j:LQ6/i;

.field public static final k:LQ6/i;

.field public static final l:LQ6/i;

.field public static final m:LQ6/i;

.field public static final n:LQ6/i;

.field public static final o:LQ6/i;

.field public static final p:LQ6/i;

.field public static final q:LQ6/i;

.field public static final r:LQ6/i;

.field public static final s:LQ6/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LPc/q;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LPc/q;-><init>(JLPc/q;LPc/i;I)V

    sput-object v6, LPc/k;->a:LPc/q;

    const-string v0, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v1, v0, v2, v2, v3}, LUc/a;->l(ILjava/lang/String;III)I

    move-result v0

    sput v0, LPc/k;->b:I

    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v1, 0x2710

    invoke-static {v1, v0, v2, v2, v3}, LUc/a;->l(ILjava/lang/String;III)I

    move-result v0

    sput v0, LPc/k;->c:I

    new-instance v0, LQ6/i;

    const-string v1, "BUFFERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->d:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->e:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->f:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->g:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "POISONED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->h:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->i:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->j:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->k:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->l:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->m:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->n:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->o:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->p:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->q:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->r:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/k;->s:LQ6/i;

    return-void
.end method

.method public static final a(LNc/j;Ljava/lang/Object;Lsb/k;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, LNc/j;->s(Ljava/lang/Object;Lsb/k;)LQ6/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, LNc/j;->u(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
