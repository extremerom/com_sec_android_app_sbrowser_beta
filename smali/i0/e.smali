.class public final Li0/e;
.super Lf0/c;
.source "SourceFile"

# interfaces
.implements La0/e0;


# static fields
.field public static final d:Li0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li0/e;

    sget-object v1, Lf0/l;->e:Lf0/l;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf0/c;-><init>(Lf0/l;I)V

    sput-object v0, Li0/e;->d:Li0/e;

    return-void
.end method


# virtual methods
.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, La0/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, La0/g0;

    invoke-super {p0, p1}, Lf0/c;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, La0/N0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, La0/N0;

    invoke-super {p0, p1}, Lfb/f;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, La0/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, La0/g0;

    invoke-super {p0, p1}, Lf0/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/N0;

    return-object p0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, La0/g0;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, La0/g0;

    check-cast p2, La0/N0;

    invoke-super {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/N0;

    return-object p0
.end method
