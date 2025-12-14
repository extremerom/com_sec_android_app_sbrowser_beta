.class public final Lv2/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lv2/O;


# instance fields
.field public final a:LEc/g;

.field public final b:LEc/g;

.field public final c:LEc/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/O;

    sget-object v1, Lv2/M;->c:Lv2/M;

    invoke-direct {v0, v1, v1, v1}, Lv2/O;-><init>(LEc/g;LEc/g;LEc/g;)V

    sput-object v0, Lv2/O;->d:Lv2/O;

    return-void
.end method

.method public constructor <init>(LEc/g;LEc/g;LEc/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/O;->a:LEc/g;

    iput-object p2, p0, Lv2/O;->b:LEc/g;

    iput-object p3, p0, Lv2/O;->c:LEc/g;

    instance-of p0, p1, Lv2/K;

    if-nez p0, :cond_0

    instance-of p0, p3, Lv2/K;

    if-nez p0, :cond_0

    instance-of p0, p2, Lv2/K;

    :cond_0
    instance-of p0, p1, Lv2/M;

    if-eqz p0, :cond_1

    instance-of p0, p3, Lv2/M;

    if-eqz p0, :cond_1

    instance-of p0, p2, Lv2/M;

    :cond_1
    return-void
.end method

.method public static a(Lv2/O;Lv2/M;Lv2/M;Lv2/M;I)Lv2/O;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lv2/O;->a:LEc/g;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lv2/O;->b:LEc/g;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lv2/O;->c:LEc/g;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "refresh"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "prepend"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "append"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lv2/O;

    invoke-direct {p0, p1, p2, p3}, Lv2/O;-><init>(LEc/g;LEc/g;LEc/g;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv2/O;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv2/O;

    iget-object v1, p1, Lv2/O;->a:LEc/g;

    iget-object v3, p0, Lv2/O;->a:LEc/g;

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lv2/O;->b:LEc/g;

    iget-object v3, p1, Lv2/O;->b:LEc/g;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lv2/O;->c:LEc/g;

    iget-object p1, p1, Lv2/O;->c:LEc/g;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lv2/O;->a:LEc/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lv2/O;->b:LEc/g;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lv2/O;->c:LEc/g;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoadStates(refresh="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lv2/O;->a:LEc/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prepend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv2/O;->b:LEc/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv2/O;->c:LEc/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
