.class public final LEc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhc/f;

.field public final b:LKc/j;

.field public final c:Ljava/util/Collection;

.field public final d:Lsb/k;

.field public final e:[LEc/e;


# direct methods
.method public varargs constructor <init>(Lhc/f;LKc/j;Ljava/util/Collection;Lsb/k;[LEc/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEc/i;->a:Lhc/f;

    iput-object p2, p0, LEc/i;->b:LKc/j;

    iput-object p3, p0, LEc/i;->c:Ljava/util/Collection;

    iput-object p4, p0, LEc/i;->d:Lsb/k;

    iput-object p5, p0, LEc/i;->e:[LEc/e;

    return-void
.end method

.method public synthetic constructor <init>(Lhc/f;[LEc/e;)V
    .locals 1

    sget-object v0, LEc/h;->b:LEc/h;

    invoke-direct {p0, p1, p2, v0}, LEc/i;-><init>(Lhc/f;[LEc/e;Lsb/k;)V

    return-void
.end method

.method public constructor <init>(Lhc/f;[LEc/e;Lsb/k;)V
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [LEc/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LEc/i;-><init>(Lhc/f;LKc/j;Ljava/util/Collection;Lsb/k;[LEc/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;[LEc/e;Lsb/k;)V
    .locals 6

    const-string v0, "nameList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [LEc/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LEc/i;-><init>(Lhc/f;LKc/j;Ljava/util/Collection;Lsb/k;[LEc/e;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;[LEc/e;)V
    .locals 1

    sget-object v0, LEc/h;->d:LEc/h;

    invoke-direct {p0, p1, p2, v0}, LEc/i;-><init>(Ljava/util/Collection;[LEc/e;Lsb/k;)V

    return-void
.end method
