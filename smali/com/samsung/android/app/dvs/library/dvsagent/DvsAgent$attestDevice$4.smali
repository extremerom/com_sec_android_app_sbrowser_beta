.class final Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$4;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->attestDevice(Landroid/content/Context;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/m;",
        "Lsb/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "Ldb/r;",
        "invoke",
        "(Ljava/lang/Throwable;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $onError:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsb/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$4;->$onError:Lsb/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$4;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$4;->$onError:Lsb/k;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
