.class public final Ll7/o;
.super Ll7/m;
.source "SourceFile"


# static fields
.field public static final b:Ll7/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll7/o;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ll7/m;-><init>(J)V

    sput-object v0, Ll7/o;->b:Ll7/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ll7/m;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "long"

    return-object p0
.end method

.method public final getType()Lm7/c;
    .locals 0

    sget-object p0, Lm7/c;->m:Lm7/c;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "long{0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ll7/m;->a:J

    invoke-static {v1, v2}, Lqd/d;->g(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
