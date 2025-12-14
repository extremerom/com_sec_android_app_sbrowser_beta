.class public final LNc/K0;
.super LNc/x;
.source "SourceFile"


# static fields
.field public static final b:LNc/K0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNc/K0;

    invoke-direct {v0}, LNc/x;-><init>()V

    sput-object v0, LNc/K0;->b:LNc/K0;

    return-void
.end method


# virtual methods
.method public final J(I)LNc/x;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method

.method public final v(Lib/h;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, LNc/O0;->b:LNc/i0;

    invoke-interface {p1, p0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    check-cast p0, LNc/O0;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LNc/O0;->a:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
