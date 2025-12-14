.class public final Lv2/M;
.super LEc/g;
.source "SourceFile"


# static fields
.field public static final b:Lv2/M;

.field public static final c:Lv2/M;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/M;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LEc/g;-><init>(Z)V

    sput-object v0, Lv2/M;->b:Lv2/M;

    new-instance v0, Lv2/M;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LEc/g;-><init>(Z)V

    sput-object v0, Lv2/M;->c:Lv2/M;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lv2/M;

    if-eqz v0, :cond_0

    check-cast p1, Lv2/M;

    iget-boolean p1, p1, LEc/g;->a:Z

    iget-boolean p0, p0, LEc/g;->a:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, LEc/g;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotLoading(endOfPaginationReached="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, LEc/g;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
