.class public final Lib/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lib/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lib/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lib/i;->a:Lib/i;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final get(Lib/g;)Lib/f;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final minusKey(Lib/g;)Lib/h;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final plus(Lib/h;)Lib/h;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptyCoroutineContext"

    return-object p0
.end method
