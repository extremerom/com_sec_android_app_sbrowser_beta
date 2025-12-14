.class public LR1/p;
.super LEc/g;
.source "SourceFile"


# instance fields
.field public final b:Lx1/u;

.field public final c:Ljava/lang/String;

.field public final d:LR1/o;

.field public final e:Lf2/a;

.field public final f:Lf2/a;


# direct methods
.method public constructor <init>(Lx1/u;LR1/o;Lf2/i;I)V
    .locals 3

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    sget-object p2, LR1/o;->Icon:LR1/o;

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p4, "imageType"

    invoke-static {p2, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "imageType"

    invoke-static {p2, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, LEc/g;-><init>(Z)V

    iput-object p1, p0, LR1/p;->b:Lx1/u;

    iput-object p4, p0, LR1/p;->c:Ljava/lang/String;

    iput-object p2, p0, LR1/p;->d:LR1/o;

    iput-object v0, p0, LR1/p;->e:Lf2/a;

    iput-object p3, p0, LR1/p;->f:Lf2/a;

    return-void
.end method
