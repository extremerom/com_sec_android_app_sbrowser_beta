.class public final Lo7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/Map;

.field public static final h:Ljava/util/HashMap;

.field public static final i:Ljava/util/HashMap;

.field public static final j:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/ClassLoader;

.field public c:Ljava/lang/reflect/InvocationHandler;

.field public d:[Ljava/lang/Class;

.field public e:[Ljava/lang/Object;

.field public final f:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo7/b;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo7/b;->h:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Short;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Float;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Double;

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Character;

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lo7/b;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-static {v10}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v1

    const-string v11, "valueOf"

    filled-new-array {v10}, [Le7/r;

    move-result-object v12

    invoke-virtual {v1, v1, v11, v12}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v1

    sget-object v11, Lo7/b;->i:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v2

    sget-object v10, Le7/r;->d:Le7/r;

    const/4 v11, 0x0

    new-array v12, v11, [Le7/r;

    const-string v13, "booleanValue"

    invoke-virtual {v2, v10, v13, v12}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v2

    sget-object v3, Le7/r;->i:Le7/r;

    const-string v10, "intValue"

    new-array v12, v11, [Le7/r;

    invoke-virtual {v2, v3, v10, v12}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v2

    sget-object v3, Le7/r;->e:Le7/r;

    const-string v4, "byteValue"

    new-array v10, v11, [Le7/r;

    invoke-virtual {v2, v3, v4, v10}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v2

    sget-object v3, Le7/r;->j:Le7/r;

    const-string v4, "longValue"

    new-array v5, v11, [Le7/r;

    invoke-virtual {v2, v3, v4, v5}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v2

    sget-object v3, Le7/r;->k:Le7/r;

    const-string v4, "shortValue"

    new-array v5, v11, [Le7/r;

    invoke-virtual {v2, v3, v4, v5}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v2

    sget-object v3, Le7/r;->h:Le7/r;

    const-string v4, "floatValue"

    new-array v5, v11, [Le7/r;

    invoke-virtual {v2, v3, v4, v5}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v2

    sget-object v3, Le7/r;->g:Le7/r;

    const-string v4, "doubleValue"

    new-array v5, v11, [Le7/r;

    invoke-virtual {v2, v3, v4, v5}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v2

    sget-object v3, Le7/r;->f:Le7/r;

    const-string v4, "charValue"

    new-array v5, v11, [Le7/r;

    invoke-virtual {v2, v3, v4, v5}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lo7/b;->j:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lo7/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lo7/b;->b:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    iput-object v1, p0, Lo7/b;->d:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lo7/b;->e:[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo7/b;->f:Ljava/util/HashSet;

    iput-object p1, p0, Lo7/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public static b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    new-instance v3, Lo7/a;

    invoke-direct {v3, v2}, Lo7/a;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "finalize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lo7/a;

    invoke-direct {v3, v2}, Lo7/a;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "$__handler"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid proxy instance"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static d(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "super$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "$"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5b

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 65

    move-object/from16 v0, p0

    iget-object v2, v0, Lo7/b;->c:Ljava/lang/reflect/InvocationHandler;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_62

    iget-object v2, v0, Lo7/b;->d:[Ljava/lang/Class;

    array-length v2, v2

    iget-object v5, v0, Lo7/b;->e:[Ljava/lang/Object;

    array-length v5, v5

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_61

    sget-object v2, Lo7/b;->g:Ljava/util/Map;

    iget-object v5, v0, Lo7/b;->a:Ljava/lang/Class;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    iget-object v7, v0, Lo7/b;->f:Ljava/util/HashSet;

    iget-object v8, v0, Lo7/b;->b:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v9

    if-ne v9, v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v10}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v1, v5

    goto/16 :goto_4d

    :cond_2
    new-instance v6, Le7/m;

    invoke-direct {v6, v3}, Le7/m;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_Proxy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "L"

    const-string v11, ";"

    invoke-static {v10, v9, v11}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Le7/r;

    :try_start_0
    const-string v12, "V"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Lm7/c;->o:Lm7/c;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_12

    goto :goto_2

    :cond_3
    invoke-static {v10}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v12

    :goto_2
    invoke-direct {v11, v10, v12}, Le7/r;-><init>(Ljava/lang/String;Lm7/c;)V

    invoke-static {v5}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v10

    const-class v12, Ljava/lang/reflect/InvocationHandler;

    invoke-static {v12}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v13

    const-class v14, [Ljava/lang/reflect/Method;

    invoke-static {v14}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v15

    new-instance v1, Le7/n;

    const-string v3, "$__handler"

    invoke-direct {v1, v11, v13, v3}, Le7/n;-><init>(Le7/r;Le7/r;Ljava/lang/String;)V

    const/4 v13, 0x2

    invoke-virtual {v6, v1, v13}, Le7/m;->b(Le7/n;I)V

    new-instance v1, Le7/n;

    const-string v13, "$__methodArray"

    invoke-direct {v1, v11, v15, v13}, Le7/n;-><init>(Le7/r;Le7/r;Ljava/lang/String;)V

    const/16 v15, 0xa

    invoke-virtual {v6, v1, v15}, Le7/m;->b(Le7/n;I)V

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v15, v1

    const/4 v4, 0x0

    :goto_3
    const-string v0, "static methods cannot access \'this\'"

    if-ge v4, v15, :cond_8

    aget-object v18, v1, v4

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    move/from16 v20, v15

    const/16 v15, 0x10

    if-ne v1, v15, :cond_4

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move-object/from16 v30, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v15, v1

    move-object/from16 v18, v2

    new-array v2, v15, [Le7/r;

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    const/4 v5, 0x0

    :goto_5
    array-length v8, v1

    if-ge v5, v8, :cond_5

    aget-object v8, v1, v5

    invoke-static {v8}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v8

    aput-object v8, v2, v5

    const/4 v8, 0x1

    add-int/2addr v5, v8

    goto :goto_5

    :cond_5
    new-instance v1, Le7/q;

    new-instance v5, Le7/s;

    invoke-direct {v5, v2}, Le7/s;-><init>([Le7/r;)V

    sget-object v8, Le7/r;->l:Le7/r;

    move-object/from16 v23, v9

    const-string v9, "<init>"

    invoke-direct {v1, v11, v8, v9, v5}, Le7/q;-><init>(Le7/r;Le7/r;Ljava/lang/String;Le7/s;)V

    invoke-virtual {v6, v1}, Le7/m;->a(Le7/q;)Le7/b;

    move-result-object v1

    iget-object v5, v1, Le7/b;->e:Le7/p;

    if-eqz v5, :cond_7

    invoke-static {v5, v11}, Le7/b;->d(Le7/p;Le7/r;)V

    new-array v0, v15, [Le7/p;

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v15, :cond_6

    move/from16 v24, v15

    aget-object v15, v2, v8

    invoke-virtual {v1, v8, v15}, Le7/b;->e(ILe7/r;)Le7/p;

    move-result-object v15

    aput-object v15, v0, v8

    const/4 v15, 0x1

    add-int/2addr v8, v15

    move/from16 v15, v24

    goto :goto_6

    :cond_6
    const/4 v15, 0x1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Le7/q;

    new-instance v15, Le7/s;

    invoke-direct {v15, v2}, Le7/s;-><init>([Le7/r;)V

    sget-object v2, Le7/r;->l:Le7/r;

    invoke-direct {v8, v10, v2, v9, v15}, Le7/q;-><init>(Le7/r;Le7/r;Ljava/lang/String;Le7/s;)V

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Le7/q;->a(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lm7/a;->d(Ljava/lang/String;)Lm7/a;

    move-result-object v2

    sget-object v9, Lk7/o;->a:Lk7/n;

    new-instance v9, Lk7/n;

    invoke-virtual {v2}, Lm7/a;->c()Lm7/b;

    move-result-object v2

    sget-object v15, Lm7/b;->j:Lm7/b;

    move-object/from16 v30, v6

    const/16 v6, 0x34

    invoke-direct {v9, v6, v2, v15}, Lk7/n;-><init>(ILm7/b;Lm7/b;)V

    const/16 v27, 0x0

    move-object/from16 v24, v1

    move-object/from16 v25, v9

    move-object/from16 v26, v8

    move-object/from16 v28, v5

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v29}, Le7/b;->g(Lk7/n;Le7/q;Le7/p;Le7/p;[Le7/p;)V

    invoke-virtual {v1}, Le7/b;->m()V

    goto/16 :goto_4

    :goto_7
    add-int/2addr v4, v0

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    move/from16 v15, v20

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v6, v30

    goto/16 :goto_3

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move-object/from16 v30, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v4, v21

    :goto_8
    if-eqz v4, :cond_9

    invoke-static {v1, v2, v4}, Lo7/b;->b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_8

    :cond_9
    move-object/from16 v4, v21

    :goto_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v6, :cond_a

    aget-object v9, v5, v8

    invoke-static {v1, v2, v9}, Lo7/b;->b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_a

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_9

    :cond_b
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-static {v1, v2, v5}, Lo7/b;->b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V

    goto :goto_b

    :cond_c
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v4, v2, [Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo7/a;

    const/4 v8, 0x1

    add-int/lit8 v9, v5, 0x1

    iget-object v6, v6, Lo7/a;->d:Ljava/lang/reflect/Method;

    aput-object v6, v4, v5

    move v5, v9

    goto :goto_c

    :cond_d
    invoke-static {v12}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v1

    invoke-static {v14}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ll7/r;

    new-instance v8, Ll7/t;

    invoke-direct {v8, v3}, Ll7/t;-><init>(Ljava/lang/String;)V

    new-instance v3, Ll7/t;

    iget-object v9, v1, Le7/r;->a:Ljava/lang/String;

    invoke-direct {v3, v9}, Ll7/t;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8, v3}, Ll7/r;-><init>(Ll7/t;Ll7/t;)V

    new-instance v3, Ll7/h;

    iget-object v8, v11, Le7/r;->c:Ll7/u;

    invoke-direct {v3, v8, v6}, Ll7/p;-><init>(Ll7/u;Ll7/r;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ll7/r;

    new-instance v9, Ll7/t;

    invoke-direct {v9, v13}, Ll7/t;-><init>(Ljava/lang/String;)V

    new-instance v12, Ll7/t;

    iget-object v14, v5, Le7/r;->a:Ljava/lang/String;

    invoke-direct {v12, v14}, Ll7/t;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9, v12}, Ll7/r;-><init>(Ll7/t;Ll7/t;)V

    new-instance v9, Ll7/h;

    invoke-direct {v9, v8, v6}, Ll7/p;-><init>(Ll7/u;Ll7/r;)V

    const-class v6, Ljava/lang/reflect/Method;

    invoke-static {v6}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v6

    const-class v8, [Ljava/lang/Object;

    invoke-static {v8}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v8

    sget-object v12, Le7/r;->m:Le7/r;

    const-string v14, "invoke"

    filled-new-array {v12, v6, v8}, [Le7/r;

    move-result-object v15

    invoke-virtual {v1, v12, v14, v15}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v12

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v2, :cond_1c

    aget-object v19, v4, v14

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    move/from16 v31, v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v32, v4

    array-length v4, v2

    move-object/from16 v33, v13

    new-array v13, v4, [Le7/r;

    move-object/from16 v34, v7

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v4, :cond_e

    aget-object v24, v2, v7

    invoke-static/range {v24 .. v24}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v24

    aput-object v24, v13, v7

    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v35, v0

    invoke-static {v7}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v0

    move-object/from16 v36, v12

    invoke-virtual {v10, v0, v15, v13}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v12

    invoke-virtual {v11, v0, v15, v13}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v15

    move-object/from16 v37, v10

    move-object/from16 v10, v30

    invoke-virtual {v10, v15}, Le7/m;->a(Le7/q;)Le7/b;

    move-result-object v15

    iget-object v10, v15, Le7/b;->e:Le7/p;

    if-eqz v10, :cond_1b

    invoke-static {v10, v11}, Le7/b;->d(Le7/p;Le7/r;)V

    move-object/from16 v38, v11

    invoke-virtual {v15, v1}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v11

    move-object/from16 v39, v12

    sget-object v12, Le7/r;->m:Le7/r;

    move-object/from16 v40, v13

    invoke-virtual {v15, v12}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v13

    move-object/from16 v41, v13

    sget-object v13, Le7/r;->i:Le7/r;

    move-object/from16 v42, v3

    invoke-virtual {v15, v13}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v3

    move-object/from16 v43, v3

    invoke-virtual {v15, v8}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v3

    move-object/from16 v44, v8

    invoke-virtual {v15, v13}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v8

    invoke-virtual {v15, v12}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v12

    move-object/from16 v45, v12

    invoke-virtual {v15, v0}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v12

    move-object/from16 v46, v12

    invoke-virtual {v15, v5}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v12

    move-object/from16 v47, v5

    invoke-virtual {v15, v6}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v5

    invoke-virtual {v15, v13}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v13

    move-object/from16 v48, v6

    sget-object v6, Lo7/b;->h:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    if-eqz v6, :cond_f

    invoke-static {v6}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v6

    invoke-virtual {v15, v6}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v6

    move-object/from16 v49, v6

    goto :goto_f

    :cond_f
    const/16 v49, 0x0

    :goto_f
    array-length v6, v2

    move-object/from16 v50, v2

    new-array v2, v6, [Le7/p;

    move-object/from16 v51, v2

    invoke-virtual {v15, v0}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v2

    move-object/from16 v52, v0

    invoke-virtual {v15, v1}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v0

    move-object/from16 v53, v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v13, v1}, Le7/b;->i(Le7/p;Ljava/lang/Integer;)V

    new-instance v1, Lk7/q;

    move/from16 v54, v14

    iget-object v14, v12, Le7/p;->b:Le7/r;

    iget-object v14, v14, Le7/r;->b:Lm7/c;

    sget-object v24, Lk7/o;->a:Lk7/n;

    invoke-virtual {v14}, Lm7/c;->c()I

    move-result v24

    packed-switch v24, :pswitch_data_0

    invoke-static {v14}, Lk7/o;->b(Lm7/d;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    sget-object v14, Lk7/o;->a2:Lk7/n;

    :goto_10
    move-object/from16 v25, v14

    goto :goto_11

    :pswitch_1
    sget-object v14, Lk7/o;->e2:Lk7/n;

    goto :goto_10

    :pswitch_2
    sget-object v14, Lk7/o;->X1:Lk7/n;

    goto :goto_10

    :pswitch_3
    sget-object v14, Lk7/o;->W1:Lk7/n;

    goto :goto_10

    :pswitch_4
    sget-object v14, Lk7/o;->Y1:Lk7/n;

    goto :goto_10

    :pswitch_5
    sget-object v14, Lk7/o;->Z1:Lk7/n;

    goto :goto_10

    :pswitch_6
    sget-object v14, Lk7/o;->d2:Lk7/n;

    goto :goto_10

    :pswitch_7
    sget-object v14, Lk7/o;->c2:Lk7/n;

    goto :goto_10

    :pswitch_8
    sget-object v14, Lk7/o;->b2:Lk7/n;

    goto :goto_10

    :goto_11
    sget-object v27, Lk7/l;->c:Lk7/l;

    iget-object v14, v15, Le7/b;->j:Lm7/b;

    move-object/from16 v55, v2

    iget-object v2, v15, Le7/b;->h:Lk7/p;

    move-object/from16 v24, v1

    move-object/from16 v26, v2

    move-object/from16 v28, v14

    move-object/from16 v29, v9

    invoke-direct/range {v24 .. v29}, Lk7/q;-><init>(Lk7/n;Lk7/p;Lk7/l;Lm7/e;Ll7/a;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Le7/b;->a(Lk7/f;Le7/o;)V

    const/4 v1, 0x1

    invoke-virtual {v15, v12, v1}, Le7/b;->j(Le7/p;Z)V

    new-instance v1, Lk7/r;

    iget-object v14, v5, Le7/p;->b:Le7/r;

    iget-object v14, v14, Le7/r;->b:Lm7/c;

    invoke-virtual {v14}, Lm7/c;->c()I

    move-result v20

    packed-switch v20, :pswitch_data_1

    invoke-static {v14}, Lk7/o;->b(Lm7/d;)V

    throw v2

    :pswitch_9
    sget-object v2, Lk7/o;->o1:Lk7/n;

    goto :goto_12

    :pswitch_a
    sget-object v2, Lk7/o;->s1:Lk7/n;

    goto :goto_12

    :pswitch_b
    sget-object v2, Lk7/o;->l1:Lk7/n;

    goto :goto_12

    :pswitch_c
    sget-object v2, Lk7/o;->k1:Lk7/n;

    goto :goto_12

    :pswitch_d
    sget-object v2, Lk7/o;->m1:Lk7/n;

    goto :goto_12

    :pswitch_e
    sget-object v2, Lk7/o;->n1:Lk7/n;

    goto :goto_12

    :pswitch_f
    sget-object v2, Lk7/o;->r1:Lk7/n;

    goto :goto_12

    :pswitch_10
    sget-object v2, Lk7/o;->q1:Lk7/n;

    goto :goto_12

    :pswitch_11
    sget-object v2, Lk7/o;->p1:Lk7/n;

    :goto_12
    invoke-virtual {v12}, Le7/p;->a()Lk7/k;

    move-result-object v12

    invoke-virtual {v13}, Le7/p;->a()Lk7/k;

    move-result-object v13

    invoke-static {v12, v13}, Lk7/l;->l(Lk7/k;Lk7/k;)Lk7/l;

    move-result-object v12

    iget-object v13, v15, Le7/b;->h:Lk7/p;

    iget-object v14, v15, Le7/b;->j:Lm7/b;

    invoke-direct {v1, v2, v13, v12, v14}, Lk7/r;-><init>(Lk7/n;Lk7/p;Lk7/l;Lm7/b;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Le7/b;->a(Lk7/f;Le7/o;)V

    const/4 v1, 0x1

    invoke-virtual {v15, v5, v1}, Le7/b;->j(Le7/p;Z)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v8, v1}, Le7/b;->i(Le7/p;Ljava/lang/Integer;)V

    new-instance v1, Lk7/q;

    iget-object v2, v3, Le7/p;->b:Le7/r;

    iget-object v12, v2, Le7/r;->b:Lm7/c;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v64, v9

    invoke-virtual {v12}, Lm7/c;->g()Lm7/c;

    move-result-object v9

    iget v9, v9, Lm7/c;->b:I

    packed-switch v9, :pswitch_data_2

    invoke-static {v12}, Lk7/o;->b(Lm7/d;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_12
    new-instance v9, Lk7/n;

    sget-object v59, Lm7/b;->d:Lm7/b;

    sget-object v60, Lk7/d;->d:Lm7/b;

    const/16 v57, 0x29

    const-string v63, "new-array-object"

    const/16 v61, 0x6

    const/16 v62, 0x0

    move-object/from16 v56, v9

    move-object/from16 v58, v12

    invoke-direct/range {v56 .. v63}, Lk7/n;-><init>(ILm7/c;Lm7/e;Lm7/b;IZLjava/lang/String;)V

    :goto_13
    move-object/from16 v25, v9

    goto :goto_14

    :pswitch_13
    sget-object v9, Lk7/o;->K1:Lk7/n;

    goto :goto_13

    :pswitch_14
    sget-object v9, Lk7/o;->E1:Lk7/n;

    goto :goto_13

    :pswitch_15
    sget-object v9, Lk7/o;->D1:Lk7/n;

    goto :goto_13

    :pswitch_16
    sget-object v9, Lk7/o;->F1:Lk7/n;

    goto :goto_13

    :pswitch_17
    sget-object v9, Lk7/o;->G1:Lk7/n;

    goto :goto_13

    :pswitch_18
    sget-object v9, Lk7/o;->J1:Lk7/n;

    goto :goto_13

    :pswitch_19
    sget-object v9, Lk7/o;->I1:Lk7/n;

    goto :goto_13

    :pswitch_1a
    sget-object v9, Lk7/o;->H1:Lk7/n;

    goto :goto_13

    :goto_14
    invoke-virtual {v8}, Le7/p;->a()Lk7/k;

    move-result-object v8

    invoke-static {v8}, Lk7/l;->k(Lk7/k;)Lk7/l;

    move-result-object v27

    iget-object v8, v15, Le7/b;->j:Lm7/b;

    iget-object v2, v2, Le7/r;->c:Ll7/u;

    iget-object v9, v15, Le7/b;->h:Lk7/p;

    move-object/from16 v24, v1

    move-object/from16 v26, v9

    move-object/from16 v28, v8

    move-object/from16 v29, v2

    invoke-direct/range {v24 .. v29}, Lk7/q;-><init>(Lk7/n;Lk7/p;Lk7/l;Lm7/e;Ll7/a;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Le7/b;->a(Lk7/f;Le7/o;)V

    const/4 v1, 0x1

    invoke-virtual {v15, v3, v1}, Le7/b;->j(Le7/p;Z)V

    new-instance v1, Lk7/q;

    iget-object v8, v11, Le7/p;->b:Le7/r;

    iget-object v9, v8, Le7/r;->b:Lm7/c;

    invoke-virtual {v9}, Lm7/c;->c()I

    move-result v12

    packed-switch v12, :pswitch_data_3

    invoke-static {v9}, Lk7/o;->b(Lm7/d;)V

    throw v2

    :pswitch_1b
    sget-object v2, Lk7/o;->R1:Lk7/n;

    :goto_15
    move-object/from16 v25, v2

    goto :goto_16

    :pswitch_1c
    sget-object v2, Lk7/o;->V1:Lk7/n;

    goto :goto_15

    :pswitch_1d
    sget-object v2, Lk7/o;->O1:Lk7/n;

    goto :goto_15

    :pswitch_1e
    sget-object v2, Lk7/o;->N1:Lk7/n;

    goto :goto_15

    :pswitch_1f
    sget-object v2, Lk7/o;->P1:Lk7/n;

    goto :goto_15

    :pswitch_20
    sget-object v2, Lk7/o;->Q1:Lk7/n;

    goto :goto_15

    :pswitch_21
    sget-object v2, Lk7/o;->U1:Lk7/n;

    goto :goto_15

    :pswitch_22
    sget-object v2, Lk7/o;->T1:Lk7/n;

    goto :goto_15

    :pswitch_23
    sget-object v2, Lk7/o;->S1:Lk7/n;

    goto :goto_15

    :goto_16
    invoke-virtual {v10}, Le7/p;->a()Lk7/k;

    move-result-object v2

    invoke-static {v2}, Lk7/l;->k(Lk7/k;)Lk7/l;

    move-result-object v27

    iget-object v2, v15, Le7/b;->j:Lm7/b;

    iget-object v9, v15, Le7/b;->h:Lk7/p;

    move-object/from16 v24, v1

    move-object/from16 v26, v9

    move-object/from16 v28, v2

    move-object/from16 v29, v42

    invoke-direct/range {v24 .. v29}, Lk7/q;-><init>(Lk7/n;Lk7/p;Lk7/l;Lm7/e;Ll7/a;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Le7/b;->a(Lk7/f;Le7/o;)V

    const/4 v1, 0x1

    invoke-virtual {v15, v11, v1}, Le7/b;->j(Le7/p;Z)V

    invoke-virtual {v15, v0, v2}, Le7/b;->i(Le7/p;Ljava/lang/Integer;)V

    new-instance v1, Le7/o;

    invoke-direct {v1}, Le7/o;-><init>()V

    sget-object v2, Le7/i;->EQ:Le7/i;

    invoke-virtual {v15, v1}, Le7/b;->b(Le7/o;)V

    iget-object v9, v0, Le7/p;->b:Le7/r;

    iget-object v9, v9, Le7/r;->b:Lm7/c;

    iget-object v8, v8, Le7/r;->b:Lm7/c;

    invoke-static {v9, v8}, Lm7/b;->k(Lm7/c;Lm7/c;)Lm7/b;

    move-result-object v8

    invoke-virtual {v2, v8}, Le7/i;->a(Lm7/b;)Lk7/n;

    move-result-object v2

    new-instance v8, Lk7/i;

    invoke-virtual {v0}, Le7/p;->a()Lk7/k;

    move-result-object v0

    invoke-virtual {v11}, Le7/p;->a()Lk7/k;

    move-result-object v9

    invoke-static {v0, v9}, Lk7/l;->l(Lk7/k;Lk7/k;)Lk7/l;

    move-result-object v0

    const/4 v9, 0x0

    invoke-direct {v8, v2, v13, v9, v0}, Lk7/i;-><init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;)V

    invoke-virtual {v15, v8, v1}, Le7/b;->a(Lk7/f;Le7/o;)V

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v4, :cond_11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v8, v43

    invoke-virtual {v15, v8, v2}, Le7/b;->i(Le7/p;Ljava/lang/Integer;)V

    aget-object v2, v40, v0

    invoke-virtual {v15, v0, v2}, Le7/b;->e(ILe7/r;)Le7/p;

    move-result-object v2

    sget-object v9, Lo7/b;->i:Ljava/util/HashMap;

    iget-object v12, v2, Le7/p;->b:Le7/r;

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le7/q;

    if-nez v9, :cond_10

    move/from16 v43, v4

    move/from16 v56, v6

    goto :goto_18

    :cond_10
    filled-new-array {v2}, [Le7/p;

    move-result-object v29

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Le7/q;->a(Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lm7/a;->d(Ljava/lang/String;)Lm7/a;

    move-result-object v2

    sget-object v12, Lk7/o;->a:Lk7/n;

    new-instance v12, Lk7/n;

    invoke-virtual {v2}, Lm7/a;->c()Lm7/b;

    move-result-object v2

    move/from16 v43, v4

    sget-object v4, Lm7/b;->j:Lm7/b;

    move/from16 v56, v6

    const/16 v6, 0x31

    invoke-direct {v12, v6, v2, v4}, Lk7/n;-><init>(ILm7/b;Lm7/b;)V

    const/16 v28, 0x0

    move-object/from16 v24, v15

    move-object/from16 v25, v12

    move-object/from16 v26, v9

    move-object/from16 v27, v45

    invoke-virtual/range {v24 .. v29}, Le7/b;->g(Lk7/n;Le7/q;Le7/p;Le7/p;[Le7/p;)V

    move-object/from16 v2, v45

    :goto_18
    new-instance v4, Lk7/r;

    iget-object v6, v2, Le7/p;->b:Le7/r;

    iget-object v6, v6, Le7/r;->b:Lm7/c;

    sget-object v9, Lk7/o;->a:Lk7/n;

    invoke-virtual {v6}, Lm7/c;->c()I

    move-result v9

    packed-switch v9, :pswitch_data_4

    invoke-static {v6}, Lk7/o;->b(Lm7/d;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_24
    sget-object v6, Lk7/o;->x1:Lk7/n;

    goto :goto_19

    :pswitch_25
    sget-object v6, Lk7/o;->B1:Lk7/n;

    goto :goto_19

    :pswitch_26
    sget-object v6, Lk7/o;->u1:Lk7/n;

    goto :goto_19

    :pswitch_27
    sget-object v6, Lk7/o;->t1:Lk7/n;

    goto :goto_19

    :pswitch_28
    sget-object v6, Lk7/o;->v1:Lk7/n;

    goto :goto_19

    :pswitch_29
    sget-object v6, Lk7/o;->w1:Lk7/n;

    goto :goto_19

    :pswitch_2a
    sget-object v6, Lk7/o;->A1:Lk7/n;

    goto :goto_19

    :pswitch_2b
    sget-object v6, Lk7/o;->z1:Lk7/n;

    goto :goto_19

    :pswitch_2c
    sget-object v6, Lk7/o;->y1:Lk7/n;

    :goto_19
    invoke-virtual {v2}, Le7/p;->a()Lk7/k;

    move-result-object v2

    invoke-virtual {v3}, Le7/p;->a()Lk7/k;

    move-result-object v9

    invoke-virtual {v8}, Le7/p;->a()Lk7/k;

    move-result-object v12

    move-object/from16 v24, v8

    new-instance v8, Lk7/l;

    move-object/from16 v57, v1

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Ln7/e;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v2}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1, v9}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v2, 0x2

    invoke-virtual {v8, v2, v12}, Ln7/e;->f(ILjava/lang/Object;)V

    invoke-direct {v4, v6, v13, v8, v14}, Lk7/r;-><init>(Lk7/n;Lk7/p;Lk7/l;Lm7/b;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v4, v2}, Le7/b;->a(Lk7/f;Le7/o;)V

    add-int/2addr v0, v1

    move/from16 v4, v43

    move/from16 v6, v56

    move-object/from16 v1, v57

    move-object/from16 v43, v24

    goto/16 :goto_17

    :cond_11
    move-object/from16 v57, v1

    move/from16 v56, v6

    const/4 v1, 0x1

    filled-new-array {v10, v5, v3}, [Le7/p;

    move-result-object v29

    move-object/from16 v0, v36

    invoke-virtual {v0, v1}, Le7/q;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lm7/a;->d(Ljava/lang/String;)Lm7/a;

    move-result-object v1

    sget-object v2, Lk7/o;->a:Lk7/n;

    new-instance v2, Lk7/n;

    invoke-virtual {v1}, Lm7/a;->c()Lm7/b;

    move-result-object v1

    sget-object v3, Lm7/b;->j:Lm7/b;

    const/16 v4, 0x35

    invoke-direct {v2, v4, v1, v3}, Lk7/n;-><init>(ILm7/b;Lm7/b;)V

    move-object/from16 v24, v15

    move-object/from16 v25, v2

    move-object/from16 v26, v0

    move-object/from16 v27, v41

    move-object/from16 v28, v11

    invoke-virtual/range {v24 .. v29}, Le7/b;->g(Lk7/n;Le7/q;Le7/p;Le7/p;[Le7/p;)V

    sget-object v1, Lo7/b;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v2, v41

    move-object/from16 v6, v49

    invoke-virtual {v15, v6, v2}, Le7/b;->c(Le7/p;Le7/p;)V

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/q;

    const/4 v2, 0x0

    new-array v4, v2, [Le7/p;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Le7/q;->a(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lm7/a;->d(Ljava/lang/String;)Lm7/a;

    move-result-object v2

    new-instance v5, Lk7/n;

    invoke-virtual {v2}, Lm7/a;->c()Lm7/b;

    move-result-object v2

    const/16 v8, 0x32

    invoke-direct {v5, v8, v2, v3}, Lk7/n;-><init>(ILm7/b;Lm7/b;)V

    move-object/from16 v24, v15

    move-object/from16 v25, v5

    move-object/from16 v26, v1

    move-object/from16 v27, v46

    move-object/from16 v28, v6

    move-object/from16 v29, v4

    invoke-virtual/range {v24 .. v29}, Le7/b;->g(Lk7/n;Le7/q;Le7/p;Le7/p;[Le7/p;)V

    move-object/from16 v1, v46

    invoke-virtual {v15, v1}, Le7/b;->l(Le7/p;)V

    :goto_1a
    move-object/from16 v1, v57

    goto :goto_1b

    :cond_12
    move-object/from16 v2, v41

    move-object/from16 v1, v46

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v15}, Le7/b;->m()V

    goto :goto_1a

    :cond_13
    invoke-virtual {v15, v1, v2}, Le7/b;->c(Le7/p;Le7/p;)V

    invoke-virtual {v15, v1}, Le7/b;->l(Le7/p;)V

    goto :goto_1a

    :goto_1b
    invoke-virtual {v15, v1}, Le7/b;->b(Le7/o;)V

    iget-boolean v2, v1, Le7/o;->c:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    iput-boolean v2, v1, Le7/o;->c:Z

    iget-object v2, v15, Le7/b;->c:Le7/o;

    if-eqz v2, :cond_14

    invoke-virtual {v15, v1}, Le7/b;->b(Le7/o;)V

    new-instance v2, Lk7/i;

    sget-object v3, Lk7/o;->r:Lk7/n;

    sget-object v4, Lk7/l;->c:Lk7/l;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v13, v5, v4}, Lk7/i;-><init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;)V

    invoke-virtual {v15, v2, v1}, Le7/b;->a(Lk7/f;Le7/o;)V

    :cond_14
    iput-object v1, v15, Le7/b;->c:Le7/o;

    move/from16 v2, v56

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v2, :cond_15

    aget-object v3, v40, v1

    invoke-virtual {v15, v1, v3}, Le7/b;->e(ILe7/r;)Le7/p;

    move-result-object v3

    aput-object v3, v51, v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    goto :goto_1c

    :cond_15
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v2, v39

    move-object/from16 v3, v51

    const/4 v1, 0x0

    invoke-virtual {v15, v2, v1, v10, v3}, Le7/b;->h(Le7/q;Le7/p;Le7/p;[Le7/p;)V

    invoke-virtual {v15}, Le7/b;->m()V

    goto :goto_1d

    :cond_16
    move-object/from16 v2, v39

    move-object/from16 v3, v51

    move-object/from16 v1, v55

    invoke-virtual {v15, v2, v1, v10, v3}, Le7/b;->h(Le7/q;Le7/p;Le7/p;[Le7/p;)V

    invoke-virtual {v15, v1}, Le7/b;->l(Le7/p;)V

    :goto_1d
    invoke-static/range {v19 .. v19}, Lo7/b;->d(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v38

    move-object/from16 v4, v40

    move-object/from16 v5, v52

    invoke-virtual {v3, v5, v1, v4}, Le7/r;->b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;

    move-result-object v1

    move-object/from16 v6, v30

    invoke-virtual {v6, v1}, Le7/m;->a(Le7/q;)Le7/b;

    move-result-object v1

    iget-object v8, v1, Le7/b;->e:Le7/p;

    if-eqz v8, :cond_19

    invoke-static {v8, v3}, Le7/b;->d(Le7/p;Le7/r;)V

    move-object/from16 v9, v50

    array-length v9, v9

    new-array v10, v9, [Le7/p;

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v9, :cond_17

    aget-object v12, v4, v11

    invoke-virtual {v1, v11, v12}, Le7/b;->e(ILe7/r;)Le7/p;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    goto :goto_1e

    :cond_17
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v8, v10}, Le7/b;->h(Le7/q;Le7/p;Le7/p;[Le7/p;)V

    invoke-virtual {v1}, Le7/b;->m()V

    :goto_1f
    const/4 v1, 0x1

    goto :goto_20

    :cond_18
    invoke-virtual {v1, v5}, Le7/b;->k(Le7/r;)Le7/p;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v8, v10}, Le7/b;->h(Le7/q;Le7/p;Le7/p;[Le7/p;)V

    invoke-virtual {v1, v4}, Le7/b;->l(Le7/p;)V

    goto :goto_1f

    :goto_20
    add-int/lit8 v14, v54, 0x1

    move-object v12, v0

    move-object v11, v3

    move-object/from16 v30, v6

    move/from16 v2, v31

    move-object/from16 v4, v32

    move-object/from16 v13, v33

    move-object/from16 v7, v34

    move-object/from16 v0, v35

    move-object/from16 v10, v37

    move-object/from16 v3, v42

    move-object/from16 v8, v44

    move-object/from16 v5, v47

    move-object/from16 v6, v48

    move-object/from16 v1, v53

    move-object/from16 v9, v64

    goto/16 :goto_d

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already marked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-object/from16 v1, v35

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move-object/from16 v32, v4

    move-object/from16 v34, v7

    move-object/from16 v37, v10

    move-object v3, v11

    move-object/from16 v33, v13

    move-object/from16 v6, v30

    const-string v0, ".generated"

    move-object/from16 v1, v23

    invoke-static {v1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Le7/r;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    const/4 v8, 0x1

    add-int/lit8 v9, v5, 0x1

    invoke-static {v7}, Le7/r;->a(Ljava/lang/Class;)Le7/r;

    move-result-object v7

    aput-object v7, v2, v5

    move v5, v9

    goto :goto_21

    :cond_1d
    const/4 v8, 0x1

    invoke-virtual {v6, v3}, Le7/m;->c(Le7/r;)Le7/l;

    move-result-object v4

    iget-boolean v5, v4, Le7/l;->b:Z

    if-nez v5, :cond_60

    iput-boolean v8, v4, Le7/l;->b:Z

    iput v8, v4, Le7/l;->c:I

    move-object/from16 v3, v37

    iput-object v3, v4, Le7/l;->d:Le7/r;

    iput-object v0, v4, Le7/l;->e:Ljava/lang/String;

    new-instance v0, Le7/s;

    invoke-direct {v0, v2}, Le7/s;-><init>([Le7/r;)V

    iput-object v0, v4, Le7/l;->f:Le7/s;

    const-class v0, Ljava/lang/String;

    const-string v2, "dexmaker.dexcache"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_23

    :cond_1e
    :try_start_1
    const-class v2, Le7/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "dalvik.system.PathClassLoader"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Le7/a;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le7/a;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_1f

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_22

    :catch_0
    :cond_1f
    const/4 v2, 0x0

    :goto_22
    if-eqz v2, :cond_5f

    move-object v3, v2

    :goto_23
    new-instance v2, Lz7/d;

    const/16 v4, 0x12

    invoke-direct {v2, v4}, Lz7/d;-><init>(I)V

    new-instance v4, Li7/f;

    invoke-direct {v4, v2}, Li7/f;-><init>(Lz7/d;)V

    iget-object v2, v6, Le7/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le7/l;

    iget-boolean v6, v5, Le7/l;->b:Z

    iget-object v7, v5, Le7/l;->h:Ljava/util/LinkedHashMap;

    iget-object v8, v5, Le7/l;->g:Ljava/util/LinkedHashMap;

    iget-object v9, v5, Le7/l;->a:Le7/r;

    if-eqz v6, :cond_5b

    new-instance v6, Lz7/d;

    const/16 v10, 0x12

    invoke-direct {v6, v10}, Lz7/d;-><init>(I)V

    iget-object v12, v9, Le7/r;->c:Ll7/u;

    new-instance v9, Li7/c;

    iget v13, v5, Le7/l;->c:I

    iget-object v11, v5, Le7/l;->d:Le7/r;

    iget-object v14, v11, Le7/r;->c:Ll7/u;

    iget-object v11, v5, Le7/l;->f:Le7/s;

    iget-object v15, v11, Le7/s;->b:Lm7/b;

    new-instance v11, Ll7/t;

    iget-object v5, v5, Le7/l;->e:Ljava/lang/String;

    invoke-direct {v11, v5}, Ll7/t;-><init>(Ljava/lang/String;)V

    move-object v5, v11

    move-object v11, v9

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Li7/c;-><init>(Ll7/u;ILl7/u;Lm7/e;Ll7/t;)V

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v11, v9, Li7/c;->g:Li7/b;

    if-eqz v7, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le7/k;

    new-instance v12, LZ3/x;

    iget-object v13, v7, Le7/k;->c:Le7/b;

    iget-boolean v14, v13, Le7/b;->d:Z

    if-nez v14, :cond_20

    invoke-virtual {v13}, Le7/b;->f()V

    :cond_20
    iget-object v14, v13, Le7/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v10, 0x0

    :goto_26
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_26

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v23, v2

    move-object/from16 v2, v19

    check-cast v2, Le7/o;

    move-object/from16 v19, v5

    iget-object v5, v2, Le7/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    move-object/from16 v26, v1

    move-object/from16 v24, v15

    goto :goto_2b

    :cond_21
    move-object/from16 v24, v15

    const/4 v5, 0x0

    :goto_27
    iget-object v15, v2, Le7/o;->d:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_23

    :goto_28
    iget-object v15, v2, Le7/o;->d:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le7/o;

    iget-object v15, v15, Le7/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_22

    iget-object v15, v2, Le7/o;->d:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v1

    move-object/from16 v1, v25

    check-cast v1, Le7/o;

    iget-object v1, v1, Le7/o;->e:Le7/o;

    invoke-interface {v15, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v26

    goto :goto_28

    :cond_22
    move-object/from16 v26, v1

    const/4 v1, 0x1

    add-int/2addr v5, v1

    move-object/from16 v1, v26

    goto :goto_27

    :cond_23
    move-object/from16 v26, v1

    :goto_29
    iget-object v1, v2, Le7/o;->e:Le7/o;

    if-eqz v1, :cond_24

    iget-object v1, v1, Le7/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v2, Le7/o;->e:Le7/o;

    iget-object v1, v1, Le7/o;->e:Le7/o;

    iput-object v1, v2, Le7/o;->e:Le7/o;

    goto :goto_29

    :cond_24
    :goto_2a
    iget-object v1, v2, Le7/o;->f:Le7/o;

    if-eqz v1, :cond_25

    iget-object v1, v1, Le7/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v2, Le7/o;->f:Le7/o;

    iget-object v1, v1, Le7/o;->e:Le7/o;

    iput-object v1, v2, Le7/o;->f:Le7/o;

    goto :goto_2a

    :cond_25
    const/4 v1, 0x1

    add-int/lit8 v5, v10, 0x1

    iput v10, v2, Le7/o;->g:I

    move v10, v5

    :goto_2b
    move-object/from16 v5, v19

    move-object/from16 v2, v23

    move-object/from16 v15, v24

    move-object/from16 v1, v26

    goto/16 :goto_26

    :cond_26
    move-object/from16 v26, v1

    move-object/from16 v23, v2

    move-object/from16 v19, v5

    new-instance v1, Lk7/b;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lk7/b;-><init>(I)V

    const/4 v2, 0x0

    :goto_2c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2b

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le7/o;

    new-instance v10, Lk7/g;

    iget-object v15, v5, Le7/o;->a:Ljava/util/ArrayList;

    move-object/from16 v27, v14

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-direct {v10, v14}, Ln7/e;-><init>(I)V

    move-object/from16 v28, v0

    const/4 v14, 0x0

    :goto_2d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_27

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/f;

    invoke-virtual {v10, v14, v0}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v0, 0x1

    add-int/2addr v14, v0

    goto :goto_2d

    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, v10, LEc/g;->a:Z

    new-instance v0, Ln7/g;

    const/4 v14, 0x4

    invoke-direct {v0, v14}, Ln7/g;-><init>(I)V

    iget-object v14, v5, Le7/o;->d:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_28

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le7/o;

    iget v15, v15, Le7/o;->g:I

    invoke-virtual {v0, v15}, Ln7/g;->e(I)V

    goto :goto_2e

    :cond_28
    iget-object v14, v5, Le7/o;->e:Le7/o;

    if-eqz v14, :cond_29

    iget v14, v14, Le7/o;->g:I

    invoke-virtual {v0, v14}, Ln7/g;->e(I)V

    goto :goto_2f

    :cond_29
    const/4 v14, -0x1

    :goto_2f
    iget-object v15, v5, Le7/o;->f:Le7/o;

    if-eqz v15, :cond_2a

    iget v15, v15, Le7/o;->g:I

    invoke-virtual {v0, v15}, Ln7/g;->e(I)V

    :cond_2a
    const/4 v15, 0x0

    iput-boolean v15, v0, LEc/g;->a:Z

    new-instance v15, Lk7/a;

    iget v5, v5, Le7/o;->g:I

    invoke-direct {v15, v5, v10, v0, v14}, Lk7/a;-><init>(ILk7/g;Ln7/g;I)V

    invoke-virtual {v1, v2, v15}, Lk7/b;->l(ILk7/a;)V

    const/4 v0, -0x1

    iput v0, v1, Lk7/b;->d:I

    const/4 v0, 0x1

    add-int/2addr v2, v0

    move-object/from16 v14, v27

    move-object/from16 v0, v28

    goto :goto_2c

    :cond_2b
    move-object/from16 v28, v0

    invoke-direct {v12, v1}, LZ3/x;-><init>(Lk7/b;)V

    iget-object v0, v13, Le7/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le7/p;

    iget-object v2, v2, Le7/p;->b:Le7/r;

    iget-object v2, v2, Le7/r;->b:Lm7/c;

    invoke-virtual {v2}, Lm7/c;->f()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_30

    :cond_2c
    new-instance v0, Lg7/t;

    invoke-direct {v0, v12, v1, v6}, Lg7/t;-><init>(LZ3/x;ILz7/d;)V

    iget-object v1, v12, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Lk7/b;

    iget-object v2, v1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {v1}, Lk7/b;->h()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    shr-int/lit8 v5, v5, 0x5

    new-array v10, v5, [I

    new-array v13, v5, [I

    const/4 v14, 0x0

    :goto_31
    if-ge v14, v2, :cond_2d

    invoke-virtual {v1, v14}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lk7/a;

    iget v15, v15, Lk7/a;->a:I

    shr-int/lit8 v27, v15, 0x5

    and-int/lit8 v15, v15, 0x1f

    const/16 v17, 0x1

    shl-int v15, v17, v15

    aget v29, v10, v27

    or-int v15, v29, v15

    aput v15, v10, v27

    add-int/lit8 v14, v14, 0x1

    goto :goto_31

    :cond_2d
    new-array v14, v2, [I

    move-object/from16 v29, v3

    move-object/from16 v27, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_32
    if-eq v6, v3, :cond_49

    :goto_33
    iget-object v3, v12, LZ3/x;->d:Ljava/lang/Object;

    check-cast v3, Ln7/g;

    if-nez v3, :cond_37

    invoke-virtual {v1}, Lk7/b;->h()I

    move-result v3

    move-object/from16 v30, v9

    new-array v9, v3, [Ln7/g;

    move-object/from16 v31, v4

    new-instance v4, Ln7/g;

    move-object/from16 v34, v8

    const/16 v8, 0xa

    invoke-direct {v4, v8}, Ln7/g;-><init>(I)V

    iget-object v8, v1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v8, v8

    move-object/from16 v35, v11

    const/4 v11, 0x0

    :goto_34
    if-ge v11, v8, :cond_31

    invoke-virtual {v1, v11}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v36

    move/from16 v37, v8

    move-object/from16 v8, v36

    check-cast v8, Lk7/a;

    move-object/from16 v36, v7

    iget-object v7, v8, Lk7/a;->c:Ln7/g;

    move-object/from16 v38, v0

    iget v0, v7, Ln7/g;->c:I

    iget v8, v8, Lk7/a;->a:I

    if-nez v0, :cond_2f

    invoke-virtual {v4, v8}, Ln7/g;->e(I)V

    move/from16 v39, v2

    :cond_2e
    const/4 v0, 0x1

    const/16 v7, 0xa

    goto :goto_37

    :cond_2f
    move/from16 v39, v2

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v0, :cond_2e

    invoke-virtual {v7, v2}, Ln7/g;->f(I)I

    move-result v40

    aget-object v41, v9, v40

    move/from16 v42, v0

    if-nez v41, :cond_30

    new-instance v0, Ln7/g;

    move-object/from16 v43, v7

    const/16 v7, 0xa

    invoke-direct {v0, v7}, Ln7/g;-><init>(I)V

    aput-object v0, v9, v40

    goto :goto_36

    :cond_30
    move-object/from16 v43, v7

    const/16 v7, 0xa

    move-object/from16 v0, v41

    :goto_36
    invoke-virtual {v0, v8}, Ln7/g;->e(I)V

    const/4 v0, 0x1

    add-int/2addr v2, v0

    move/from16 v0, v42

    move-object/from16 v7, v43

    goto :goto_35

    :goto_37
    add-int/2addr v11, v0

    move-object/from16 v7, v36

    move/from16 v8, v37

    move-object/from16 v0, v38

    move/from16 v2, v39

    goto :goto_34

    :cond_31
    move-object/from16 v38, v0

    move/from16 v39, v2

    move-object/from16 v36, v7

    const/16 v7, 0xa

    const/4 v0, 0x0

    :goto_38
    if-ge v0, v3, :cond_34

    aget-object v2, v9, v0

    if-eqz v2, :cond_33

    invoke-virtual {v2}, LEc/g;->d()V

    iget-boolean v8, v2, Ln7/g;->d:Z

    if-nez v8, :cond_32

    iget-object v8, v2, Ln7/g;->b:[I

    iget v11, v2, Ln7/g;->c:I

    const/4 v7, 0x0

    invoke-static {v8, v7, v11}, Ljava/util/Arrays;->sort([III)V

    const/4 v8, 0x1

    iput-boolean v8, v2, Ln7/g;->d:Z

    goto :goto_39

    :cond_32
    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_39
    iput-boolean v7, v2, LEc/g;->a:Z

    goto :goto_3a

    :cond_33
    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_3a
    add-int/2addr v0, v8

    const/16 v7, 0xa

    goto :goto_38

    :cond_34
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4}, LEc/g;->d()V

    iget-boolean v0, v4, Ln7/g;->d:Z

    if-nez v0, :cond_35

    iget-object v0, v4, Ln7/g;->b:[I

    iget v2, v4, Ln7/g;->c:I

    invoke-static {v0, v7, v2}, Ljava/util/Arrays;->sort([III)V

    iput-boolean v8, v4, Ln7/g;->d:Z

    :cond_35
    iput-boolean v7, v4, LEc/g;->a:Z

    aget-object v0, v9, v7

    if-nez v0, :cond_36

    sget-object v0, Ln7/g;->e:Ln7/g;

    aput-object v0, v9, v7

    :cond_36
    iput-object v9, v12, LZ3/x;->c:Ljava/lang/Object;

    iput-object v4, v12, LZ3/x;->d:Ljava/lang/Object;

    goto :goto_3b

    :cond_37
    move-object/from16 v38, v0

    move/from16 v39, v2

    move-object/from16 v31, v4

    move-object/from16 v36, v7

    move-object/from16 v34, v8

    move-object/from16 v30, v9

    move-object/from16 v35, v11

    :goto_3b
    iget-object v0, v12, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, [Ln7/g;

    aget-object v0, v0, v6

    if-eqz v0, :cond_48

    iget v2, v0, Ln7/g;->c:I

    const/4 v3, 0x0

    :goto_3c
    if-ge v3, v2, :cond_38

    invoke-virtual {v0, v3}, Ln7/g;->f(I)I

    move-result v4

    invoke-static {v4, v13}, Lp7/b;->b(I[I)Z

    move-result v7

    if-eqz v7, :cond_39

    :cond_38
    const/4 v7, 0x1

    goto :goto_3e

    :cond_39
    invoke-static {v4, v10}, Lp7/b;->b(I[I)Z

    move-result v7

    if-nez v7, :cond_3b

    :cond_3a
    const/4 v7, 0x1

    goto :goto_3d

    :cond_3b
    invoke-virtual {v1, v4}, Lk7/b;->k(I)Lk7/a;

    move-result-object v7

    iget v7, v7, Lk7/a;->d:I

    if-ne v7, v6, :cond_3a

    shr-int/lit8 v0, v4, 0x5

    and-int/lit8 v2, v4, 0x1f

    const/4 v7, 0x1

    shl-int v2, v7, v2

    aget v3, v13, v0

    or-int/2addr v2, v3

    aput v2, v13, v0

    move v6, v4

    move-object/from16 v9, v30

    move-object/from16 v4, v31

    move-object/from16 v8, v34

    move-object/from16 v11, v35

    move-object/from16 v7, v36

    move-object/from16 v0, v38

    move/from16 v2, v39

    goto/16 :goto_33

    :goto_3d
    add-int/2addr v3, v7

    goto :goto_3c

    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    if-eq v6, v0, :cond_44

    shr-int/lit8 v0, v6, 0x5

    and-int/lit8 v2, v6, 0x1f

    shl-int v2, v7, v2

    aget v3, v10, v0

    not-int v2, v2

    and-int/2addr v3, v2

    aput v3, v10, v0

    aget v3, v13, v0

    and-int/2addr v2, v3

    aput v2, v13, v0

    aput v6, v14, v15

    add-int/2addr v15, v7

    invoke-virtual {v1, v6}, Lk7/b;->k(I)Lk7/a;

    move-result-object v0

    iget-object v2, v0, Lk7/a;->c:Ln7/g;

    iget v3, v2, Ln7/g;->c:I

    iget v0, v0, Lk7/a;->d:I

    if-eqz v3, :cond_3e

    if-eq v3, v7, :cond_3d

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3c

    invoke-virtual {v1, v0}, Lk7/b;->k(I)Lk7/a;

    move-result-object v4

    goto :goto_40

    :cond_3c
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ln7/g;->f(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lk7/b;->k(I)Lk7/a;

    move-result-object v6

    move-object v4, v6

    goto :goto_40

    :cond_3d
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ln7/g;->f(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lk7/b;->k(I)Lk7/a;

    move-result-object v4

    goto :goto_40

    :cond_3e
    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_40
    if-nez v4, :cond_3f

    goto :goto_43

    :cond_3f
    iget v4, v4, Lk7/a;->a:I

    invoke-static {v4, v10}, Lp7/b;->b(I[I)Z

    move-result v6

    if-eqz v6, :cond_40

    move v6, v4

    goto :goto_42

    :cond_40
    if-eq v0, v4, :cond_41

    if-ltz v0, :cond_41

    invoke-static {v0, v10}, Lp7/b;->b(I[I)Z

    move-result v4

    if-eqz v4, :cond_41

    move v6, v0

    goto :goto_42

    :cond_41
    iget v0, v2, Ln7/g;->c:I

    const/4 v4, 0x0

    :goto_41
    if-ge v4, v0, :cond_43

    invoke-virtual {v2, v4}, Ln7/g;->f(I)I

    move-result v6

    invoke-static {v6, v10}, Lp7/b;->b(I[I)Z

    move-result v7

    if-eqz v7, :cond_42

    goto :goto_42

    :cond_42
    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_41

    :cond_43
    move v6, v3

    :goto_42
    move v0, v3

    const/4 v7, 0x1

    goto :goto_3f

    :cond_44
    move v3, v0

    :goto_43
    const/4 v0, 0x0

    :goto_44
    if-ge v0, v5, :cond_47

    aget v2, v10, v0

    if-eqz v2, :cond_46

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_45

    move v2, v3

    :cond_45
    if-ltz v2, :cond_46

    shl-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v2

    move v6, v0

    goto :goto_45

    :cond_46
    const/4 v2, 0x1

    add-int/2addr v0, v2

    goto :goto_44

    :cond_47
    move v6, v3

    :goto_45
    move-object/from16 v9, v30

    move-object/from16 v4, v31

    move-object/from16 v8, v34

    move-object/from16 v11, v35

    move-object/from16 v7, v36

    move-object/from16 v0, v38

    move/from16 v2, v39

    goto/16 :goto_32

    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v6}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no such block: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    move-object/from16 v38, v0

    move v0, v2

    move-object/from16 v31, v4

    move-object/from16 v36, v7

    move-object/from16 v34, v8

    move-object/from16 v30, v9

    move-object/from16 v35, v11

    if-ne v15, v0, :cond_55

    move-object/from16 v2, v38

    iput-object v14, v2, Lg7/t;->h:Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_46
    iget-object v5, v2, Lg7/t;->f:Ljava/lang/Object;

    check-cast v5, LL8/a;

    iget-object v6, v2, Lg7/t;->e:Ljava/lang/Object;

    check-cast v6, LZ3/x;

    if-ge v4, v0, :cond_51

    const/4 v7, 0x1

    add-int/lit8 v8, v4, 0x1

    if-ne v8, v0, :cond_4a

    move v7, v3

    goto :goto_47

    :cond_4a
    aget v7, v14, v8

    :goto_47
    aget v4, v14, v4

    invoke-virtual {v1, v4}, Lk7/b;->k(I)Lk7/a;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v6, LZ3/x;->b:Ljava/lang/Object;

    check-cast v9, [Lg7/e;

    iget v10, v4, Lk7/a;->a:I

    aget-object v11, v9, v10

    iget-object v13, v5, LL8/a;->b:Ljava/lang/Object;

    check-cast v13, LP0/j;

    invoke-virtual {v13, v11}, LP0/j;->a(Lg7/g;)V

    iget-object v11, v6, LZ3/x;->c:Ljava/lang/Object;

    check-cast v11, [Lg7/e;

    aget-object v11, v11, v10

    iget-object v13, v2, Lg7/t;->g:Ljava/lang/Object;

    check-cast v13, Lcom/google/firebase/messaging/q;

    iput-object v4, v13, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    iput-object v11, v13, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    iget-object v11, v4, Lk7/a;->b:Lk7/g;

    iget-object v15, v11, Ln7/e;->b:[Ljava/lang/Object;

    array-length v15, v15

    const/4 v3, 0x0

    :goto_48
    if-ge v3, v15, :cond_4b

    invoke-virtual {v11, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v37

    move/from16 v39, v0

    move-object/from16 v0, v37

    check-cast v0, Lk7/f;

    invoke-virtual {v0, v13}, Lk7/f;->b(Lk7/e;)V

    const/4 v0, 0x1

    add-int/2addr v3, v0

    move/from16 v0, v39

    goto :goto_48

    :cond_4b
    move/from16 v39, v0

    iget-object v0, v6, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, [Lg7/e;

    aget-object v0, v0, v10

    iget-object v3, v5, LL8/a;->b:Ljava/lang/Object;

    check-cast v3, LP0/j;

    invoke-virtual {v3, v0}, LP0/j;->a(Lg7/g;)V

    invoke-virtual {v11}, Lk7/g;->h()Lk7/f;

    move-result-object v0

    iget v5, v4, Lk7/a;->d:I

    if-ltz v5, :cond_50

    if-eq v5, v7, :cond_50

    iget-object v6, v0, Lk7/f;->a:Lk7/n;

    iget v6, v6, Lk7/n;->e:I

    const/4 v10, 0x4

    if-ne v6, v10, :cond_4e

    iget-object v4, v4, Lk7/a;->c:Ln7/g;

    iget v6, v4, Ln7/g;->c:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_4d

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ln7/g;->f(I)I

    move-result v6

    if-ne v6, v5, :cond_4c

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ln7/g;->f(I)I

    move-result v6

    :cond_4c
    if-ne v6, v7, :cond_4f

    aget-object v0, v9, v5

    iget-object v4, v3, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v11

    :try_start_2
    iget-object v5, v3, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/v;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v3, v3, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lg7/v;->n(Lg7/e;)Lg7/v;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-reversible instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    const/4 v11, 0x2

    const/4 v13, 0x0

    :cond_4f
    new-instance v4, Lg7/v;

    sget-object v6, Lg7/j;->I:Lg7/i;

    sget-object v7, Lk7/l;->c:Lk7/l;

    aget-object v5, v9, v5

    iget-object v0, v0, Lk7/f;->b:Lk7/p;

    invoke-direct {v4, v6, v0, v7, v5}, Lg7/v;-><init>(Lg7/i;Lk7/p;Lk7/l;Lg7/e;)V

    invoke-virtual {v3, v4}, LP0/j;->a(Lg7/g;)V

    goto :goto_49

    :cond_50
    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v13, 0x0

    :goto_49
    move v4, v8

    move/from16 v0, v39

    const/4 v3, -0x1

    goto/16 :goto_46

    :cond_51
    const/4 v11, 0x2

    const/4 v13, 0x0

    new-instance v0, LZ3/x;

    iget-object v1, v2, Lg7/t;->h:Ljava/lang/Object;

    check-cast v1, [I

    invoke-direct {v0, v12, v1, v6}, LZ3/x;-><init>(LZ3/x;[ILZ3/x;)V

    new-instance v1, Lo3/n;

    iget-object v2, v5, LL8/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v13

    :goto_4a
    iget-object v4, v5, LL8/a;->b:Ljava/lang/Object;

    check-cast v4, LP0/j;

    if-ge v3, v2, :cond_52

    iget-object v6, v5, LL8/a;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg7/g;

    invoke-virtual {v4, v6}, LP0/j;->a(Lg7/g;)V

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_4a

    :cond_52
    const/4 v3, 0x0

    iput-object v3, v5, LL8/a;->c:Ljava/lang/Object;

    invoke-direct {v1, v4, v0}, Lo3/n;-><init>(LP0/j;LZ3/x;)V

    new-instance v0, Li7/j;

    move-object/from16 v7, v36

    iget-object v2, v7, Le7/k;->a:Le7/q;

    sget-object v3, Lm7/b;->c:Lm7/b;

    iget-object v2, v2, Le7/q;->e:Ll7/q;

    iget v4, v7, Le7/k;->b:I

    invoke-direct {v0, v2, v4, v1, v3}, Li7/j;-><init>(Ll7/q;ILo3/n;Lm7/b;)V

    const v1, 0x1000a

    and-int/2addr v1, v4

    if-eqz v1, :cond_53

    move-object/from16 v1, v35

    iget-object v1, v1, Li7/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_53
    move-object/from16 v1, v35

    iget-object v1, v1, Li7/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4b
    move-object/from16 v5, v19

    move-object/from16 v2, v23

    move-object/from16 v1, v26

    move-object/from16 v6, v27

    move-object/from16 v0, v28

    move-object/from16 v3, v29

    move-object/from16 v9, v30

    move-object/from16 v4, v31

    move-object/from16 v8, v34

    const/16 v10, 0x12

    goto/16 :goto_25

    :cond_54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    move-object/from16 v28, v0

    move-object/from16 v26, v1

    move-object/from16 v23, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move-object/from16 v34, v8

    move-object/from16 v30, v9

    move-object v1, v11

    const/4 v11, 0x2

    const/4 v13, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le7/j;

    new-instance v3, Li7/h;

    iget-object v4, v2, Le7/j;->a:Le7/n;

    iget-object v4, v4, Le7/n;->c:Ll7/h;

    iget v2, v2, Le7/j;->b:I

    invoke-direct {v3, v4, v2}, Li7/h;-><init>(Ll7/h;I)V

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_58

    const/4 v2, 0x0

    invoke-static {v2}, LG5/I2;->e(Ljava/lang/Integer;)Ll7/v;

    move-result-object v4

    iget-object v2, v1, Li7/b;->k:Ll7/c;

    if-nez v2, :cond_57

    iget-object v2, v1, Li7/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Li7/b;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "static fields already sorted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    iget-object v2, v1, Li7/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_59
    move-object/from16 v2, v31

    iget-object v0, v2, Li7/f;->j:Li7/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, v30

    :try_start_3
    iget-object v3, v1, Li7/c;->b:Ll7/u;

    iget-object v3, v3, Ll7/u;->a:Lm7/c;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v0}, Li7/C;->g()V

    iget-object v0, v0, Li7/d;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5a

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    move-object/from16 v2, v23

    move-object/from16 v1, v26

    move-object/from16 v0, v28

    move-object/from16 v3, v29

    goto/16 :goto_24

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    move-object/from16 v34, v8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Undeclared type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares members: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    move-object/from16 v28, v0

    move-object/from16 v26, v1

    move-object/from16 v29, v3

    move-object v2, v4

    :try_start_4
    invoke-virtual {v2}, Li7/f;->b()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    const-string v1, "Generated"

    const-string v2, ".jar"

    move-object/from16 v3, v29

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    new-instance v2, Ljava/util/jar/JarOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/util/jar/JarEntry;

    const-string v5, "classes.dex"

    invoke-direct {v4, v5}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :try_start_5
    const-string v0, "dalvik.system.DexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/ClassLoader;

    move-object/from16 v4, v28

    filled-new-array {v4, v4, v4, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v22

    const/4 v4, 0x0

    filled-new-array {v1, v2, v4, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_e

    move-object/from16 v1, v26

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_a

    move-object/from16 v0, v33

    :try_start_7
    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v1, v32

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    :goto_4d
    :try_start_8
    iget-object v2, v0, Lo7/b;->d:[Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_7

    :try_start_9
    iget-object v2, v0, Lo7/b;->e:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_4

    iget-object v0, v0, Lo7/b;->c:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v1, v0}, Lo7/b;->c(Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V

    return-object v1

    :catch_4
    move-exception v0

    goto :goto_4e

    :catch_5
    move-exception v0

    goto :goto_4f

    :catch_6
    move-exception v0

    goto :goto_50

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_5e

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5d

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_5d
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5e
    check-cast v0, Ljava/lang/Error;

    throw v0

    :goto_4f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :goto_50
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No constructor for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " with parameter types "

    invoke-static {v1, v3, v4}, LV0/c;->t(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, v0, Lo7/b;->d:[Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_8
    move-exception v0

    goto :goto_51

    :catch_9
    move-exception v0

    goto :goto_52

    :goto_51
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :goto_52
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_a
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_b
    move-exception v0

    move-object/from16 v1, v21

    move-object v2, v0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot proxy inaccessible class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_c
    move-exception v0

    goto :goto_53

    :catch_d
    move-exception v0

    goto :goto_54

    :catch_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :goto_53
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_54
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "load() requires a Dalvik VM"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_11
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "already declared: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "constructorArgValues.length != constructorArgTypes.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method
