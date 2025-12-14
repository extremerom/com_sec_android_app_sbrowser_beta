.class public final LVa/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/List;

.field public static final c:LVa/l;

.field public static final d:LVa/l;

.field public static final e:LVa/l;

.field public static final f:LVa/l;

.field public static final g:LVa/l;

.field public static final h:LVa/l;

.field public static final i:LVa/l;

.field public static final j:LVa/l;


# instance fields
.field public final a:LVa/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, LVa/k;->values()[LVa/k;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, LVa/k;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, LVa/l;

    invoke-direct {v6, v4}, LVa/l;-><init>(LVa/k;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LVa/l;

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Code value duplication between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, LVa/l;->a:LVa/k;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LVa/l;->b:Ljava/util/List;

    sget-object v0, LVa/k;->OK:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    move-result-object v0

    sput-object v0, LVa/l;->c:LVa/l;

    sget-object v0, LVa/k;->CANCELLED:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    sget-object v0, LVa/k;->UNKNOWN:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    move-result-object v0

    sput-object v0, LVa/l;->d:LVa/l;

    sget-object v0, LVa/k;->INVALID_ARGUMENT:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    move-result-object v0

    sput-object v0, LVa/l;->e:LVa/l;

    sget-object v0, LVa/k;->DEADLINE_EXCEEDED:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    sget-object v0, LVa/k;->NOT_FOUND:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    move-result-object v0

    sput-object v0, LVa/l;->f:LVa/l;

    sget-object v0, LVa/k;->ALREADY_EXISTS:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    sget-object v0, LVa/k;->PERMISSION_DENIED:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    move-result-object v0

    sput-object v0, LVa/l;->g:LVa/l;

    sget-object v0, LVa/k;->UNAUTHENTICATED:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    move-result-object v0

    sput-object v0, LVa/l;->h:LVa/l;

    sget-object v0, LVa/k;->RESOURCE_EXHAUSTED:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    sget-object v0, LVa/k;->FAILED_PRECONDITION:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    move-result-object v0

    sput-object v0, LVa/l;->i:LVa/l;

    sget-object v0, LVa/k;->ABORTED:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    sget-object v0, LVa/k;->OUT_OF_RANGE:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    sget-object v0, LVa/k;->UNIMPLEMENTED:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    sget-object v0, LVa/k;->INTERNAL:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    sget-object v0, LVa/k;->UNAVAILABLE:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    move-result-object v0

    sput-object v0, LVa/l;->j:LVa/l;

    sget-object v0, LVa/k;->DATA_LOSS:LVa/k;

    invoke-virtual {v0}, LVa/k;->a()LVa/l;

    return-void
.end method

.method public constructor <init>(LVa/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVa/l;->a:LVa/k;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LVa/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LVa/l;

    iget-object p1, p1, LVa/l;->a:LVa/k;

    iget-object p0, p0, LVa/l;->a:LVa/k;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, LVa/l;->a:LVa/k;

    const/4 v0, 0x0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status{canonicalCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LVa/l;->a:LVa/k;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", description=null}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
