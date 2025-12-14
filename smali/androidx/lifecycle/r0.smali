.class public final synthetic Landroidx/lifecycle/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;
.implements Ltb/g;


# instance fields
.field public final synthetic a:Ltb/m;


# direct methods
.method public constructor <init>(Lsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ltb/m;

    iput-object p1, p0, Landroidx/lifecycle/r0;->a:Ltb/m;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/lifecycle/Y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ltb/g;

    if-eqz v0, :cond_0

    check-cast p1, Ltb/g;

    invoke-interface {p1}, Ltb/g;->getFunctionDelegate()Ldb/b;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/r0;->a:Ltb/m;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Ldb/b;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/r0;->a:Ltb/m;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/r0;->a:Ltb/m;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/r0;->a:Ltb/m;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
