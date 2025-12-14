.class public final Ljb/c;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:I

.field public final synthetic b:Lsb/n;

.field public final synthetic c:Lib/c;


# direct methods
.method public constructor <init>(Lib/c;Lib/h;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p3, p0, Ljb/c;->b:Lsb/n;

    iput-object p4, p0, Ljb/c;->c:Lib/c;

    invoke-direct {p0, p1, p2}, Lkb/c;-><init>(Lib/c;Lib/h;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ljb/c;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Ljb/c;->a:I

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This coroutine had already completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput v2, p0, Ljb/c;->a:I

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Ljb/c;->b:Lsb/n;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Ltb/z;->e(ILjava/lang/Object;)V

    iget-object v0, p0, Ljb/c;->c:Lib/c;

    invoke-interface {p1, v0, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
