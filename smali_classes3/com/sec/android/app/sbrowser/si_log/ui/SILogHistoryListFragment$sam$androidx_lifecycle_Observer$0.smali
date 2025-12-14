.class final synthetic Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$sam$androidx_lifecycle_Observer$0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;
.implements Ltb/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field private final synthetic function:Lsb/k;


# direct methods
.method public constructor <init>(Lsb/k;)V
    .locals 1

    const-string v0, "function"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$sam$androidx_lifecycle_Observer$0;->function:Lsb/k;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/lifecycle/Y;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$sam$androidx_lifecycle_Observer$0;->function:Lsb/k;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-interface {p0}, Ltb/g;->getFunctionDelegate()Ldb/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$sam$androidx_lifecycle_Observer$0;->function:Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
