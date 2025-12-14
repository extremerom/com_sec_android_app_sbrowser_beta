.class final synthetic Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;
.implements Ltb/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1$1$1;->$tmp0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1$1$1;->$tmp0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1$1;->access$invokeSuspend$handleEvent(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1$1$1;->emit(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LQc/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ltb/g;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ltb/g;->getFunctionDelegate()Ldb/b;

    move-result-object p0

    check-cast p1, Ltb/g;

    invoke-interface {p1}, Ltb/g;->getFunctionDelegate()Ldb/b;

    move-result-object p1

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Ldb/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb/b;"
        }
    .end annotation

    new-instance v7, Ltb/a;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1$1$1;->$tmp0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    const-string v5, "handleEvent(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-class v3, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    const-string v4, "handleEvent"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ltb/a;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-interface {p0}, Ltb/g;->getFunctionDelegate()Ldb/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
