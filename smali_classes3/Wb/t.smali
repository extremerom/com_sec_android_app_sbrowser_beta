.class public final LWb/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhc/f;

.field public final b:LPb/n;


# direct methods
.method public constructor <init>(Lhc/f;LPb/n;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWb/t;->a:Lhc/f;

    iput-object p2, p0, LWb/t;->b:LPb/n;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LWb/t;

    if-eqz v0, :cond_0

    check-cast p1, LWb/t;

    iget-object p1, p1, LWb/t;->a:Lhc/f;

    iget-object p0, p0, LWb/t;->a:Lhc/f;

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

    iget-object p0, p0, LWb/t;->a:Lhc/f;

    invoke-virtual {p0}, Lhc/f;->hashCode()I

    move-result p0

    return p0
.end method
