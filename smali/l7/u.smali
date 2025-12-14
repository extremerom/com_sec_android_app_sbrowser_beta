.class public final Ll7/u;
.super Ll7/v;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/HashMap;

.field public static final d:Ll7/u;


# instance fields
.field public final a:Lm7/c;

.field public b:Ll7/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ll7/u;->c:Ljava/util/HashMap;

    sget-object v0, Lm7/c;->s:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    move-result-object v0

    sput-object v0, Ll7/u;->d:Ll7/u;

    sget-object v0, Lm7/c;->v:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->w:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->x:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->y:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->z:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->B:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->A:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->C:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->D:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->E:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->F:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->G:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->H:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->I:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->X:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->J:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    sget-object v0, Lm7/c;->Z:Lm7/c;

    invoke-static {v0}, Ll7/u;->g(Lm7/c;)Ll7/u;

    return-void
.end method

.method public constructor <init>(Lm7/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    sget-object v0, Lm7/c;->p:Lm7/c;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Ll7/u;->a:Lm7/c;

    const/4 p1, 0x0

    iput-object p1, p0, Ll7/u;->b:Ll7/t;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "KNOWN_NULL is not representable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lm7/c;)Ll7/u;
    .locals 2

    sget-object v0, Ll7/u;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll7/u;

    if-nez v1, :cond_0

    new-instance v1, Ll7/u;

    invoke-direct {v1, p0}, Ll7/u;-><init>(Lm7/c;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll7/u;->a:Lm7/c;

    invoke-virtual {p0}, Lm7/c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ll7/a;)I
    .locals 0

    iget-object p0, p0, Ll7/u;->a:Lm7/c;

    iget-object p0, p0, Lm7/c;->a:Ljava/lang/String;

    check-cast p1, Ll7/u;

    iget-object p1, p1, Ll7/u;->a:Lm7/c;

    iget-object p1, p1, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ll7/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ll7/u;

    iget-object p1, p1, Ll7/u;->a:Lm7/c;

    iget-object p0, p0, Ll7/u;->a:Lm7/c;

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "type"

    return-object p0
.end method

.method public final getType()Lm7/c;
    .locals 0

    sget-object p0, Lm7/c;->r:Lm7/c;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ll7/u;->a:Lm7/c;

    iget-object p0, p0, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ll7/u;->a:Lm7/c;

    invoke-virtual {p0}, Lm7/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
