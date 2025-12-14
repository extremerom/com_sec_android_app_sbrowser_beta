.class public final Landroidx/lifecycle/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:LQ2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v24, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v27, Landroid/util/Size;

    const-class v28, Landroid/util/SizeF;

    const-class v1, [Z

    const-class v3, [D

    const-class v5, [I

    const-class v7, [J

    const-class v8, Ljava/lang/String;

    const-class v9, [Ljava/lang/String;

    const-class v10, Landroid/os/Binder;

    const-class v11, Landroid/os/Bundle;

    const-class v13, [B

    const-class v15, [C

    const-class v16, Ljava/lang/CharSequence;

    const-class v17, [Ljava/lang/CharSequence;

    const-class v18, Ljava/util/ArrayList;

    const-class v20, [F

    const-class v21, Landroid/os/Parcelable;

    const-class v22, [Landroid/os/Parcelable;

    const-class v23, Ljava/io/Serializable;

    const-class v25, [S

    const-class v26, Landroid/util/SparseArray;

    filled-new-array/range {v0 .. v28}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/j0;->f:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->d:Ljava/util/LinkedHashMap;

    new-instance v0, Landroidx/activity/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/activity/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/j0;->e:LQ2/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/j0;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/j0;->c:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/j0;->d:Ljava/util/LinkedHashMap;

    new-instance v1, Landroidx/activity/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/activity/f;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/j0;->e:LQ2/c;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Landroidx/lifecycle/j0;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/j0;->b:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lfb/B;->p(Ljava/util/AbstractMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, Landroidx/lifecycle/j0;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ2/c;

    invoke-interface {v1}, LQ2/c;->saveState()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "key"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v4, Landroidx/lifecycle/j0;->f:[Ljava/lang/Class;

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x1d

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iget-object v4, p0, Landroidx/lifecycle/j0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/lifecycle/X;

    if-eqz v5, :cond_1

    check-cast v4, Landroidx/lifecycle/X;

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v2, p0, Landroidx/lifecycle/j0;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQc/f0;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    check-cast v2, LQc/A0;

    invoke-virtual {v2, v1}, LQc/A0;->j(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t put value with type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " into saved state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    new-instance p0, Ldb/j;

    const-string v2, "keys"

    invoke-direct {p0, v2, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ldb/j;

    const-string v2, "values"

    invoke-direct {v0, v2, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p0, v0}, [Ldb/j;

    move-result-object p0

    invoke-static {p0}, LG5/n;->a([Ldb/j;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
