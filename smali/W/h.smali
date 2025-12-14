.class public final LW/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj0/c;

.field public final b:LS/W;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lj0/c;LS/W;)V
    .locals 1

    const-string v0, "saveableStateHolder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/h;->a:Lj0/c;

    iput-object p2, p0, LW/h;->b:LS/W;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LW/h;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Lsb/n;
    .locals 6

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LW/h;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW/g;

    iget-object v2, p0, LW/h;->b:LS/W;

    invoke-virtual {v2}, LS/W;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW/i;

    invoke-interface {v2, p1}, LW/i;->getContentType(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x53af4291

    if-eqz v1, :cond_1

    iget-object v5, v1, LW/g;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    iget-object v5, v1, LW/g;->b:Ljava/lang/Object;

    invoke-static {v5, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p0, v1, LW/g;->d:Li0/a;

    if-nez p0, :cond_2

    new-instance p0, LB1/i;

    iget-object p1, v1, LW/g;->e:LW/h;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1, v1}, LB1/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Li0/a;

    invoke-direct {p1, v4, v3, p0}, Li0/a;-><init>(IZLdb/b;)V

    iput-object p1, v1, LW/g;->d:Li0/a;

    :cond_0
    move-object p0, p1

    goto :goto_0

    :cond_1
    new-instance v1, LW/g;

    invoke-direct {v1, p0, p1, p2, v2}, LW/g;-><init>(LW/h;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, LW/g;->d:Li0/a;

    if-nez p1, :cond_0

    new-instance p1, LB1/i;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0, v1}, LB1/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Li0/a;

    invoke-direct {p0, v4, v3, p1}, Li0/a;-><init>(IZLdb/b;)V

    iput-object p0, v1, LW/g;->d:Li0/a;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LW/h;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/g;

    if-eqz v0, :cond_0

    iget-object p0, v0, LW/g;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, LW/h;->b:LS/W;

    invoke-virtual {p0}, LS/W;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/i;

    invoke-interface {p0}, LW/i;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, LW/i;->getContentType(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
