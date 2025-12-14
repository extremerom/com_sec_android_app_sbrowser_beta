.class public final Le7/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Le7/r;

.field public static final e:Le7/r;

.field public static final f:Le7/r;

.field public static final g:Le7/r;

.field public static final h:Le7/r;

.field public static final i:Le7/r;

.field public static final j:Le7/r;

.field public static final k:Le7/r;

.field public static final l:Le7/r;

.field public static final m:Le7/r;

.field public static final n:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lm7/c;

.field public final c:Ll7/u;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Le7/r;

    sget-object v1, Lm7/c;->g:Lm7/c;

    invoke-direct {v0, v1}, Le7/r;-><init>(Lm7/c;)V

    sput-object v0, Le7/r;->d:Le7/r;

    new-instance v1, Le7/r;

    sget-object v2, Lm7/c;->h:Lm7/c;

    invoke-direct {v1, v2}, Le7/r;-><init>(Lm7/c;)V

    sput-object v1, Le7/r;->e:Le7/r;

    new-instance v2, Le7/r;

    sget-object v3, Lm7/c;->i:Lm7/c;

    invoke-direct {v2, v3}, Le7/r;-><init>(Lm7/c;)V

    sput-object v2, Le7/r;->f:Le7/r;

    new-instance v3, Le7/r;

    sget-object v4, Lm7/c;->j:Lm7/c;

    invoke-direct {v3, v4}, Le7/r;-><init>(Lm7/c;)V

    sput-object v3, Le7/r;->g:Le7/r;

    new-instance v4, Le7/r;

    sget-object v5, Lm7/c;->k:Lm7/c;

    invoke-direct {v4, v5}, Le7/r;-><init>(Lm7/c;)V

    sput-object v4, Le7/r;->h:Le7/r;

    new-instance v5, Le7/r;

    sget-object v6, Lm7/c;->l:Lm7/c;

    invoke-direct {v5, v6}, Le7/r;-><init>(Lm7/c;)V

    sput-object v5, Le7/r;->i:Le7/r;

    new-instance v6, Le7/r;

    sget-object v7, Lm7/c;->m:Lm7/c;

    invoke-direct {v6, v7}, Le7/r;-><init>(Lm7/c;)V

    sput-object v6, Le7/r;->j:Le7/r;

    new-instance v7, Le7/r;

    sget-object v8, Lm7/c;->n:Lm7/c;

    invoke-direct {v7, v8}, Le7/r;-><init>(Lm7/c;)V

    sput-object v7, Le7/r;->k:Le7/r;

    new-instance v8, Le7/r;

    sget-object v9, Lm7/c;->o:Lm7/c;

    invoke-direct {v8, v9}, Le7/r;-><init>(Lm7/c;)V

    sput-object v8, Le7/r;->l:Le7/r;

    new-instance v9, Le7/r;

    sget-object v10, Lm7/c;->s:Lm7/c;

    invoke-direct {v9, v10}, Le7/r;-><init>(Lm7/c;)V

    sput-object v9, Le7/r;->m:Le7/r;

    new-instance v9, Le7/r;

    sget-object v10, Lm7/c;->t:Lm7/c;

    invoke-direct {v9, v10}, Le7/r;-><init>(Lm7/c;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Le7/r;->n:Ljava/util/HashMap;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lm7/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Le7/r;->a:Ljava/lang/String;

    iput-object p2, p0, Le7/r;->b:Lm7/c;

    invoke-static {p2}, Ll7/u;->g(Lm7/c;)Ll7/u;

    move-result-object p1

    iput-object p1, p0, Le7/r;->c:Ll7/u;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lm7/c;)V
    .locals 1

    iget-object v0, p1, Lm7/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Le7/r;-><init>(Ljava/lang/String;Lm7/c;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Le7/r;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le7/r;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le7/r;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "L"

    const/16 v1, 0x3b

    invoke-static {v1, p0, v0}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance p0, Le7/r;

    :try_start_0
    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lm7/c;->o:Lm7/c;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v0, v1}, Le7/r;-><init>(Ljava/lang/String;Lm7/c;)V

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final varargs b(Le7/r;Ljava/lang/String;[Le7/r;)Le7/q;
    .locals 2

    new-instance v0, Le7/q;

    new-instance v1, Le7/s;

    invoke-direct {v1, p3}, Le7/s;-><init>([Le7/r;)V

    invoke-direct {v0, p0, p1, p2, v1}, Le7/q;-><init>(Le7/r;Le7/r;Ljava/lang/String;Le7/s;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Le7/r;

    if-eqz v0, :cond_0

    check-cast p1, Le7/r;

    iget-object p1, p1, Le7/r;->a:Ljava/lang/String;

    iget-object p0, p0, Le7/r;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    iget-object p0, p0, Le7/r;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le7/r;->a:Ljava/lang/String;

    return-object p0
.end method
