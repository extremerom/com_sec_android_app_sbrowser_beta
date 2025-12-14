.class public final Lod/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lwd/j;

.field public static final e:Lwd/j;

.field public static final f:Lwd/j;

.field public static final g:Lwd/j;

.field public static final h:Lwd/j;

.field public static final i:Lwd/j;


# instance fields
.field public final a:Lwd/j;

.field public final b:Lwd/j;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lwd/j;->d:Lwd/j;

    const-string v0, ":"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, Lod/d;->d:Lwd/j;

    const-string v0, ":status"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, Lod/d;->e:Lwd/j;

    const-string v0, ":method"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, Lod/d;->f:Lwd/j;

    const-string v0, ":path"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, Lod/d;->g:Lwd/j;

    const-string v0, ":scheme"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, Lod/d;->h:Lwd/j;

    const-string v0, ":authority"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, Lod/d;->i:Lwd/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lwd/j;->d:Lwd/j;

    invoke-static {p1}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object p1

    invoke-static {p2}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lod/d;-><init>(Lwd/j;Lwd/j;)V

    return-void
.end method

.method public constructor <init>(Lwd/j;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lwd/j;->d:Lwd/j;

    invoke-static {p2}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lod/d;-><init>(Lwd/j;Lwd/j;)V

    return-void
.end method

.method public constructor <init>(Lwd/j;Lwd/j;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/d;->a:Lwd/j;

    iput-object p2, p0, Lod/d;->b:Lwd/j;

    invoke-virtual {p1}, Lwd/j;->d()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lwd/j;->d()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lod/d;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lod/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lod/d;

    iget-object v1, p1, Lod/d;->a:Lwd/j;

    iget-object v3, p0, Lod/d;->a:Lwd/j;

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lod/d;->b:Lwd/j;

    iget-object p1, p1, Lod/d;->b:Lwd/j;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lod/d;->a:Lwd/j;

    invoke-virtual {v0}, Lwd/j;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lod/d;->b:Lwd/j;

    invoke-virtual {p0}, Lwd/j;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lod/d;->a:Lwd/j;

    invoke-virtual {v1}, Lwd/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lod/d;->b:Lwd/j;

    invoke-virtual {p0}, Lwd/j;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
