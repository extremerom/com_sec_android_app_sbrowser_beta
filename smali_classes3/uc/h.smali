.class public final Luc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhc/b;

.field public final b:Luc/f;


# direct methods
.method public constructor <init>(Lhc/b;Luc/f;)V
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/h;->a:Lhc/b;

    iput-object p2, p0, Luc/h;->b:Luc/f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Luc/h;

    if-eqz v0, :cond_0

    check-cast p1, Luc/h;

    iget-object p1, p1, Luc/h;->a:Lhc/b;

    iget-object p0, p0, Luc/h;->a:Lhc/b;

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

    iget-object p0, p0, Luc/h;->a:Lhc/b;

    invoke-virtual {p0}, Lhc/b;->hashCode()I

    move-result p0

    return p0
.end method
