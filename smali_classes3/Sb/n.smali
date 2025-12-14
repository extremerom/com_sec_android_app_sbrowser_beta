.class public abstract LSb/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, LSb/b;->FIELD:LSb/b;

    sget-object v1, LSb/b;->METHOD_RETURN_TYPE:LSb/b;

    sget-object v2, LSb/b;->VALUE_PARAMETER:LSb/b;

    sget-object v3, LSb/b;->TYPE_PARAMETER_BOUNDS:LSb/b;

    sget-object v4, LSb/b;->TYPE_USE:LSb/b;

    filled-new-array {v0, v1, v2, v3, v4}, [LSb/b;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LSb/n;->a:Ljava/util/List;

    invoke-static {v2}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, LSb/n;->b:Ljava/util/List;

    sget-object v2, LSb/y;->a:Lhc/c;

    new-instance v3, LSb/m;

    new-instance v4, LZb/h;

    sget-object v5, LZb/g;->NOT_NULL:LZb/g;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LZb/h;-><init>(LZb/g;Z)V

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v4, v0, v6}, LSb/m;-><init>(LZb/h;Ljava/util/Collection;Z)V

    new-instance v4, Ldb/j;

    invoke-direct {v4, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, LSb/y;->b:Lhc/c;

    new-instance v3, LSb/m;

    new-instance v7, LZb/h;

    invoke-direct {v7, v5, v6}, LZb/h;-><init>(LZb/g;Z)V

    invoke-direct {v3, v7, v0, v6}, LSb/m;-><init>(LZb/h;Ljava/util/Collection;Z)V

    new-instance v7, Ldb/j;

    invoke-direct {v7, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, LSb/y;->c:Lhc/c;

    new-instance v3, LSb/m;

    new-instance v8, LZb/h;

    sget-object v9, LZb/g;->FORCE_FLEXIBILITY:LZb/g;

    invoke-direct {v8, v9, v6}, LZb/h;-><init>(LZb/g;Z)V

    invoke-direct {v3, v8, v0}, LSb/m;-><init>(LZb/h;Ljava/util/Collection;)V

    new-instance v0, Ldb/j;

    invoke-direct {v0, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v7, v0}, [Ldb/j;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LSb/n;->c:Ljava/lang/Object;

    sget-object v2, LSb/y;->h:Lhc/c;

    new-instance v3, LSb/m;

    new-instance v4, LZb/h;

    invoke-direct {v4, v5, v6}, LZb/h;-><init>(LZb/g;Z)V

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v4, v1}, LSb/m;-><init>(LZb/h;Ljava/util/Collection;)V

    new-instance v4, Ldb/j;

    invoke-direct {v4, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, LSb/y;->i:Lhc/c;

    new-instance v3, LSb/m;

    new-instance v5, LZb/h;

    sget-object v7, LZb/g;->NULLABLE:LZb/g;

    invoke-direct {v5, v7, v6}, LZb/h;-><init>(LZb/g;Z)V

    invoke-direct {v3, v5, v1}, LSb/m;-><init>(LZb/h;Ljava/util/Collection;)V

    new-instance v1, Ldb/j;

    invoke-direct {v1, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v1}, [Ldb/j;

    move-result-object v1

    invoke-static {v1}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    sput-object v2, LSb/n;->e:Ljava/util/LinkedHashMap;

    return-void
.end method
