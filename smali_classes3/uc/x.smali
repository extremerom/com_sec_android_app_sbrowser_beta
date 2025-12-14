.class public final Luc/x;
.super LJ2/i0;
.source "SourceFile"


# instance fields
.field public final e:Lhc/c;


# direct methods
.method public constructor <init>(Lhc/c;Lec/g;LX4/i;Lac/h;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, p2, v0, p3, p4}, LJ2/i0;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Luc/x;->e:Lhc/c;

    return-void
.end method


# virtual methods
.method public final d()Lhc/c;
    .locals 0

    iget-object p0, p0, Luc/x;->e:Lhc/c;

    return-object p0
.end method
