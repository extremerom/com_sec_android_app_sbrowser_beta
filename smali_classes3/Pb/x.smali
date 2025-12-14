.class public final LPb/x;
.super LPb/r;
.source "SourceFile"

# interfaces
.implements LYb/b;


# instance fields
.field public final a:Lhc/c;


# direct methods
.method public constructor <init>(Lhc/c;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPb/x;->a:Lhc/c;

    return-void
.end method


# virtual methods
.method public final a(Lhc/c;)LPb/d;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LPb/x;

    if-eqz v0, :cond_0

    check-cast p1, LPb/x;

    iget-object p1, p1, LPb/x;->a:Lhc/c;

    iget-object p0, p0, LPb/x;->a:Lhc/c;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LPb/x;->a:Lhc/c;

    invoke-virtual {p0}, Lhc/c;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, LPb/x;

    const-string v2, ": "

    invoke-static {v1, v0, v2}, LV0/c;->t(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, LPb/x;->a:Lhc/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic u()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method
